---
title: "Create unifiedRoleAssignmentScheduleRequest"
description: "Create a new unifiedRoleAssignmentScheduleRequest object."
author: "japere"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Create unifiedRoleAssignmentScheduleRequest
Namespace: microsoft.graph



Create a new [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /roleManagement/directory/roleAssignmentScheduleRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object.

You can specify the following properties when creating an **unifiedRoleAssignmentScheduleRequest**.

|Property|Type|Description|
|:---|:---|:---|
|status|String|**TODO: Add Description** Inherited from [request](../resources/request.md). Required.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [request](../resources/request.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [request](../resources/request.md). Optional.|
|approvalId|String|**TODO: Add Description** Inherited from [request](../resources/request.md). Optional.|
|customData|String|**TODO: Add Description** Inherited from [request](../resources/request.md). Optional.|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [request](../resources/request.md). Optional.|
|action|unifiedRoleScheduleRequestActions|**TODO: Add Description**. The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`, `selfExtend`, `selfRenew`, `unknownFutureValue`. Optional.|
|principalId|String|**TODO: Add Description** Optional.|
|roleDefinitionId|String|**TODO: Add Description** Optional.|
|directoryScopeId|String|**TODO: Add Description** Optional.|
|appScopeId|String|**TODO: Add Description** Optional.|
|isValidationOnly|Boolean|**TODO: Add Description** Optional.|
|targetScheduleId|String|**TODO: Add Description** Optional.|
|justification|String|**TODO: Add Description** Optional.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|**TODO: Add Description** Optional.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_unifiedroleassignmentschedulerequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignmentScheduleRequests
Content-Type: application/json
Content-length: 671

{
  "@odata.type": "#microsoft.graph.unifiedRoleAssignmentScheduleRequest",
  "status": "String",
  "completedDateTime": "String (timestamp)",
  "approvalId": "String",
  "customData": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "action": "String",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "isValidationOnly": "Boolean",
  "targetScheduleId": "String",
  "justification": "String",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "ticketInfo": {
    "@odata.type": "microsoft.graph.ticketInfo"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.unifiedRoleAssignmentScheduleRequest",
  "id": "3c664a53-8825-6fc0-662b-7362c52e9b60",
  "status": "String",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "approvalId": "String",
  "customData": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "action": "String",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "isValidationOnly": "Boolean",
  "targetScheduleId": "String",
  "justification": "String",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "ticketInfo": {
    "@odata.type": "microsoft.graph.ticketInfo"
  }
}
```

