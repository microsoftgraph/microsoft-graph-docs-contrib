---
title: "List assignmentScheduleInstances"
description: "Get a list of the privilegedAccessGroupAssignmentScheduleInstance objects and their properties."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List assignmentScheduleInstances
Namespace: microsoft.graph

Get a list of the [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "privilegedaccessgroup_list_assignmentscheduleinstances" } -->
[!INCLUDE [permissions-table](../includes/permissions/privilegedaccessgroup-list-assignmentscheduleinstances-permissions.md)]

[!INCLUDE [rbac-pim-groups-apis-read-assignmentschedules](../includes/rbac-for-apis/rbac-pim-groups-apis-read-assignmentschedules.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/assignmentScheduleInstances?$filter=groupId eq '{groupId}'
GET /identityGovernance/privilegedAccess/group/assignmentScheduleInstances?$filter=principalId eq '{principalId}'
```

## Query parameters
This method requires the `$filter` (`eq`) query parameter to scope the request to a **principalId** or a **groupId**.

This method supports the `$select`, `$filter`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_privilegedaccessgroupassignmentscheduleinstance"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/privilegedAccess/group/assignmentScheduleInstances?$filter=groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d' 
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-privilegedaccessgroupassignmentscheduleinstance-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-privilegedaccessgroupassignmentscheduleinstance-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-privilegedaccessgroupassignmentscheduleinstance-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-privilegedaccessgroupassignmentscheduleinstance-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-privilegedaccessgroupassignmentscheduleinstance-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-privilegedaccessgroupassignmentscheduleinstance-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-privilegedaccessgroupassignmentscheduleinstance-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-privilegedaccessgroupassignmentscheduleinstance-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegedAccessGroupAssignmentScheduleInstance)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/privilegedAccess/group/assignmentScheduleInstances",
    "value": [
        {
            "id": "2b5ed229-4072-478d-9504-a047ebd4b07d_member_365163ce-df68-40b8-a782-1824c9eb7bcc",
            "principalId": "6be4b305-b75e-4efc-bfcc-31bd3b53a5f8",
            "startDateTime": "2023-09-29T15:48:00.273Z",
            "endDateTime": "2024-03-27T15:47:19.653Z",
            "assignmentType": "Assigned",
            "accessId": "member",
            "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
            "memberType": "Direct",
            "assignmentScheduleId": "2b5ed229-4072-478d-9504-a047ebd4b07d_member_f13739ce-d5f9-4a5a-845a-22fbccf0e14f"
        },
        {
            "id": "2b5ed229-4072-478d-9504-a047ebd4b07d_member_dce168aa-2909-4f10-8cc9-c98e82d8b507",
            "principalId": "56f2d212-e49c-42e3-8298-0188e5bef094",
            "startDateTime": null,
            "endDateTime": null,
            "assignmentType": "Assigned",
            "accessId": "member",
            "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
            "memberType": "Direct",
            "assignmentScheduleId": "2b5ed229-4072-478d-9504-a047ebd4b07d_member_dce168aa-2909-4f10-8cc9-c98e82d8b507"
        }
    ]
}
```

