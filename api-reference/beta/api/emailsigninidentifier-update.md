---
title: "Update emailSignInIdentifier"
description: "Update the properties of an emailSignInIdentifier object."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update emailSignInIdentifier

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [emailSignInIdentifier](../resources/emailsigninidentifier.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "emailsigninidentifier-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/emailsigninidentifier-update-permissions.md)]

[!INCLUDE [rbac-signin-id-apis](../includes/rbac-for-apis/rbac-signin-id-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/signInIdentifiers/Email
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
|name|String|The unique name identifier for this email sign-in identifier configuration. Always set to "Email" for this identifier type. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md). Required.|
|isEnabled|Boolean|Indicates whether this email sign-in identifier type is enabled for user authentication in the tenant. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md). Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [emailSignInIdentifier](../resources/emailsigninidentifier.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_emailsigninidentifier"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identity/signInIdentifiers/Email
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.emailSignInIdentifier",
  "name": "Email",
  "isEnabled": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-emailsigninidentifier-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-emailsigninidentifier-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-emailsigninidentifier-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-emailsigninidentifier-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-emailsigninidentifier-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-emailsigninidentifier-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.emailSignInIdentifier"
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
