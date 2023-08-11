---
title: "List sponsors"
description: "Get a user's sponsors."
ms.localizationpriority: medium
author: "sadia353"
ms.prod: "users"
doc_type: apiPageType
---

# List sponsors

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a user's sponsors. Sponsors are users and groups that are responsible for this guest user's privileges in the tenant and for keeping the guest user's information and access up to date.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                    |
| :------------------------------------- | :----------------------------------------------------------------------------- |
| Delegated (work or school account)     | User.Read.All, User.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                                 |
| Application                            | User.Read.All, User.ReadWrite.All|

[!INCLUDE [limited-info](../../includes/limited-info.md)]

## HTTP request

Get sponsors.
<!-- { "blockType": "ignored" } -->
```http
GET /users/{id | userPrincipalName}/sponsors
```

## Optional query parameters

This method supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response. You can specify `$select` inside `$expand` to select the individual sponsor's properties: `$expand=sponsors($select=id,displayName)`.

## Request headers

| Header           | Value                                                                                          |
| :--------------- | :--------------------------------------------------------------------------------------------- |
| Authorization    | Bearer {token}. Required.                                                                      |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [user](../resources/user.md) and [group](../resources/group.md) objects in the response body.

## Examples

### Example: Get sponsors

The following example shows a request to get the sponsors.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sponsors"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/025e5e3e-e5b7-4eb4-ba1f-4e5b0579f1a2/sponsors
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-sponsors-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-sponsors-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-sponsors-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-sponsors-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-sponsors-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-sponsors-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-sponsors-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.
>**Note**: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} 
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
"@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
    "value": [
        {
            "@odata.type": "#microsoft.graph.user",
            "id": "263a1289-8282-4bf7-91f7-550d9bba8c02",
            "displayName": "Sara Davis",
            "jobTitle": "Finance VP",
            "mail": "SaraD@contoso.onmicrosoft.com",
            "userPrincipalName": "SaraD@contoso.onmicrosoft.com"
        },
        {
            "@odata.type": "#microsoft.graph.group",
            "id": "08143e93-989e-4771-ac78-803bcdac52d2",
            "mail": "groupforsponsors@contoso.com",
            "mailEnabled": true,
            "mailNickname": "groupforsponsors",
            "securityEnabled": true
        }
    ]
}
```
