---
title: "Update authentication method states"
description: "Update the properties of a user's authentication states, such as their sign-in preferences (system-preferred MFA) and per-user MFA state."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/22/2024
---

# Update authentication method states
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a user's authentication method states. Use this API to update the following information:

- A user's [signInPreferences (system-preferred MFA)](../resources/signInPreferences.md)
- A user's [strongAuthenticationRequirements (per-user MFA)](../resources/strongauthenticationrequirements.md)

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions to update system-preferred MFA

<!-- { "blockType": "permissions", "name": "authentication_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-update-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

### Permissions to update per-user MFA state

#### Permissions acting on self

<!-- { "blockType": "permissions", "name": "authentication_update_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-update-2-permissions.md)]

#### Permissions acting on others

<!-- { "blockType": "permissions", "name": "authentication_update_3" } -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-update-3-permissions.md)]

[!INCLUDE [rbac-authentication-methods-policy-apis-write](../includes/rbac-for-apis/rbac-authentication-methods-policy-apis-write.md)]

## HTTP request
To update the sign-in preferences (system-preferred MFA) for a user:
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /users/{id | userPrincipalName}/authentication/signInPreferences
```

To update the per-user multifactor authentication state for the signed-in user:
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /me/authentication/requirements
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

To update the per-user multifactor authentication state for a user:
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /users/{id | userPrincipalName}/authentication/requirements
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|isSystemPreferredAuthenticationMethodEnabled|Boolean|Indicates whether the credential preferences of the system are enabled.|
|userPreferredMethodForSecondaryAuthentication|userDefaultAuthenticationMethodType|The default second-factor method used by the user when signing in. If a user is enabled for system-preferred authentication, then this value is ignored except for a few scenarios where a user is authenticating via NPS extension or ADFS adapter. Possible values are `push`, `oath`, `voiceMobile`, `voiceAlternateMobile`, `voiceOffice`, `sms`, and `unknownFutureValue`|
|perUserMfaState|perUserMfaState|The user's state for per-user multifactor authentication. Possible values are `enforced`, `enabled` and `disabled`.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update a user's system-preferred MFA method

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authentication_signInPreferences"
}
-->
```http
PATCH https://graph.microsoft.com/beta/users/071cc716-8147-4397-a5ba-b2105951cc0b/authentication/signInPreferences
Content-Type: application/json

{
  "userPreferredMethodForSecondaryAuthentication": "oath"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-authentication-signinpreferences-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-authentication-signinpreferences-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-authentication-signinpreferences-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-authentication-signinpreferences-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-authentication-signinpreferences-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-authentication-signinpreferences-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-authentication-signinpreferences-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 2: Update a user's MFA state

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authentication_strongAuthenticationRequirements"
}
-->
```http
PATCH https://graph.microsoft.com/beta/users/071cc716-8147-4397-a5ba-b2105951cc0b/authentication/requirements
Content-Type: application/json

{
  "perUserMfaState": "disabled"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-authentication-strongauthenticationrequirements-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-authentication-strongauthenticationrequirements-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-authentication-strongauthenticationrequirements-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-authentication-strongauthenticationrequirements-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-authentication-strongauthenticationrequirements-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-authentication-strongauthenticationrequirements-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-authentication-strongauthenticationrequirements-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
