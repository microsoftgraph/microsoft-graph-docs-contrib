---
title: "List appRoleAssignedResources"
description: "Get the service principals to which the user has an app role assignment either directly or through group membership."
author: "eringreenlee"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# List appRoleAssignedResources
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the service principals to which the user has an app role assignment either directly or through group membership.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_list_approleassignedresources" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-list-approleassignedresources-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/appRoleAssignedResources
ConsistencyLevel: eventual

GET /users/{userId}/appRoleAssignedResources
ConsistencyLevel: eventual
```

## Optional query parameters
This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. The queries are supported only when you use the **ConsistencyLevel** header set to `eventual`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| ConsistencyLevel | eventual. This header is required when calling this API. For more information about the use of **ConsistencyLevel**, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries). |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [servicePrincipal](../resources/serviceprincipal.md) objects in the response body. If you don't set the **ConsistencyLevel** header to `eventual`, this API returns  `404 Not Found error`.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_approleassignedresources_users"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/appRoleAssignedResources?$select=displayName,accountEnabled,servicePrincipalType,signInAudience
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-approleassignedresources-users-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-approleassignedresources-users-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-approleassignedresources-users-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-approleassignedresources-users-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-approleassignedresources-users-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-approleassignedresources-users-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-approleassignedresources-users-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-approleassignedresources-users-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "0b372abb-b32e-459c-b263-b81ab6448df1",
      "accountEnabled":true,
      "displayName":"amasf",
      "servicePrincipalType":"Application",
      "signInAudience":"AzureADMyOrg"
    }
  ]
}
```
