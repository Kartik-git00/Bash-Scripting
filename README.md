# Bash-Scripting

Original Bash practice, small utilities and reproducible evidence for an offensive-security foundation.

## 🧭 Learning navigation

[Study HQ in Notion (access required)](https://www.notion.so/41623e7864a4813e8866cd71e4a21dca) · [Repository guide](docs/LEARNING-WORKFLOW.md)

| Linux | Networking | Bash | Application project |
| --- | --- | --- | --- |
| [linux-fundamentals](https://github.com/Kartik-git00/linux-fundamentals) | [Networking](https://github.com/Kartik-git00/Networking) | [Bash-Scripting](https://github.com/Kartik-git00/Bash-Scripting) | [Skill-Build](https://github.com/Kartik-git00/Skill-Build) |

Notion holds detailed study notes and revision. GitHub holds original code, sanitized reports and project evidence. New roadmap labs remain **not started / completion unverified** until the learner records actual work; documentation and reference code are not lab completion.

## Start with Day 3: synthetic log analysis

[Reference script](scripts/log-summary.sh) · [Synthetic fixture](examples/sample.log) · [Project guide](docs/LOG-ANALYSIS.md) · [Report template](templates/lab-report.md)

```bash
bash -n scripts/log-summary.sh
bash scripts/log-summary.sh examples/sample.log
```

Requires Bash and awk. Run from this repository's root in Linux Bash or Git Bash. No sudo, network requests or system-log edits. The reference reads a deliberately narrow synthetic format and emits level counts. It is not an intrusion detector.

## Layout

- scripts/: reference utilities; learner changes should credit assistance
- examples/: synthetic teaching data
- docs/: project limitations and learning workflow
- templates/: unfilled evidence records
- reports/: suggested destination for future learner reports; none fabricated

## Ownership and validation

The initial log-summary reference was prepared with Codex assistance. Learner implementation and lab completion are **not claimed**. Codex checked syntax and edge-case behavior in Git Bash on Windows; Linux VM execution remains a learner check. See the project guide for exact cases and limitations.
