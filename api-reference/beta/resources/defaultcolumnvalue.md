---
author: "daspek"
description: "Represents the default value for a columnDefinition."
title: "defaultColumnValue resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "sharepoint"
ms.date: 07/22/2024
---

# defaultColumnValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the default value for a [columnDefinition](columndefinition.md). The default value can either be specified directly or as a formula.

## Properties

| Property    | Type   | Description                                                    |
| :---------- | :----- | :------------------------------------------------------------- |
| formula     | String | The formula used to compute the default value for the column.  |
| value       | String | The direct value to use as the default value for the column.   |

You can specify either a **formula** or **value** at a time.

SharePoint formulas use a syntax similar to Excel formulas. For more information, see [Examples of common formulas in SharePoint Lists](https://support.microsoft.com/office/examples-of-common-formulas-in-lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3).

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- { "blockType": "resource", "@type": "microsoft.graph.defaultColumnValue" } -->

```json
{
  "formula": "String",
  "value": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/DefaultColumnValue",
  "suppressions": []
}
-->

