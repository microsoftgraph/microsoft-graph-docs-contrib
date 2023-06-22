---
author: "JeremyKelley"
description: "The calculated column on a columnDefinition resource indicates that the data of the column is calculated based on other columns in the site."
title: "calculatedColumn resource type"
ms.localizationpriority: medium
doc_type: "resourcePageType"
ms.prod: sites-and-lists
---

# calculatedColumn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **calculatedColumn** on a [columnDefinition](columndefinition.md) resource indicates that the data of the column is calculated based on other columns in the site.

## Properties

| Property       | Type   | Description                                                                                                                  |
| :------------- | :----- | :--------------------------------------------------------------------------------------------------------------------------- |
| format     | String | For `dateTime` output types, the format of the value. Possible values are: `dateOnly` or `dateTime`.                               |
| formula    | String | The formula used to compute the value for this column.                                                                       |
| outputType | String | The output type used to format values in this column. Possible values are: `boolean`, `currency`, `dateTime`, `number`, or `text`. |

SharePoint formulas use a syntax similar to Excel formulas. For more information, see [Examples of common formulas in SharePoint Lists][SPFormulas].

[SPFormulas]: https://support.office.com/article/Examples-of-common-formulas-in-SharePoint-Lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3

## JSON representation

The following is a JSON representation of the resource.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.calculatedColumn" } -->

```json
{
  "format": "String",
  "formula": "String",
  "outputType": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/CalculatedColumn",
  "suppressions": []
}
-->
