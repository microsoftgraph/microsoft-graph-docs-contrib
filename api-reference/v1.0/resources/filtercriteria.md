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
| color           | String                   | *TODO*    |
| criterion1      | String                   | *TODO*    |
| criterion2      | String                   | *TODO*    |
| dynamicCriteria | String                   | *TODO*    |
| filterOn        | String                   | *TODO*    |
| icon            | [workbookIcon](icon.md)  | *TODO*    |
| values          | [Json](json.md)          | *TODO*    |

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

