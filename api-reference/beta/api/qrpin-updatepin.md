---
title: "qrPin: updatePin"
description: "Update your own qrPin."
author: "AanjuSingh"
ms.date: 04/16/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# qrPin: updatePin

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the [qrPin](../resources/qrpin.md). Any user can update their own [qrPin](../resources/qrpin.md) without belonging to any administrator role.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { 
  "blockType": "permissions", 
  "name": "qrpin_updatepin", 
  "requestUrls": ["PATCH /users/{usersId}/authentication/qrCodePinMethod/pin/updatepin"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/qrpin-updatepin-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

Update your own QR Code PIN.

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
```http
PATCH /me/authentication/qrCodePinMethod/pin/updatepin
```

Update another user's QR Code PIN.

[!INCLUDE [authentication-methods-apis-users-selfservice](../includes/authentication-methods-apis-users-selfservice.md)]

<!-- { "blockType": "ignored" } -->
```http
PATCH /users/{usersId}/authentication/qrCodePinMethod/pin/updatepin
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|currentPin|String|the code of current [qrPin](../resources/qrpin.md).|
|newPin|String|the code of new [qrPin](../resources/qrpin.md).|


## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "qrpinthis.updatepin"
}
-->
```http
PATCH https://graph.microsoft.com/beta/me/authentication/qrCodePinMethod/pin/updatePin
Content-Type: application/json

{
  "currentPin": "09599786",
  "newPin": "56745755"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/qrpinthisupdatepin-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
 
The following example shows the response.
 
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

