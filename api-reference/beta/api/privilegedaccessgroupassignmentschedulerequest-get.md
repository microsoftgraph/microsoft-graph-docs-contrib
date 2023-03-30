---
title: "Get privilegedAccessGroupAssignmentScheduleRequest"
description: "Read the properties and relationships of a privilegedAccessGroupAssignmentScheduleRequest object."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get privilegedAccessGroupAssignmentScheduleRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup|

[!INCLUDE [rbac-pim-groups-apis-read](../includes/rbac-for-apis/rbac-pim-groups-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/assignmentScheduleRequests/{privilegedAccessGroupAssignmentScheduleRequestId}
```

## Optional query parameters
This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_privilegedaccessgroupassignmentschedulerequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/assignmentScheduleRequests/34e963f6-150f-cf79-678c-6fcaf978bb49
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
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/privilegedAccess/group/assignmentScheduleRequests/$entity",
    "id": "34e963f6-150f-cf79-678c-6fcaf978bb49",
    "status": "Provisioned",
    "completedDateTime": "2023-01-11T11:50:06Z",
    "createdDateTime": "2023-01-11T11:50:05.95Z",
    "approvalId": null,
    "customData": null,
    "createdBy": {
      "user": {
            "displayName": null,
            "id": "3fbd929d-8c56-4462-851e-0eb9a7b3a2a5"
      }
    },
    "action": "adminAssign",
    "isValidationOnly": false,
    "justification": "Assign active member access.",
    "scheduleInfo": {
        "startDateTime": "2023-01-11T11:50:05.9999343Z",
        "recurrence": null,
        "expiration": {
            "type": "noExpiration",
            "endDateTime": null,
            "duration": null
        }
    },
    "ticketInfo": {
        "ticketNumber": null,
        "ticketSystem": null
    },
    "principalId": "071cc716-8147-4397-a5ba-b2105951cc0b",
    "accessId": "member",
    "groupId": "68e55cce-cf7e-4a2d-9046-3e4e75c4bfa7",
    "targetScheduleId": "34e963f6-150f-cf79-678c-6fcaf978bb49"
}
```

