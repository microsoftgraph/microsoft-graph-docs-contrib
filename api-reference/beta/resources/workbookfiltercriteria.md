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


