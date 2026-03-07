# Scenario 4: General documentation tasks

> **Before proceeding:** Read the shared standards and processes in [`common.md`](.github/prompts/author-api-docs/common.md). Use the `fetch` tool to open this file. It contains all shared setup steps, common processes (changelog, What's New, TOC, validation), reference standards, documentation standards, and the base quality checklist that apply to this scenario.

---

## Example interaction

> **Author:** Review all files in api-reference/beta/resources/ that reference the 'user' resource and ensure the links are formatted correctly.
>
> **AI:** _[Reads common file, verifies branch]_
> I'll search for files referencing the user resource, check link formatting against the standards (relative paths, correct prefixes), and fix any issues. I'll report each file updated with the specific changes made.

---

## Overview

Microsoft Graph documentation requires ongoing maintenance beyond documenting new APIs and changes. Authors may need assistance with:
- **Cleanup tasks:** Fixing inconsistencies, formatting issues, broken links, or outdated content
- **Backfilling:** Adding missing documentation for existing APIs that were never fully documented
- **Content improvements:** Enhancing descriptions, examples, or clarifying existing documentation
- **Bulk updates:** Applying consistent changes across multiple files
- **Special projects:** Custom documentation needs that require adherence to Microsoft Graph standards

## How to use this scenario

This scenario is flexible and task-driven — formal inputs (doc stubs, API.md, Documentation Plan) are typically not required. The author's prompt serves as the task description.

**Provide a detailed task description:**
- Clearly describe what you want to accomplish
- Include specific files, resources, or APIs involved (if known)
- Explain the desired outcome or acceptance criteria
- Share any relevant context, constraints, or requirements

If the task involves changes that should be announced (e.g., backfilling recently added APIs), ask the author whether they need a **changelog entry** and **What's New update**.

**Example task prompts:**
- "Review all files in api-reference/beta/resources/ that reference the 'user' resource and ensure the links are formatted correctly"
- "The 'application' resource is missing examples in the GET operation. Add comprehensive examples based on the beta version"
- "Clean up all deprecated properties in identity-related resources to ensure they follow the deprecation table format"
- "I need to backfill documentation for the 'servicePrincipal' PATCH operation that was never completed"
- "Update all changelog entries in Microsoft.AAD.LCM.json to ensure descriptions follow the required format"

## Guidelines and standards

When working on general documentation tasks, you MUST adhere to all Microsoft Graph API documentation standards and guidelines defined in [`common.md`](common.md).

Additionally, reference these companion files for review standards:
- **review-api-docs.prompt.md:** Microsoft Graph REST API Documentation Review Guidelines
- **copilot-instructions.md:** Additional review guidelines and file type classifications

**Key principles to remember:**
- All filenames must be lowercase
- Properties and relationships must be in alphabetical order
- Follow [namespace qualification rules](common.md#namespace-qualification) for types in subnamespaces
- Use appropriate deprecation patterns when updating deprecated content
- Maintain consistent formatting (headings, tables, links)
- Follow beta disclaimer requirements for beta documentation
- Ensure examples use pseudo-values, not data types
- Respect version-specific link formatting (preserve-view for beta, none for v1.0)

## Workflow

1. **Understand the task:**
   - Read the author's detailed task description
   - Ask clarifying questions if the requirements are unclear
   - Identify which guidelines and standards apply to this specific task

2. **Gather context:**
   - Read relevant files mentioned in the task
   - Search for related documentation to understand patterns and existing implementations
   - Review guidelines from common.md, review-api-docs.prompt.md, and copilot-instructions.md that apply to the task

3. **Plan the approach:**
   - Break down complex tasks into manageable steps
   - Identify all files that need to be created, modified, or reviewed
   - Determine the order of operations to ensure consistency

4. **Execute the work:**
   - Make changes following Microsoft Graph documentation standards
   - Apply quality checks as you work (alphabetical order, formatting, links, etc.)
   - Test or validate changes where applicable (e.g., check for markdown lint errors)

5. **Provide a summary:**
   - List all files created or modified
   - Highlight any issues found and resolved
   - Note any items that require author review or decision
   - Suggest next steps if applicable

## When to update changelog and What's new

For details on the changelog and What's new processes, see [common.md](common.md).

**Update changelog and What's new ONLY when:**
- The task explicitly involves documenting API changes that should be announced
- You're backfilling documentation for recently added APIs that haven't been logged yet
- You're documenting deprecations that need to be communicated

**Do NOT update changelog and What's new when:**
- Fixing typos, formatting issues, or broken links
- Improving descriptions or examples for existing, stable APIs
- Reorganizing content without changing API functionality
- Cleaning up documentation debt

If unsure whether to update changelog/What's new, ask the author for clarification.

## Quality checklist

In addition to the [base quality checklist](common.md#base-quality-checklist), verify:

- [ ] Task requirements fully understood and addressed
- [ ] All relevant guidelines from common.md, review-api-docs.prompt.md, and copilot-instructions.md have been followed
- [ ] Examples use pseudo-values, not data types
- [ ] [General Formatting Rules](common.md#general-formatting-rules) followed consistently
- [ ] [Namespace qualification rules](common.md#namespace-qualification) applied correctly
- [ ] [Validation](common.md#validation) completed successfully
- [ ] Changelog, What's new, and TOC mapping updated only if appropriate
