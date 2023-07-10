---
title: "List assignmentScheduleRequests"
description: "Get a list of the privilegedAccessGroupAssignmentScheduleRequest objects and their properties."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List assignmentScheduleRequests
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup|

[!INCLUDE [rbac-pim-groups-apis-read-assignmentschedulerequests](../includes/rbac-for-apis/rbac-pim-groups-apis-read-assignmentschedulerequests.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/assignmentScheduleRequests
```

## Optional query parameters
This method supports the `$select`, `$filter`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_privilegedaccessgroupassignmentschedulerequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/assignmentScheduleRequests
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-privilegedaccessgroupassignmentschedulerequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-privilegedaccessgroupassignmentschedulerequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-privilegedaccessgroupassignmentschedulerequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-privilegedaccessgroupassignmentschedulerequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-privilegedaccessgroupassignmentschedulerequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-privilegedaccessgroupassignmentschedulerequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-privilegedaccessgroupassignmentschedulerequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
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
      "id": "6aacaee8-4089-4048-9510-3119367fc943",
      "status": "Provisioned",
      "completedDateTime": "2023-02-07T07:05:53.7895614Z",
      "createdDateTime": "2023-02-07T07:05:55.3404527Z",
      "approvalId": null,
      "customData": null,
      "createdBy": {
        "user": {
            "id": "3cce9d87-3986-4f19-8335-7ed075408ca2"
        }
      },
      "action": "adminAssign",
      "isValidationOnly": false,
      "justification": "Retrieve requests",
      "scheduleInfo": {
        "startDateTime": "2023-02-07T06:57:55.6183972Z",
        "recurrence": null,
        "expiration": {
            "type": "afterDateTime",
            "endDateTime": "2023-02-07T19:56:00Z",
            "duration": null
        }
      },
      "ticketInfo": {
        "ticketNumber": null,
        "ticketSystem": null
      },
      "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
      "accessId": "member",
      "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
      "targetScheduleId": "2b5ed229-4072-478d-9504-a047ebd4b07d_member_6aacaee8-4089-4048-9510-3119367fc943"
    }
  ]
}
```

