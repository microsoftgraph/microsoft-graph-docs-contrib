---
title: "FilterCriteria resource type"
description: "Represents the filtering criteria applied to a column."
ms.localizationpriority: medium
author: "ruoyingl"
ms.prod: workbooks-and-charts
doc_type: resourcePageType
---

# FilterCriteria resource type

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

Here is a JSON representation of the resource.

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
  "icon": {"@odata.type": "microsoft.graph.workbookIcon"},
  "values": {"@odata.type": "microsoft.graph.Json"}
}

```

<!-- {
  "type": "#page.annotation",
  "suppressions": []
} -->

