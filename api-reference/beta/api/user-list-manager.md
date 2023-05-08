---
title: "List manager"
description: "Get user's manager. Returns the user or contact assigned as the user's manager."
ms.localizationpriority: medium
author: "yyuank"
ms.prod: "users"
doc_type: apiPageType
---

# List manager

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns the user or organizational contact assigned as the user's manager. Optionally, you can expand the manager's chain up to the root node.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                    |
| :------------------------------------- | :----------------------------------------------------------------------------- |
| Delegated (work or school account)     | User.Read.All, User.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                                 |
| Application                            | User.Read.All, User.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |

[!INCLUDE [limited-info](../../includes/limited-info.md)]

## HTTP request

Get the manager:
<!-- { "blockType": "ignored" } -->
```http
GET /me/manager
GET /users/{id | userPrincipalName}/manager
```

Get the management chain:
<!-- { "blockType": "ignored" } -->
```http
GET /users?$expand=manager
GET /users/{id | userPrincipalName}/?$expand=manager($levels=n)
```

## Optional query parameters

This method supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.  

>**Note:**
>
> + The `n` value of `$levels` can be `max` (to return all managers) or a number between 1 and 1000.
> + When the `$levels` parameter is not specified, only the immediate manager is returned.
> + You can specify `$select` inside `$expand` to select the individual manager's properties: `$expand=manager($levels=max;$select=id,displayName)`.
> + `$levels` parameter is only supported on a single user (`/users/{id}` or `me` endpoints) and not on the entire list of users.
> + `$levels` requires the **ConsistencyLevel** header set to `eventual`. For more information about the use of **ConsistencyLevel**, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

## Request headers

| Header           | Value                                                                                          |
| :--------------- | :--------------------------------------------------------------------------------------------- |
| Authorization    | Bearer {token}. Required.                                                                      |
| ConsistencyLevel | eventual. Required when the request includes the `$levels=n` in the `$expand` query parameter. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [user](../resources/user.md) object in the response body.

## Examples

### Example 1: Get manager

The following example shows a request to get the manager.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_manager_2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{id|userPrincipalName}/manager
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-manager-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-manager-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-manager-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-manager-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-manager-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-manager-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.
>**Note**: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": false
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "7d54cb02-aaa3-4016-9f9c-a4b49422dd9b",
  "displayName": "Sara Davis",
  "jobTitle": "Finance VP",
  "mail": "SaraD@contoso.onmicrosoft.com",
  "userPrincipalName": "SaraD@contoso.onmicrosoft.com"
}
```

### Example 2: Get manager chain up to the root level

The following example shows a request to get the manager chain up to the root level.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_transitive_managers"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me?$expand=manager($levels=max;$select=id,displayName)&$select=id,displayName
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-transitive-managers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-transitive-managers-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-transitive-managers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-transitive-managers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-transitive-managers-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-transitive-managers-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response. Transitive managers are displayed hierarchically.

>**Note**: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": false
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "a97733ce-92a4-4e7e-8d45-8e1f3e6a69d8",
  "displayName": "Individual Contributor",
  "manager": {
    "id": "7d54cb02-aaa3-4016-9f9c-a4b49422dd9b",
    "displayName": "Alex Wilber",
    "manager": {
      "id": "343a3f95-377c-47a9-b697-480487bfcdf7",
      "displayName": "Bianca Pisani",
      "manager": {
        "id": "8e07b731-5ba7-4081-b482-15e6eca35c45",
        "displayName": "Patti Fernandez"
      }
    }
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List directReports",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
