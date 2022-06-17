---
title: "operation resource type"
description: "The status of a long-running operation."
ms.localizationpriority: medium
author: "billbliss"
ms.prod: teamwork
doc_type: resourcePageType
---

# operation resource type

Namespace: microsoft.graph

The status of a long-running operation.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The start time of the operation.|
|id|String|The unique identifier of the operation |
|lastActionDateTime|DateTimeOffset|The time of the last action of the operation.|
|resourceLocation|String| URI of the resource that is the operation is performed on. |
|status|longRunningOperationStatus|The current status of the operation. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
|statusDetail|String|Details on the status of the operation.|


## JSON representation

Here is a JSON representation of the resource.

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
  "status": "notStarted | running | completed | failed",
  "statusDetail": "ResetSuccess", 
  "id": "2d497bb-57bd-47a6-8749-5ccd0869f2bd",
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

