---
title: "workbookFilterCriteria resource type"
description: "Represents the filtering criteria applied to a column."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "excel"
author: "ruoyingl"
---

# workbookFilterCriteria resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the filtering criteria applied to a column.

## Properties

| Property	      | Type	                 |Description|
|:----------------|:-------------------------|:----------|
| color           | String                   | The color applied to the cell.   |
| criterion1      | String                   | A custom criterion.  |
| criterion2      | String                   | A custom criterion.    |
| dynamicCriteria | String                   | A dynamic formula specified in a custom filter.   |
| filterOn        | String                   | Indicates whether a filter is applied to a column.    |
| icon            | [workbookIcon](workbookicon.md)  | An icon applied via conditional formatting.   |
| operator        | String                   | An operator in a cell; for example, `=`, `>`, `<`, `<=`, or `<>`.    |
| values          | [Json](json.md)          | The values that appear in the cell.    |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookFilterCriteria"
}-->

```json
{
  "color": "string",
  "criterion1": "string",
  "criterion2": "string",
  "dynamicCriteria": "string",
  "filterOn": "string",
  "values": {"@odata.type":"microsoft.graph.Json"},
  "icon":{"@odata.type": "microsoft.graph.workbookIcon"},
  "operator":"string"
}
```


