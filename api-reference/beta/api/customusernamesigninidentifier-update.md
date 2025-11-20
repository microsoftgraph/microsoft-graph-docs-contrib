---
title: "Update customUsernameSignInIdentifier"
description: "Update the properties of a customUsernameSignInIdentifier object."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update customUsernameSignInIdentifier

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [customUsernameSignInIdentifier](../resources/customusernamesigninidentifier.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customusernamesigninidentifier-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customusernamesigninidentifier-update-permissions.md)]

[!INCLUDE [rbac-signin-id-apis](../includes/rbac-for-apis/rbac-signin-id-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/signInIdentifiers/{signInIdentifier-name}
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
|name|String|The unique name identifier for this custom username sign-in identifier configuration. Possible values include: `Email`, `UPN`, `Username`, `CustomUsername1`, `CustomUsername2`. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md). Required.|
|isEnabled|Boolean|Indicates whether this custom username sign-in identifier type is enabled for user authentication in the tenant. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md). Required.|
|validationRegex|String|The regular expression pattern used to validate custom usernames. The pattern must be a valid regex, can't exceed 60 characters in length, and can't be an email-supported regex pattern. Required.|


## Response

If successful, this method returns a `200 OK` response code and an updated [customUsernameSignInIdentifier](../resources/customusernamesigninidentifier.md) object in the response body.

## Examples

### Request

The following example shows a request that enables CustomUsername1 as a sign-in identifier, with a regex for strings that start with four letters (a-z), followed by one digit (0-9), and ends with five characters.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_customusernamesigninidentifier"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identity/signInIdentifiers/CustomUsername1
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customUsernameSignInIdentifier",
  "name": "CustomUsername1",
  "isEnabled": true,
  "validationRegex": "^[a-zA-Z]{4}\\d{5}$"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-customusernamesigninidentifier-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-customusernamesigninidentifier-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-customusernamesigninidentifier-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-customusernamesigninidentifier-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-customusernamesigninidentifier-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-customusernamesigninidentifier-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customUsernameSignInIdentifier"
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
