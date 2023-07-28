---
title: "privilegedAccessGroupAssignmentScheduleRequest: filterByCurrentUser"
description: "In PIM for groups, retrieve the requests for membership or ownership assignments for the calling principal to groups that are governed by PIM."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# privilegedAccessGroupAssignmentScheduleRequest: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In PIM for groups, retrieve the requests for membership or ownership assignments for the calling principal to groups that are governed by PIM.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAssignmentSchedule.Read.AzureADGroup, PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAssignmentSchedule.Read.AzureADGroup, PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup|

[!INCLUDE [rbac-pim-groups-apis-read-assignmentschedulerequests](../includes/rbac-for-apis/rbac-pim-groups-apis-read-assignmentschedulerequests.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/assignmentScheduleRequests/filterByCurrentUser(on='parameterValue')
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|on|assignmentScheduleRequestFilterByCurrentUserOptions|Filter used to query assignmentScheduleRequests. The possible values are `principal`, `createdBy`, `approver`, `unknownFutureValue`. Required.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) collection in the response body.

## Examples

### Example 1: Retrieve a principal's requests scoped to a specific group and that are pending approval

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "privilegedaccessgroupassignmentschedulerequestthis.filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/assignmentScheduleRequests/filterByCurrentUser(on='principal')?$filter=status eq 'PendingApproval' and groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/privilegedaccessgroupassignmentschedulerequestthisfilterbycurrentuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/privilegedaccessgroupassignmentschedulerequestthisfilterbycurrentuser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/privilegedaccessgroupassignmentschedulerequestthisfilterbycurrentuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/privilegedaccessgroupassignmentschedulerequestthisfilterbycurrentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/privilegedaccessgroupassignmentschedulerequestthisfilterbycurrentuser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/privilegedaccessgroupassignmentschedulerequestthisfilterbycurrentuser-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest",
      "id": "12345",  
      "accessId": "member",
      "principalId": "c277c8cb-6bb7-42e5-a17f-0add9a718151",  
      "groupId": "d5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc",
      "status": "PendingApproval",
      "createdDateTIme": "2022-02-26T08:00:00.000Z",
      "completedDateTIme": null,
      "isValidationOnly": false,
      "action": "SelfActivate",  
      "scheduleInfo":
        {
          "startDateTime": "2022-04-01T08:00:00.000Z",
          "expiration":
            {
              "type": "AfterDuration",
              "duration" : "PT8H",
            }
        },
      "justification":"Activate access",
      "ticketInfo":
        {
          "ticketNumber": "09876"
        }
    }
  ]
}
```

