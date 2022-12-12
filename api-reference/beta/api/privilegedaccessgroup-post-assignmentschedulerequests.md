---
title: "Create privilegedAccessGroupAssignmentScheduleRequest"
description: "Create a new privilegedAccessGroupAssignmentScheduleRequest object."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create privilegedAccessGroupAssignmentScheduleRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAccess.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAccess.ReadWrite.AzureADGroup|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/privilegedAccess/group/assignmentScheduleRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.

You can specify the following properties when creating a **privilegedAccessGroupAssignmentScheduleRequest**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|status|String|**TODO: Add Description** Inherited from [request](../resources/request.md). Required.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [request](../resources/request.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [request](../resources/request.md). Optional.|
|approvalId|String|**TODO: Add Description** Inherited from [request](../resources/request.md). Optional.|
|customData|String|**TODO: Add Description** Inherited from [request](../resources/request.md). Optional.|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [request](../resources/request.md). Optional.|
|action|scheduleRequestActions|**TODO: Add Description** Inherited from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md). The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`, `selfExtend`, `selfRenew`, `unknownFutureValue`. Optional.|
|isValidationOnly|Boolean|**TODO: Add Description** Inherited from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md). Optional.|
|justification|String|**TODO: Add Description** Inherited from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md). Optional.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|**TODO: Add Description** Inherited from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md). Optional.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|**TODO: Add Description** Inherited from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md). Optional.|
|principalId|String|**TODO: Add Description** Optional.|
|accessId|privilegedAccessGroupRelationships|**TODO: Add Description**. The possible values are: `owner`, `member`, `unknownFutureValue`. Optional.|
|groupId|String|**TODO: Add Description** Optional.|
|targetScheduleId|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_privilegedaccessgroupassignmentschedulerequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/assignmentScheduleRequests
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest",
  "status": "String",
  "completedDateTime": "String (timestamp)",
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
  },
  "principalId": "String",
  "accessId": "String",
  "groupId": "String",
  "targetScheduleId": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest",
  "id": "34e963f6-150f-cf79-678c-6fcaf978bb49",
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
  },
  "principalId": "String",
  "accessId": "String",
  "groupId": "String",
  "targetScheduleId": "String"
}
```

