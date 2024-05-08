---
title: "filterCriteria resource type"
description: "Represents the filtering criteria applied to a column."
ms.localizationpriority: medium
author: "ruoyingl"
ms.subservice: excel
doc_type: resourcePageType
---

# filterCriteria resource type

Namespace: microsoft.graph

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
  "color": "String",
  "criterion1": "String",
  "criterion2": "String",
  "dynamicCriteria": "String",
  "filterOn": "String",
  "icon": {"@odata.type": "microsoft.graph.workbookIcon"},
  "values": {"@odata.type": "microsoft.graph.Json"}
}
```

<!-- {
  "type": "#page.annotation",
  "suppressions": []
} -->

