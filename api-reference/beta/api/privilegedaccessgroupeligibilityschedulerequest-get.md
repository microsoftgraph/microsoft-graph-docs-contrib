---
title: "Get privilegedAccessGroupEligibilityScheduleRequest"
description: "Read the properties and relationships of a privilegedAccessGroupEligibilityScheduleRequest object."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get privilegedAccessGroupEligibilityScheduleRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup|

[!INCLUDE [rbac-pim-groups-apis-read-eligibilityschedulerequests](../includes/rbac-for-apis/rbac-pim-groups-apis-read-eligibilityschedulerequests.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/{privilegedAccessGroupEligibilityScheduleRequestId}
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

If successful, this method returns a `200 OK` response code and a [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object in the response body.

## Examples

### Example 1: Get all eligibility schedule requests

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_privilegedaccessgroupeligibilityschedulerequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/534b3d4d-3ba0-8429-3568-5e9cce6c2cbd
```


#### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/$entity",
    "id": "534b3d4d-3ba0-8429-3568-5e9cce6c2cbd",
    "status": "Revoked",
    "completedDateTime": null,
    "createdDateTime": "2022-04-12T09:12:18.187Z",
    "approvalId": null,
    "customData": null,
    "createdBy": {
        "user": {
            "displayName": null,
            "id": "3fbd929d-8c56-4462-851e-0eb9a7b3a2a5"
        }
    },
    "action": "adminRemove",
    "isValidationOnly": false,
    "justification": null,
    "scheduleInfo": null,
    "ticketInfo": {
        "ticketNumber": null,
        "ticketSystem": null
    },
    "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
    "accessId": "member",
    "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
    "targetScheduleId": null
}
```

### Example 2: Get specific properties of all eligibility schedule requests

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_privilegedaccessgroupeligibilityschedulerequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/534b3d4d-3ba0-8429-3568-5e9cce6c2cbd?$select=principalId,action,groupId
```


#### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/$entity",
    "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
    "action": "adminRemove",
    "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d"
}
```
