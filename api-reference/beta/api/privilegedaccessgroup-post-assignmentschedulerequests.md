---
title: "Create assignmentScheduleRequest"
description: "Create a new privilegedAccessGroupAssignmentScheduleRequest object."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create assignmentScheduleRequest
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

|Property|Type|Description|
|:---|:---|:---|
|principalId|String|The identifier of the principal whose membership or ownership assignment is granted through PIM for groups. Required.|
|accessId|privilegedAccessGroupRelationships|The identifier of the membership or ownership assignment relationship to the group. The possible values are: `owner`, `member`. Required.|
|groupId|String|The identifier of the group representing the scope of the membership or ownership assignment through PIM for groups. Optional.|
|targetScheduleId|String|The identifier of the schedule that's created from the request. Optional.|


## Response

If successful, this method returns a `201 Created` response code and a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object in the response body.

## Examples

### Example 1: Create an assignment schedule request

In the following request, an assignment schedule request is created to assign an active member access.

#### Request
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
  "accessId": "member", 
  "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2", 
  "groupId": "68e55cce-cf7e-4a2d-9046-3e4e75c4bfa7", 
  "action": "adminAssign", 
  "scheduleInfo": { 
      "startDateTime": "2022-12-08T07:43:00.000Z", 
      "expiration": { 
          "type": "afterDuration", 
          "duration": "PT2H" 
      } 
  }, 
  "justification": "Assign active member access."
}
```


### Response
The following is an example of the response.
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

