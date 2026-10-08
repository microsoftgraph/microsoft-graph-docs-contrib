
# How-to article template

The how-to article template is used for documenting step-by-step procedures for Microsoft Graph. It consists of a single document that guides users through a specific task or process.

## Usage

Use this template for any article that describes how to accomplish a specific task ("how-to") in the context of Microsoft Graph. Examples include configuring features or specific API scenarios.

## Template

The following Markdown code block defines the template structure.

Any text surrounded by curly braces (`{}`) is a variable and should be replaced with values according to the following table.

| Variable name | Replace with value |
| ------------- | ------------------ |
| `how-to-title` | The title of the how-to article. |
| `description` | A brief description of what this how-to covers. |
| `author-github-username` | The author's GitHub username. |
| `author-ms-alias` | The author's Microsoft alias. |
| `date-of-publication` | The current date (or planned date of publication) in `mm/dd/yyyy` format. |

~~~md
---
title: {how-to-title}
description: {description}
author: {author-github-username}
ms.author: {author-ms-alias}
ms.topic: how-to
ms.localizationpriority: medium
ms.date: {date-of-publication}
---

# {how-to-title}

{Brief introduction explaining what the user will accomplish by following this guide.}

## Prerequisites

- Prerequisite 1
- Prerequisite 2

## Steps

<!--
Always use '1' for numbered lists to auto-increment. This makes it easier to move steps later if needed.
-->

1. {step-1}
1. {step-2}
1. {step-3}
<!-- Add more steps as needed -->

## Next steps

- {next-steps}
~~~

## Notes

- Replace all variables in curly braces with actual content.
- Use dashes (-) for unordered lists to comply with markdownlint rules.
- Ensure proper heading hierarchy and a single newline at the end of the file.
- Add images to `concepts/images/` and reference them as needed.
- Use includes for reusable content if applicable.
