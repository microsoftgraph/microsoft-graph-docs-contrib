---
title: "Delete passwordlessMicrosoftAuthenticatorAuthenticationMethod"
description: "Deletes a passwordlessMicrosoftAuthenticatorAuthenticationMethod object."
author: "mjsantani"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 04/04/2024
---

# Delete passwordlessMicrosoftAuthenticatorAuthenticationMethod (deprecated)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a user's [Microsoft Authenticator Passwordless Phone Sign-in method](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) object.

> [!CAUTION]
> The Microsoft Authenticator Passwordless Phone Sign-in method API is deprecated and will stop returning results on December 31, 2020. Please use the new [Microsoft Authenticator Authentication Method](../resources/microsoftAuthenticatorAuthenticationMethod.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions acting on self

<!-- { "blockType": "permissions", "name": "passwordlessmicrosoftauthenticatorauthenticationmethod_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/passwordlessmicrosoftauthenticatorauthenticationmethod-delete-permissions.md)]

### Permissions acting on other users

<!-- { "blockType": "permissions", "name": "passwordlessmicrosoftauthenticatorauthenticationmethod_delete_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/passwordlessmicrosoftauthenticatorauthenticationmethod-delete-2-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

Remove a Microsoft Authenticator Passwordless Phone Sign-in authentication method from your own account. For a signed-in user to update their own authentication method, they must have satisfied a multi-factor authentication requirement during sign in.
<!-- { "blockType": "ignored" } -->
```http
DELETE /me/authentication/passwordlessMicrosoftAuthenticatorMethods/{id}
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

Remove a Microsoft Authenticator Passwordless Phone Sign-in authentication method from another user's account.
<!-- { "blockType": "ignored" } -->
```http
DELETE /users/{id | userPrincipalName}/authentication/passwordlessMicrosoftAuthenticatorMethods/{id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_passwordlessmicrosoftauthenticatorauthenticationmethod",
  "sampleKeys": ["kim@contoso.com", "R18B3t8Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJSM1"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/users/kim@contoso.com/authentication/passwordlessMicrosoftAuthenticatorMethods/R18B3t8Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJSM1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-passwordlessmicrosoftauthenticatorauthenticationmethod-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-passwordlessmicrosoftauthenticatorauthenticationmethod-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-passwordlessmicrosoftauthenticatorauthenticationmethod-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-passwordlessmicrosoftauthenticatorauthenticationmethod-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-passwordlessmicrosoftauthenticatorauthenticationmethod-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-passwordlessmicrosoftauthenticatorauthenticationmethod-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-passwordlessmicrosoftauthenticatorauthenticationmethod-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-passwordlessmicrosoftauthenticatorauthenticationmethod-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

