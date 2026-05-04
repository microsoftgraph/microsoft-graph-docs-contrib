# Microsoft Graph docs workflow guide

This file is the top-level routing and standards guide for Microsoft Graph docs work in this repo. Before editing or reviewing files, use the workflow and path routing below to load the correct detailed instructions.

## Required workflow

Before doing any docs work, determine the task type and read the matching prompt file first.

- **Authoring or updating docs:** read `.github/prompts/author-api-docs.prompt.md`
- **Reviewing docs changes:** read `.github/prompts/review-api-docs.prompt.md`

Then read the scenario-specific files that those prompt files direct you to use.

## Scenario routing

Use this table when deciding which detailed guidance to load.

| If the task is... | Read first | Then read |
| --- | --- | --- |
| New beta API docs or schema additions | `.github/prompts/author-api-docs.prompt.md` | `.github/prompts/author-api-docs/common.md`, `.github/prompts/author-api-docs/public-preview.md` |
| GA promotion to v1.0 | `.github/prompts/author-api-docs.prompt.md` | `.github/prompts/author-api-docs/common.md`, `.github/prompts/author-api-docs/ga.md` |
| Deprecation or retirement | `.github/prompts/author-api-docs.prompt.md` | `.github/prompts/author-api-docs/common.md`, `.github/prompts/author-api-docs/deprecate-retire.md` |
| Cleanup, maintenance, backfill, or one-off docs tasks | `.github/prompts/author-api-docs.prompt.md` | `.github/prompts/author-api-docs/common.md`, `.github/prompts/author-api-docs/general.md` |
| Reviewing a PR, branch, or changed files | `.github/prompts/review-api-docs.prompt.md` | `.github/prompts/author-api-docs/common.md` plus the scenario-specific checklist files it references |

### Additive guidance

Read these additional files whenever they apply:

- **Enumeration work:** `.github/prompts/author-api-docs/enumerations.md`
- **Manual changelog authoring:** `templates/changelog-patterns.md`
- **RBAC include files:** `templates/rbac-for-apis-include.md`

## Path-based routing

Use this table when the changed file paths are already known.

| Path or file type | Required detailed guidance |
| --- | --- |
| `api-reference/*/api/*.md` | `.github/prompts/author-api-docs/common.md#api-method-reference-files` |
| `api-reference/*/resources/*.md` | `.github/prompts/author-api-docs/common.md#resource-reference-files` |
| Enum additions, promotions, updates, or deprecations | `.github/prompts/author-api-docs/enumerations.md` |
| `changelog/*.json` | `.github/prompts/author-api-docs/common.md#updating-the-changelog` |
| `concepts/whats-new-overview.md` | `.github/prompts/author-api-docs/common.md#updating-whats-new` |
| `api-reference/*/toc/toc.mapping.json` | `.github/prompts/author-api-docs/common.md#updating-the-table-of-contents-toc` |
| `api-reference/*/includes/rbac-for-apis/*.md` | `.github/prompts/author-api-docs/common.md#permissions` and `templates/rbac-for-apis-include.md` |
| `temp-docstubs/` inputs and cleanup | `.github/prompts/author-api-docs/common.md#temp-docstubs-folder` and `.github/prompts/review-api-docs.prompt.md` if reviewing |

## File classes

This repo contains several docs surfaces with different expectations:

1. **API reference topics** — `api-reference/v1.0/api/` and `api-reference/beta/api/`
   - `doc_type: apiPageType`
   - Individual operations such as GET, POST, PATCH, PUT, DELETE, actions, and functions
2. **Resource topics** — `api-reference/v1.0/resources/` and `api-reference/beta/resources/`
   - Usually `doc_type: resourcePageType`, except for enum definition topics which are `doc_type: enumPageType`
   - Entity types, complex types, and enum topics
3. **Changelog files** — `changelog/`
   - JSON records for API changes
4. **What's New** — `concepts/whats-new-overview.md`
   - Monthly customer-facing release summary
5. **TOC mapping files** — `api-reference/*/toc/toc.mapping.json`
   - Discovery and navigation for API reference content
6. **RBAC include files** — `api-reference/*/includes/rbac-for-apis/`
   - Delegated-role guidance used by API topics

