---
author: "spgraph-docs-team"
title: "calculatedColumn resource type"
ms.localizationpriority: medium
description: "The calculated column on a columnDefinition resource indicates that the column's data is calculated based on other columns in the site."
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 07/22/2024
---
# calculatedColumn resource type

Namespace: microsoft.graph

The **calculatedColumn** on a [columnDefinition](columndefinition.md) resource indicates that the data of the column is calculated based on other columns in the site.

## Properties

| Property       | Type   | Description                                                                                                                        |
|:---------------|:-------|:-----------------------------------------------------------------------------------------------------------------------------------|
| format         | String | For `dateTime` output types, the format of the value. Possible values are: `dateOnly` or `dateTime`.                               |
| formula        | String | The formula used to compute the value for this column.                                                                             |
| outputType     | String | The output type used to format values in this column. Possible values are: `boolean`, `currency`, `dateTime`, `number`, or `text`. |

SharePoint formulas use a syntax similar to Excel formulas. For more information, see [Examples of common formulas in SharePoint Lists][SPFormulas].

[SPFormulas]: https://support.office.com/en-us/article/Examples-of-common-formulas-in-SharePoint-Lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3

## JSON representation

The following JSON representation shows the resource type.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.calculatedColumn" } -->

```json
{
  "format": "String",
  "formula": "String",
  "outputType": "String"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": [],
  "tocPath": "Resources/CalculatedColumn"
} -->

