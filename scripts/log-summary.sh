#!/usr/bin/env bash
# Teaching reference generated with AI assistance; not a claim of learner completion.
set -euo pipefail
if (( $# != 1 )); then
  printf 'Usage: %s LOG_FILE\n' "$0" >&2
  exit 2
fi
if [[ ! -f "$1" || ! -r "$1" ]]; then
  printf 'Error: input must be a readable regular file.\n' >&2
  exit 2
fi
# Synthetic format: YYYY-MM-DDTHH:MM:SSZ LEVEL message
# Validate all records before producing output; do not modify the source file.
LC_ALL=C awk '
  NF == 0 { next }
  $1 !~ /^[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]T[0-9][0-9]:[0-9][0-9]:[0-9][0-9]Z$/ ||
  $2 !~ /^(INFO|WARN|ERROR)$/ || NF < 3 { invalid = 1; next }
  { count[$2]++; total++ }
  END {
    if (invalid) {
      print "Error: malformed synthetic log record." > "/dev/stderr"
      exit 3
    }
    printf "TOTAL %d\nINFO %d\nWARN %d\nERROR %d\n", total, count["INFO"], count["WARN"], count["ERROR"]
  }
' < "$1"
