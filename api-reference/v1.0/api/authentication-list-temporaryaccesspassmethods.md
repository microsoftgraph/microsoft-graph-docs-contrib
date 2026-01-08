---
title: "List temporaryAccessPassMethods"
description: "Get a list of the temporaryAccessPassAuthenticationMethod objects for a user."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 07/31/2025
---

# List temporaryAccessPassMethods
Namespace: microsoft.graph

Retrieve a list of a user's [temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) objects and their properties. This API will only return a single object in the collection as a user can have only one Temporary Access Pass method.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { 
  "blockType": "permissions", 
  "name": "authentication_list_temporaryaccesspassmethods", 
  "requestUrls": ["GET /users/{id | userPrincipalName}/authentication/temporaryAccessPassMethods"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-list-temporaryaccesspassmethods-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

Get details of your own temporary access pass (TAP) authentication method.

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
```http
GET /me/authentication/temporaryAccessPassMethods
```

Get details of your own or another user's temporary access pass (TAP) authentication method.

[!INCLUDE [authentication-methods-apis-users-selfservice](../includes/authentication-methods-apis-users-selfservice.md)]

<!-- { "blockType": "ignored" } -->
``` http
GET /users/{id | userPrincipalName}/authentication/temporaryAccessPassMethods
```

## Optional query parameters
Not supported.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request 
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) objects in the response body.  This call will only return a single object because only one **temporaryAccessPassAuthenticationMethod** can be set on users.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_temporaryaccesspassauthenticationmethod"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/071cc716-8147-4397-a5ba-b2105951cc0b/authentication/temporaryAccessPassMethods
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-temporaryaccesspassauthenticationmethod-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-temporaryaccesspassauthenticationmethod-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-temporaryaccesspassauthenticationmethod-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-temporaryaccesspassauthenticationmethod-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-temporaryaccesspassauthenticationmethod-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-temporaryaccesspassauthenticationmethod-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-temporaryaccesspassauthenticationmethod-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.temporaryAccessPassAuthenticationMethod)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('071cc716-8147-4397-a5ba-b2105951cc0b')/authentication/temporaryAccessPassMethods",
     "value": [
        {
            "id": "bdaede67-61e0-4349-9347-d2d6afd84009",
            "temporaryAccessPass": null,
            "createdDateTime": "2022-06-06T16:43:04.6438213Z",
            "startDateTime": "2022-06-06T16:48:03.027Z",
            "lifetimeInMinutes": 60,
            "isUsableOnce": false,
            "isUsable": false,
            "methodUsabilityReason": "NotYetValid"
        }
    ]
}
```
