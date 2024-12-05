---
title: "detonationBehaviourDetails resource type"
description: Detonation behaviour details
author: ak_graph
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 03/12/2024
---

# detonationBehaviourDetails resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionStatus|String|**TODO: Add Description**|
|behaviourCapability|String|**TODO: Add Description**|
|behaviourGroup|String|**TODO: Add Description**|
|details|String|**TODO: Add Description**|
|eventDateTime|DateTimeOffset|**TODO: Add Description**|
|operation|String|**TODO: Add Description**|
|processId|String|**TODO: Add Description**|
|processName|String|**TODO: Add Description**|
|target|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.detonationBehaviourDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detonationBehaviourDetails",
  "behaviourCapability": "String",
  "behaviourGroup": "String",
  "eventDateTime": "String (timestamp)",
  "processName": "String",
  "processId": "String",
  "operation": "String",
  "target": "String",
  "details": "String",
  "actionStatus": "String"
}
```

