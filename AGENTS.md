# Agent Quick Guide

Top-level entrypoint for agents working in this repository.

## Authority

If this file and `.github/copilot-instructions.md` ever differ, follow:

1. `.github/copilot-instructions.md`
2. The prompt and template files it routes you to

This file is intentionally thin to avoid split-brain guidance.

## Read first

Before doing docs work in this repo:

1. Read `.github/copilot-instructions.md`
2. Determine whether the task is **authoring/updating** or **review**
3. Load the prompt file that `.github/copilot-instructions.md` tells you to read first

## Repo map

- `api-reference/*/api/` — API operation topics
- `api-reference/*/resources/` — resource and enum topics
- `changelog/` — API change records
- `concepts/whats-new-overview.md` — monthly release highlights
- `concepts/` — conceptual topics such as tutorials, conceptual overviews, guides
- `api-reference/*/toc/toc.mapping.json` — API reference TOC mapping
- `api-reference/*/includes/rbac-for-apis/` — RBAC include files
- `temp-docstubs/` — temporary authoring inputs

## Workflow

1. Start with `.github/copilot-instructions.md`
2. Load the correct scenario guidance
3. Make scoped changes only
4. Run the validation expected by the loaded workflow

## Rule of thumb

Do not duplicate detailed rules in this file. Keep detailed authoring, review, changelog, What's New, TOC, enum, and RBAC guidance in the files referenced by `.github/copilot-instructions.md`.
