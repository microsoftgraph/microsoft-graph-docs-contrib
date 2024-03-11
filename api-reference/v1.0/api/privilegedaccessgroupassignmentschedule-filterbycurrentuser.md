---
title: "privilegedAccessGroupAssignmentSchedule: filterByCurrentUser"
description: "In PIM for groups, retrieve the schedules for membership or ownership assignments for the calling principal to groups that are governed by PIM."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# privilegedAccessGroupAssignmentSchedule: filterByCurrentUser
Namespace: microsoft.graph

In PIM for groups, retrieve the schedules for membership or ownership assignments for the calling principal to groups that are governed by PIM.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "privilegedaccessgroupassignmentschedule_filterbycurrentuser" } -->
[!INCLUDE [permissions-table](../includes/permissions/privilegedaccessgroupassignmentschedule-filterbycurrentuser-permissions.md)]

[!INCLUDE [rbac-pim-groups-apis-read-assignmentschedules](../includes/rbac-for-apis/rbac-pim-groups-apis-read-assignmentschedules.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/assignmentSchedules/filterByCurrentUser(on='parameterValue')
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|on|assignmentScheduleFilterByCurrentUserOptions|Filter used to query assignmentSchedules. The possible values are `principal`, `unknownFutureValue`. Required.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "privilegedaccessgroupassignmentschedulethis.filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/privilegedAccess/group/assignmentSchedules/filterByCurrentUser(on='principal')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/privilegedaccessgroupassignmentschedulethisfilterbycurrentuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/privilegedaccessgroupassignmentschedulethisfilterbycurrentuser-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/privilegedaccessgroupassignmentschedulethisfilterbycurrentuser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/privilegedaccessgroupassignmentschedulethisfilterbycurrentuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/privilegedaccessgroupassignmentschedulethisfilterbycurrentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/privilegedaccessgroupassignmentschedulethisfilterbycurrentuser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/privilegedaccessgroupassignmentschedulethisfilterbycurrentuser-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/privilegedaccessgroupassignmentschedulethisfilterbycurrentuser-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegedAccessGroupAssignmentSchedule)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/privilegedAccess/group/assignmentScheduleRequests/$entity",
    "value": [
    {
      "@odata.type": "#microsoft.graph.privilegedAccessGroupAssignmentSchedule",
      "id": "lAPpYvVpN0KRkAEhdxReEJ2SvT9WjGJEhR4OuaezoqU-1",
      "scheduleInfo": {
          "startDateTime": "2023-01-11T19:31:50.5613964Z",
          "recurrence": null,
          "expiration": {
              "type": "noExpiration",
              "endDateTime": null,
              "duration": null
          }
      },
      "createdDateTime": null,
      "modifiedDateTime": null,
      "createdUsing": null,
      "status": "Provisioned",
      "accessId": "member",
      "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
      "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
      "memberType": "Direct",
      "assignmentType": "Assigned"
    }
  ]
}
```

