---
title: "Get signInIdentifierBase"
description: "Read the properties and relationships of a signInIdentifierBase object."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get signInIdentifierBase

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [signInIdentifierBase](../resources/signinidentifierbase.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "signinidentifierbase-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/signinidentifierbase-get-permissions.md)]

[!INCLUDE [rbac-signin-id-apis](../includes/rbac-for-apis/rbac-signin-id-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/signInIdentifiers/{signInIdentifier-name}
```

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|signInIdentifier-name|String|The name of the sign-in identifier to retrieve. Supported values: `Email`, `UPN`, `Username`, `CustomUsername1`, `CustomUsername2`.|

## Optional query parameters

This method doesn't support OData query parameters to help customize the response. The sign-in identifier is retrieved directly through the URL path.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [signInIdentifierBase](../resources/signinidentifierbase.md) object in the response body.

## Examples

### Example 1: Get Email sign-in identifier

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_signinidentifierbase_email"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/signInIdentifiers/Email
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-signinidentifierbase-email-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-signinidentifierbase-email-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-signinidentifierbase-email-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-signinidentifierbase-email-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-signinidentifierbase-email-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-signinidentifierbase-email-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signInIdentifierBase"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.emailSignInIdentifier",
  "name": "Email",
  "isEnabled": true
}
```

### Example 2: Get custom username sign-in identifier

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request", 
  "name": "get_signinidentifierbase_custom"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/signInIdentifiers/CustomUsername1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-signinidentifierbase-custom-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-signinidentifierbase-custom-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-signinidentifierbase-custom-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-signinidentifierbase-custom-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-signinidentifierbase-custom-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-signinidentifierbase-custom-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signInIdentifierBase"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customUsernameSignInIdentifier",
  "name": "CustomUsername1", 
  "isEnabled": true,
  "validationRegex": "^[a-zA-Z]{4}\\d{5}$"
}
```
