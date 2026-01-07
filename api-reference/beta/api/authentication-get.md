---
title: "Get authentication states"
description: "Read the properties of a user's authentication method states, such as their sign-in preferences (system-preferred MFA) and per-user MFA state."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/22/2024
---

# Get authentication method states
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of a user's authentication states. Use this API to retrieve the following information:

- A user's [signInPreferences (system-preferred MFA)](../resources/signInPreferences.md)
- A user's [strongAuthenticationRequirements (per-user MFA)](../resources/strongauthenticationrequirements.md)

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions to read system-preferred MFA

<!-- { "blockType": "permissions", "name": "authentication_get", "requestUrls": ["GET /users/{id | userPrincipalName}/authentication/signInPreferences"] } -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-get-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

### Permissions to read per-user MFA state

#### Permissions acting on self

<!-- { 
  "blockType": "permissions", 
  "name": "authentication_get_2", 
  "requestUrls": ["GET /me/authentication/requirements"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-get-2-permissions.md)]

#### Permissions acting on other users

<!-- { 
  "blockType": "permissions", 
  "name": "authentication_get_3", 
  "requestUrls": ["GET /users/{id | userPrincipalName}/authentication/requirements"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-get-3-permissions.md)]

[!INCLUDE [rbac-authentication-methods-policy-apis-read](../includes/rbac-for-apis/rbac-authentication-methods-policy-apis-read.md)]

## HTTP request
To retrieve the sign-in preferences (system-preferred MFA) for a user:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /users/{id | userPrincipalName}/authentication/signInPreferences
```

To retrieve the per-user multifactor authentication state for the signed-in user:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /me/authentication/requirements
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

To retrieve the per-user multifactor authentication state for a user:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /users/{id | userPrincipalName}/authentication/requirements
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

For sign-in preferences: If successful, this method returns a `200 OK` response code and a [signInPreferences](../resources/signInPreferences.md) object in the response body.

## Examples

### Example 1: Get a user's system-preferred MFA method

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_authentication_signInPreferences"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/071cc716-8147-4397-a5ba-b2105951cc0b/authentication/signInPreferences
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-authentication-signinpreferences-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-authentication-signinpreferences-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-authentication-signinpreferences-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-authentication-signinpreferences-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-authentication-signinpreferences-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-authentication-signinpreferences-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-authentication-signinpreferences-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signInPreferences"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isSystemPreferredAuthenticationMethodEnabled": false,
  "userPreferredMethodForSecondaryAuthentication": "push"
}
```

### Example 2: Get a user's MFA state

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_authentication_strongAuthenticationRequirements"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/071cc716-8147-4397-a5ba-b2105951cc0b/authentication/requirements
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-authentication-strongauthenticationrequirements-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-authentication-strongauthenticationrequirements-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-authentication-strongauthenticationrequirements-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-authentication-strongauthenticationrequirements-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-authentication-strongauthenticationrequirements-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-authentication-strongauthenticationrequirements-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-authentication-strongauthenticationrequirements-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.strongAuthenticationRequirements"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "perUserMfaState": "enforced"
}
```
