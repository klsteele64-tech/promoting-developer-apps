---
name: creating-app-documents
description: Use when a developer needs README, getting-started, FAQ, changelog, feature docs, or a full document set written for an app or website.
license: MIT
metadata:
  author: Dev Launch Campaign
  version: "1.1.0"
  category: documentation
---

# Creating App Documents

Write a complete document set for the app. Do not stop at an outline. If the host can write files, save them under `docs/app/` (or the path the user names).

No login, accounts, or admin for this skill. Do not invent APIs, pricing, or screens.

## When to use

- "Write docs for my app"
- README, getting-started, FAQ, or changelog is missing or thin
- A campaign needs publishable documentation

When NOT: legal contracts, privacy policies as if reviewed by counsel, or copying another product's docs.

## Intake

Ask only what is still unknown. Inspect the repo or live site first.

Product name, job-to-be-done, URL/repo, ICP, install/open path, first success, pricing/license, support path, must-not-claim.

Thin repo → run [../promoting-developer-apps/references/interview-intake.md](../promoting-developer-apps/references/interview-intake.md).

## Workflow

1. Build a fact sheet. Mark gaps `UNKNOWN` or `INFERRED`.
2. Pick source: **repo walk** (code/site present) or **interview**.
3. Write every file in [references/doc-set.md](references/doc-set.md). Copy shapes from `assets/`.
4. Save files when the host can. In chat-only hosts, emit the full markdown for each file with a filename heading.
5. List what was written and what is still `UNKNOWN`.

## Required files

| File | Purpose |
|------|---------|
| `FACT-SHEET.md` | Facts vs UNKNOWN / INFERRED |
| `README.md` | Hero, job, first win, links |
| `getting-started.md` | Open/install in ≤10 minutes |
| `features.md` | User jobs, not file names |
| `faq.md` | Real failure questions |
| `changelog.md` | Latest + Unreleased |
| `support.md` | How to get help |

A set is incomplete if any of those seven is missing.

## Honesty

- No guessed endpoints, prices, or screenshots.
- Do not claim another product's docs as this app's.
- Chat-only host: still write full documents, not bullets that say "TBD later."
