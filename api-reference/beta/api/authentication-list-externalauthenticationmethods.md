---
title: "List externalAuthenticationMethod objects"
description: "Get a list of the externalAuthenticationMethod objects and their properties."
author: "rannderson"
ms.date: 04/01/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List externalAuthenticationMethod objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [externalAuthenticationMethod](../resources/externalauthenticationmethod.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions acting on self

<!-- {
  "blockType": "permissions",
  "name": "authentication-list-externalauthenticationmethods-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authentication-list-externalauthenticationmethods-permissions.md)]

### Permissions acting on other users

<!-- { "blockType": "permissions", "name": "authentication_list_externalauthenticationmethods_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-list-externalauthenticationmethods-2-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

To retrieve details of your own external authentication methods:

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
``` http
GET /me/authentication/externalAuthenticationMethods
```

To retrieve details of your own or another user's external authentication methods:

[!INCLUDE [authentication-methods-apis-users-selfservice](../includes/authentication-methods-apis-users-selfservice.md)]

<!-- { "blockType": "ignored" } -->
``` http
GET /users/{usersId}/authentication/externalAuthenticationMethods
```

## Optional query parameters

Not supported.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [externalAuthenticationMethod](../resources/externalauthenticationmethod.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_externalauthenticationmethod"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/authentication/externalAuthenticationMethods
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-externalauthenticationmethod-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-externalauthenticationmethod-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-externalauthenticationmethod-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-externalauthenticationmethod-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-externalauthenticationmethod-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-externalauthenticationmethod-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-externalauthenticationmethod-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalAuthenticationMethod"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.externalAuthenticationMethod",
      "id": "78381c69-811f-51f6-66ec-c2c2aa0e2b46",
      "createdDateTime": "2025-04-02T16:01:39",
      "configurationId": "26310fee-860b-4eab-8749-ab730dcf335e",
      "displayName": "Adatum"
    }
  ]
}
```

