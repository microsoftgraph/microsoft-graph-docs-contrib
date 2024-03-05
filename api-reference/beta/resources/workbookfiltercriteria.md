---
title: "workbookFilterCriteria resource type"
description: "Represents the filtering criteria applied to a column."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "excel"
author: "ruoyingl"
---

# workbookFilterCriteria resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the filtering criteria applied to a column.

## Properties
| Property	      | Type	                 |Description|
|:----------------|:-------------------------|:----------|
| color           | String                   | *TODO*    |
| criterion1      | String                   | *TODO*    |
| criterion2      | String                   | *TODO*    |
| dynamicCriteria | String                   | *TODO*    |
| filterOn        | String                   | *TODO*    |
| icon            | [workbookIcon](workbookicon.md)  | *TODO*    |
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
  "values": {"@odata.type":"microsoft.graph.Json"},
  "icon":{"@odata.type": "microsoft.graph.workbookIcon"},
  "operator":"string"
}
```


