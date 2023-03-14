---
title: "privilegedAccessScheduleRequest resource type"
description: "An abstract type that exposes properties used to configure access eligibility and assignment in privileged identity management (PIM) governance operations for groups."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessScheduleRequest resource type

Namespace: microsoft.graph

An abstract type that exposes properties used to configure access eligibility and assignment in privileged identity management (PIM) governance operations for groups.

This is an abstract type from which the [privilegedAccessGroupAssignmentScheduleRequest](privilegedaccessgroupassignmentschedulerequest.md) and [privilegedAccessGroupEligibilityScheduleRequest](privilegedaccessgroupeligibilityschedulerequest.md) resource types inherit.

Inherits from [request](../resources/request.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|scheduleRequestActions| Represents the type of operation on the access assignment request. The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`, `selfExtend`, `selfRenew`, `unknownFutureValue`. Required.|
|isValidationOnly|Boolean|Represents whether the request intends to evaluate the payload without writing to the system. This can be used in UI to enable or disable scenarios. The default value is `false`. Optional.|
|justification|String|Represents the justification for the request. Optional.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The period of the access assignment or eligibility request. The request can be for a single occurrence or multiple recurring instances. Optional.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|Represents the ticket information provided by the caller for tracking purposes. Optional.|

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

