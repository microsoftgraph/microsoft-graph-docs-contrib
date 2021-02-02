---
title: "printJobStatus resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printJobStatus resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|details|printJobStateDetail collection|**TODO: Add Description**|
|isAcquiredByPrinter|Boolean|**TODO: Add Description**|
|state|printJobProcessingState|**TODO: Add Description**. Possible values are: `unknown`, `pending`, `processing`, `paused`, `stopped`, `completed`, `canceled`, `aborted`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printJobStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printJobStatus",
  "state": "String",
  "description": "String",
  "isAcquiredByPrinter": "Boolean",
  "details": [
    "String"
  ]
}
```

