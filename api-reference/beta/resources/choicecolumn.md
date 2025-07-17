---
author: spgraph-docs-team
description: The choiceColumn on a columnDefinition resource indicates that the column's values can be selected from a list of choices.
ms.date: 09/11/2017
title: ChoiceColumn
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: sharepoint
---

# ChoiceColumn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **choiceColumn** on a [columnDefinition](columndefinition.md) resource indicates that the column's values can be selected from a list of choices.

## Relationships
None.

## JSON representation

Here is a JSON representation of a **choiceColumn** resource.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.choiceColumn" } -->

```json
{
  "allowTextEntry": true,
  "choices": ["red", "blue", "green"],
  "displayAs": "checkBoxes | dropDownMenu | radioButtons"
}
```

## Properties

| Property           | Type               | Description                                                                                                   |
| :----------------- | :----------------- | :------------------------------------------------------------------------------------------------------------ |
| **allowTextEntry** | Boolean            | If true, allows custom values that aren't in the configured choices.                                          |
| **choices**        | collection(string) | The list of values available for this column.                                                                 |
| **displayAs**      | string             | How the choices are to be presented in the UX. Must be one of `checkBoxes`, `dropDownMenu`, or `radioButtons` |

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ChoiceColumn",
  "suppressions": []
}
-->
