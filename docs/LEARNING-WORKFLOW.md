# Offensive Security Learning HQ — contribution workflow

Source: Offensive_Security_Roadmap_2026_2027_Expanded.pdf, 25 pages, edition 2026-11-10; Phase 0 p.6, foundations pp.6–7, reporting p.15, AI validation p.17, portfolio p.21.
Daily reconstruction supplied by the learner: Nov 10 ethics/scope/THM intro/journal; Nov 11 Kali/VM isolation/snapshots/Linux/THM Part 1; Nov 12 Git/reports/synthetic-log Bash project.

## Responsibilities

- Notion: explanations, daily assignments, quizzes, answer keys, revision and honest completion status.
- GitHub: original scripts, fixtures, diagrams and sanitized reproducible evidence.
- Learner: perform labs, record actual observations, explain commands and review claims.
- Codex: prepare notes/templates, review supplied evidence and propose changes through PRs. Reference implementations are assistance, not learner accomplishments.

## Repository roles

Linux exercises stay in linux-fundamentals; network diagrams/reports in Networking; Bash tools in Bash-Scripting. Skill-Build remains its own Flask application. The profile provides navigation. Existing PDFs, screenshots and source are retained at their existing paths.
The roadmap's suggested journal repository is a functional role; the HQ and these documents cover it without renaming or merging current repositories.

## Safe contribution steps

1. Inspect status, remote, branch, existing files and relevant open PRs.
2. Create a branch from the current intended base. Preserve unrelated local changes.
3. Add original work in a focused change. Prefer reports/day-NN-topic.md and evidence/day-NN/ for sanitized artifacts. Keep raw sensitive evidence outside Git.
4. Copy templates/lab-report.md for a report when present; use templates/project-evidence.md for a project.
5. Stage explicit paths, inspect staged diff, run meaningful checks and commit.
6. Push the branch and open a PR with purpose, actual validation and limitations.
7. Link the evidence commit to the Notion daily record. Do not auto-merge, force-push, delete, rename or merge repositories.

## Truthful status

Not started → In progress → Blocked or User reports completed → Evidence reviewed.
“Evidence reviewed” must say which artifact was inspected. A screenshot or command output does not prove every task in a room.
Expected results and synthetic fixtures are teaching material, never evidence of a platform outcome.
Record course/hint/AI assistance and personal implementation separately.

## Future daily assignment contract

Existing notification: 07:00 Asia/Kolkata, start 2026-11-10, as confirmed by the user; Day 4 is Nov 13. No second schedule is created. The existing task's editable instructions/ID were unavailable, so this contract is prepared, not installed into the scheduler.

Each future run should read the roadmap and latest progress, locate the existing day page before creating one, prepare detailed notes/tasks/quiz/answers/revision/preview, and link evidence destinations. If completion is unknown, say so and include catch-up. Check official lab links and account-free HTB availability; skip locked content. Retry by updating the same page/PR and notify once through the existing task.

## Publishing review

Use authorized labs only. Remove flags, tokens, passwords, private keys, personal/client data and restricted solutions from public copies. Ignore rules help avoid new accidental commits; they do not remove tracked files or historical secrets. Do not erase history as a shortcut.
Review content licensing before adding a licence or redistributing course material.
