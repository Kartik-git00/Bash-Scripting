# Synthetic log summary — reference exercise

AI-assisted teaching reference for Day 3 (2026-11-12). Not proof of learner completion.

## Format and use

One record per line: UTC timestamp shape YYYY-MM-DDTHH:MM:SSZ, then INFO/WARN/ERROR, then a nonempty message. Whitespace separates fields. Blank lines are ignored. Input is read only.

Run from the root:

```bash
bash -n scripts/log-summary.sh
bash scripts/log-summary.sh examples/sample.log
```

Expected teaching output:

```text
TOTAL 4
INFO 2
WARN 1
ERROR 1
```

Success exits 0. Wrong argument count, missing/unreadable/nonregular input exits 2. Malformed record exits 3 and produces no normal summary.

## Checks performed by Codex

Git Bash on Windows: syntax, four-record sample, unchanged input SHA-256, path containing spaces, empty file, blank lines, malformed timestamp/level/missing message, missing input, directory input, no arguments and extra arguments passed.
These are reference-code checks, not THM/HTB completion. No Linux VM run is claimed.

## Learner tasks

Write a first version independently; predict the sample result; run each edge case; record actual outputs and exit statuses in templates/project-evidence.md. Explain quoted arguments, standard error, exit status, awk counters and why a log message is not an attack finding.
Improve one limitation and document how you tested it before opening a PR.

## Limitations

Timestamp shape is checked, not calendar validity. This is not an auth.log/syslog/journald parser. It does not correlate events, detect attacks, handle compressed rotation, or impose a file-size/runtime limit. Use small synthetic fixtures. A record containing ERROR is not proof of compromise.
