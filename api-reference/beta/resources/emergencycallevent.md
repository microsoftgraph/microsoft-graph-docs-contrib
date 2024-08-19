---
title: "emergencyCallEvent resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# emergencyCallEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [callEvent](../resources/callevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/emergencycallevent-list.md)|[emergencyCallEvent](../resources/emergencycallevent.md) collection|Get a list of the [emergencyCallEvent](../resources/emergencycallevent.md) objects and their properties.|
|[Get](../api/emergencycallevent-get.md)|[emergencyCallEvent](../resources/emergencycallevent.md)|Read the properties and relationships of an [emergencyCallEvent](../resources/emergencycallevent.md) object.|
|[Update](../api/emergencycallevent-update.md)|[emergencyCallEvent](../resources/emergencycallevent.md)|Update the properties of an [emergencyCallEvent](../resources/emergencycallevent.md) object.|
|[Delete](../api/emergencycallevent-delete.md)|None|Delete an [emergencyCallEvent](../resources/emergencycallevent.md) object.|
|[List participants](../api/emergencycallevent-list-participants.md)|[participant](../resources/participant.md) collection|Get the participant resources from the participants navigation property.|
|[Add participant](../api/emergencycallevent-post-participants.md)|[participant](../resources/participant.md)|Add participants by posting to the participants collection.|
|[Remove participants](../api/emergencycallevent-delete-participants.md)|None|Remove a [participant](../resources/participant.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callerInfo|[emergencyCallerInfo](../resources/emergencycallerinfo.md)|**TODO: Add Description**|
|callEventType|callEventType|**TODO: Add Description** Inherited from [callEvent](../resources/callevent.md).The possible values are: `callStarted`, `callEnded`, `unknownFutureValue`, `rosterUpdated`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `rosterUpdated`.|
|emergencyNumberDialed|String|**TODO: Add Description**|
|eventDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [callEvent](../resources/callevent.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|policyName|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|participants|[participant](../resources/participant.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.callEvent](../resources/callevent.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.emergencyCallEvent",
  "baseType": "microsoft.graph.callEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emergencyCallEvent",
  "id": "String (identifier)",
  "callEventType": "String",
  "eventDateTime": "String (timestamp)",
  "policyName": "String",
  "emergencyNumberDialed": "String",
  "callerInfo": {
    "@odata.type": "microsoft.graph.emergencyCallerInfo"
  }
}
```

