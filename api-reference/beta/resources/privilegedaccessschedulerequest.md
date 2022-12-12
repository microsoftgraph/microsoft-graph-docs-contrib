---
title: "privilegedAccessScheduleRequest resource type"
description: "**TODO: Add Description**"
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessScheduleRequest resource type

Namespace: microsoft.graph

**TODO: Add Description**
This is an abstract type.


Inherits from [request](../resources/request.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessScheduleRequests](../api/privilegedaccessschedulerequest-list.md)|[privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md) collection|Get a list of the [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md) objects and their properties.|
|[Get privilegedAccessScheduleRequest](../api/privilegedaccessschedulerequest-get.md)|[privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md)|Read the properties and relationships of a [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md) object.|
|[Update privilegedAccessScheduleRequest](../api/privilegedaccessschedulerequest-update.md)|[privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md)|Update the properties of a [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md) object.|
|[Delete privilegedAccessScheduleRequest](../api/privilegedaccessschedulerequest-delete.md)|None|Delete a [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md) object.|
|[stop](../api/privilegedaccessschedulerequest-stop.md)|None|**TODO: Add Description**|
|[recordDecisions](../api/privilegedaccessschedulerequest-recorddecisions.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|scheduleRequestActions|**TODO: Add Description**.The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`, `selfExtend`, `selfRenew`, `unknownFutureValue`.|
|approvalId|String|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|customData|String|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isValidationOnly|Boolean|**TODO: Add Description**|
|justification|String|**TODO: Add Description**|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|**TODO: Add Description**|
|status|String|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessScheduleRequest",
  "baseType": "microsoft.graph.request",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessScheduleRequest",
  "id": "String (identifier)",
  "status": "String",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "approvalId": "String",
  "customData": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "action": "String",
  "isValidationOnly": "Boolean",
  "justification": "String",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "ticketInfo": {
    "@odata.type": "microsoft.graph.ticketInfo"
  }
}
```

