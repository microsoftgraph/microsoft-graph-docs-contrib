---
title: "Get emailAuthenticationMethod"
description: "Read the properties and relationships of an emailAuthenticationMethod object."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 07/25/2025
---

# Get emailAuthenticationMethod
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a user's single [email authentication method](../resources/emailauthenticationmethod.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { 
  "blockType": "permissions", 
  "name": "emailauthenticationmethod_get", 
  "requestUrls": ["GET /users/{id | userPrincipalName}/authentication/emailMethods/{emailMethods-id}"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/emailauthenticationmethod-get-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

The ID of the email authentication method, referenced by `{emailMethods-id}`, is always `3ddfcfc8-9383-446f-83cc-3ab9be4be18f`.

Get details of your own email authentication method.

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
``` http
GET /me/authentication/emailMethods/{emailMethods-id}
```

Get details of your own or another user's email authentication method.

[!INCLUDE [authentication-methods-apis-users-selfservice](../includes/authentication-methods-apis-users-selfservice.md)]

<!-- { "blockType": "ignored" } -->
``` http
GET /users/{id | userPrincipalName}/authentication/emailMethods/{emailMethods-id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [emailAuthenticationMethod](../resources/emailauthenticationmethod.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_emailauthenticationmethod_1"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/authentication/emailMethods/3ddfcfc8-9383-446f-83cc-3ab9be4be18f
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-emailauthenticationmethod-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-emailauthenticationmethod-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-emailauthenticationmethod-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-emailauthenticationmethod-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-emailauthenticationmethod-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-emailauthenticationmethod-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-emailauthenticationmethod-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.emailAuthenticationMethod"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": {
      "id": "3ddfcfc8-9383-446f-83cc-3ab9be4be18f",
      "lastUsedDateTime": null,
      "emailAddress": "Kim@contoso.com"
  }
}
```