These instructions primarily govern API reference documentation. General conceptual docs in `concepts/` usually follow other workflows, but **`concepts/whats-new-overview.md` is explicitly in scope** for API change announcements.

## Non-negotiable repo-wide rules

These rules apply across authoring and review scenarios:

1. **All filenames must be lowercase.**
2. **Namespace declaration is required** immediately after the H1 title: `Namespace: microsoft.graph*`.
3. **Beta disclaimer is required for beta files** immediately after the namespace declaration and **must be absent in v1.0 files**.
4. **Work on a branch, not `main`.**
5. **Examples must use full `graph.microsoft.com` URLs** and **pseudo-values**, not data type names.
6. **Only `v1.0` and `beta` are valid API versions in doc URLs and examples.** Do not use test or internal environment versions such as `ppe`, `ppe-beta`, `ppe-v1.0`, `staging`, `stagingbeta`, or similar variants.
7. **HTTP request sections must use relative URLs** such as `GET /users`.
8. **API and resource topics must keep the standard section order** for their file type.
9. **Tables must preserve required ordering rules**, including alphabetical ordering where the detailed guidance requires it.
10. **Enum changes must be checked across all exposed documentation surfaces**, not only the enum definition itself.
11. **Customer-visible API changes require changelog review and may require What's New updates.**

## Core standards

Use the linked prompt files for the full standards. The rules below are the most commonly missed and should be checked first.

### API topics

- Titles and descriptions should begin with imperative verbs.
- Include the standard permissions boilerplate and permissions include.
- Include the `<!-- { "blockType": "ignored" } -->` comment before the HTTP request syntax.
- Function parameter descriptions must say whether the parameter is required or optional.
- Examples must include Request and Response blocks, with unique `name` values in block metadata.
- Do not use custom H2 headings; keep the predefined API topic order.

### Resource topics

- Descriptions should begin with present-tense verbs.
- Properties and relationships must follow the ordering rules from the detailed guidance.
- JSON representation must match the Properties section.
- Keep resource naming consistent across YAML title, H1, and `@odata.type` references.
- Use `author-api-docs/enumerations.md` whenever enum documentation is created, updated, promoted, or deprecated.

### Changelog

- Use the same `Id` value across related `ChangeList` items and the record-level `Id`.
- Use valid `Cloud`, `Version`, and `CreatedDateTime` values.
- Use full Learn URLs in descriptions.
- For manual changelog authoring, use `templates/changelog-patterns.md`.

## Common change patterns

- **New schema in beta:** update affected API/resource docs, enum docs, changelog, TOC, and What's New if the change is customer-visible.
- **Promotion to v1.0:** use the GA workflow, keep beta and v1.0 aligned where intended, remove beta-only content, update changelog, and add a What's New entry.
- **Enum member additions:** update the enum definition, any inline value listings, and every API/resource page that enumerates supported values.
- **Deprecation or retirement:** update banners and table entries, related references, changelog, What's New, redirects, and TOC as applicable.
- **Cleanup-only changes:** usually do not require changelog or What's New updates.

## Validation summary

Use the detailed prompt files for the complete validation workflow. At minimum:

- Validate changelog JSON when `changelog/*.json` changes.
- Validate `temp-docstubs` cleanup when `temp-docstubs/` was used.
- Apply the scenario-specific quality checklist from the prompt files you loaded.
- Re-check enum consistency, beta vs v1.0 differences, and cross-file references when those surfaces changed.

## When multiple guides apply

- `.github/prompts/author-api-docs/common.md` applies to all authoring scenarios once you begin the workflow.
- `.github/prompts/author-api-docs/enumerations.md` is additive whenever enums are created, changed, promoted, or deprecated.
- `templates/changelog-patterns.md` is only needed for manual changelog authoring.
- `templates/rbac-for-apis-include.md` is only needed when creating or updating RBAC include files.
- `review-api-docs.prompt.md` should be treated as the review workflow authority when the task is review-focused.

## Use directive wording, not optional wording

Treat linked guidance as required when its trigger condition is met.

- **Before editing API reference docs, read the authoring prompt file first.**
- **Before reviewing docs changes, read the review prompt file first.**
- **If enum documentation is affected, also read the enum guidance file.**
- **If changelog or What's New is in scope, follow the shared process rules in `common.md`.**
