---
title: "List roleEligibilityScheduleInstances"
description: "Get the instances of role eligibilities."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List roleEligibilityScheduleInstances
Namespace: microsoft.graph

Get the instances of role eligibilities.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "rbacapplication_list_roleeligibilityscheduleinstances" } -->
[!INCLUDE [permissions-table](../includes/permissions/rbacapplication-list-roleeligibilityscheduleinstances-permissions.md)]

[!INCLUDE [rbac-pim-entra-roles-apis](../includes/rbac-for-apis/rbac-pim-entra-roles-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/roleEligibilityScheduleInstances
```

## Optional query parameters
This method supports the `$select`, `$filter`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedroleeligibilityscheduleinstance"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/roleManagement/directory/roleEligibilityScheduleInstances
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedroleeligibilityscheduleinstance-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-unifiedroleeligibilityscheduleinstance-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedroleeligibilityscheduleinstance-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedroleeligibilityscheduleinstance-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedroleeligibilityscheduleinstance-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedroleeligibilityscheduleinstance-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedroleeligibilityscheduleinstance-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedroleeligibilityscheduleinstance-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleEligibilityScheduleInstance)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#roleManagement/directory/roleEligibilityScheduleInstances",
    "value": [
        {
            "id": "8MYkhImhnkm70CbBdTyW1BbHHAdHgZdDpbqyEFlRzAs-1-e",
            "principalId": "071cc716-8147-4397-a5ba-b2105951cc0b",
            "roleDefinitionId": "8424c6f0-a189-499e-bbd0-26c1753c96d4",
            "directoryScopeId": "/",
            "appScopeId": null,
            "startDateTime": "2022-04-12T14:44:50.287Z",
            "endDateTime": "2024-04-10T00:00:00Z",
            "memberType": "Direct",
            "roleEligibilityScheduleId": "77f71919-62f3-4d0c-9f88-0a0391b665cd"
        }
    ]
}
```

