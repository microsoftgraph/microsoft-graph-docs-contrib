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

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                             |
| :------------------------------------- | :---------------------------------------------------------------------- |
| Delegated (work or school account)     | User.ReadBasic.All, Directory.Read.All, AppRoleAssignment.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                          |
| Application                            | Directory.Read.All, AppRoleAssignment.ReadWrite.All                     |

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
This method supports the `$count`, `$expand`, `$filter`, `$orderBy`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. The queries are supported only when you use the **ConsistencyLevel** header set to `eventual`. For more information, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
| ConsistencyLevel | eventual. This header is required when calling this API. For more information about the use of **ConsistencyLevel**, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries). |

## Request body
Do not supply a request body for this method.

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

---

### Response
The following is an example of the response

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
