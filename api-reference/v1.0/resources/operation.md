---
title: "operation resource type"
description: "The status of a long-running operation."
ms.localizationpriority: medium
author: "billbliss"
ms.subservice: teams
doc_type: resourcePageType
ms.date: 08/08/2024
---

# operation resource type

Namespace: microsoft.graph

The status of a long-running operation.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdDateTime| DateTimeOffset |The start time of the operation.|
|lastActionDateTime| DateTimeOffset |The time of the last action of the operation.|
|status|operationStatus|The current status of the operation: `notStarted`, `running`, `completed`, `failed` |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.operation"
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "lastActionDateTime": "String (timestamp)",
  "status": "notStarted | running | completed | failed"
}
```

<!-- uuid: 13fa92b1-3b41-498b-aab1-f943464a124f
2018-03-30 10:29:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "operation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

