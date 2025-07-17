---
title: "passwordAuthenticationMethod: resetPassword"
description: "Reset a user's password"
ms.localizationpriority: medium
author: "zhvolosh"
ms.reviewer: intelligentaccesspm
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 11/21/2024
---

# passwordAuthenticationMethod: resetPassword

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Initiate a reset for the password associated with a [password authentication method](../resources/passwordauthenticationmethod.md) object. This can only be done by an administrator with appropriate permissions and can't be performed on a user's own account.

To reset a user's password in in Azure AD B2C, use the [Update user](../api/user-update.md) API operation and update the **passwordProfile** > **forceChangePasswordNextSignIn** object.

This flow writes the new password to Microsoft Entra ID and pushes it to on-premises Active Directory if configured using password writeback. The admin can either provide a new password or have the system generate one. The user is prompted to change their password on their next sign in.

This reset is a long-running operation and will return a **Location** header with a link where the caller can periodically check for the status of the reset operation.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationmethod_resetpassword" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationmethod-resetpassword-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write](../includes/rbac-for-apis/rbac-authentication-methods-apis-write.md)]

Admins with *User Administrator*, *Helpdesk Administrator*, or *Password Administrator* roles can also reset passwords for non-admin users and a limited set of admin roles as defined in [Who can reset passwords](/graph/api/resources/users#who-can-reset-passwords).

## HTTP request

The ID of the password authentication method, referenced by `{passwordMethods-id}`, is always `28c10230-6103-485e-b985-444c60001490`.
<!-- { "blockType": "ignored" } -->

```http
POST /users/{id | userPrincipalName}/authentication/methods/{passwordMethods-id}/resetPassword
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|newPassword|String|The new password. Required for tenants with hybrid password scenarios. If omitted for a cloud-only password, the system returns a system-generated password. This is a unicode string with no other encoding. It is validated against the tenant's banned password system before acceptance, and must adhere to the tenant's cloud and/or on-premises password requirements.|

## Response

If the caller provided a password in the request body, this method returns a `202 Accepted` response code and no response body. The response might also include a **Location** header with a URL to check the status of the [reset operation](longrunningoperation-get.md).

If the caller used the system-generated password option, this method returns a `202 Accepted` response code and a [passwordResetResponse](../resources/passwordresetresponse.md) object in the response body which contains a Microsoft-generated password. The response might also include a **Location** header with a URL to check the status of the [reset operation](longrunningoperation-get.md).

### Response headers

| Name        | Description     |
|:------------|:----------------|
|Location     | URL to call to check the status of the operation. Required.|
|Retry-after  | Duration in seconds. Optional.|

## Examples

### Example 1: User-submitted password

The following example shows how to call this API when the caller submits a password.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "passwordauthenticationmethod_resetpassword_adminprovided"
}-->

```http
POST https://graph.microsoft.com/beta/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0/authentication/methods/28c10230-6103-485e-b985-444c60001490/resetPassword
Content-type: application/json

{
    "newPassword": "Cuyo5459"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/passwordauthenticationmethod-resetpassword-adminprovided-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/passwordauthenticationmethod-resetpassword-adminprovided-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/passwordauthenticationmethod-resetpassword-adminprovided-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/passwordauthenticationmethod-resetpassword-adminprovided-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/passwordauthenticationmethod-resetpassword-adminprovided-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/passwordauthenticationmethod-resetpassword-adminprovided-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/passwordauthenticationmethod-resetpassword-adminprovided-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/passwordauthenticationmethod-resetpassword-adminprovided-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
Content-type: application/json
Location: https://graph.microsoft.com/beta/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0/authentication/operations/88e7560c-9ebf-435c-8089-c3998ac1ec51?aadgdc=DUB02P&aadgsu=ssprprod-a

```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "passwordAuthenticationMethod: resetPassword",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

### Example 2: System-generated password

The following example shows how to call this API when the caller doesn't submit a password.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "passwordauthenticationmethod_resetpassword_systemgenerated"
}-->

```http
POST https://graph.microsoft.com/beta/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0/authentication/methods/28c10230-6103-485e-b985-444c60001490/resetPassword

{

}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/passwordauthenticationmethod-resetpassword-systemgenerated-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/passwordauthenticationmethod-resetpassword-systemgenerated-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/passwordauthenticationmethod-resetpassword-systemgenerated-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/passwordauthenticationmethod-resetpassword-systemgenerated-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/passwordauthenticationmethod-resetpassword-systemgenerated-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/passwordauthenticationmethod-resetpassword-systemgenerated-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/passwordauthenticationmethod-resetpassword-systemgenerated-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/passwordauthenticationmethod-resetpassword-systemgenerated-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.passwordResetResponse"
} -->

```http
HTTP/1.1 202 ACCEPTED
Location: https://graph.microsoft.com/beta/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0/authentication/operations/77bafe36-3ac0-4f89-96e4-a4a5a48da851?aadgdc=DUB02P&aadgsu=ssprprod-a
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.passwordResetResponse",
    "newPassword": "Cuyo5459"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "passwordAuthenticationMethod: resetPassword",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
