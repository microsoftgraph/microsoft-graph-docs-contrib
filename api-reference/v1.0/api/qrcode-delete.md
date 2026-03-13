---
title: "Delete qrCode"
description: "Delete a qrCode object."
author: "jpettere"
ms.date: 04/16/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Delete qrCode

Namespace: microsoft.graph

Delete a standard or temporary [qrCode](../resources/qrcode.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { 
  "blockType": "permissions", 
  "name": "qrcode_delete", 
  "requestUrls": ["DELETE /users/{id}/authentication/qrCodePinMethod/standardQRCode", "DELETE /users/{id}/authentication/qrCodePinMethod/temporaryQRCode"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/qrcode-delete-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

Delete your own QR Code.

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
```http
DELETE /me/authentication/qrCodePinMethod/standardQRCode
DELETE /me/authentication/qrCodePinMethod/temporaryQRCode
```

Delete another user's QR Code.

[!INCLUDE [authentication-methods-apis-users-selfservice](../includes/authentication-methods-apis-users-selfservice.md)]

<!-- { "blockType": "ignored" } -->
```http
DELETE /users/{id}/authentication/qrCodePinMethod/standardQRCode
DELETE /users/{id}/authentication/qrCodePinMethod/temporaryQRCode
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_qrcode"
}
-->
```http
DELETE https://graph.microsoft.com/v1.0/users/7c4999f7-9c25-4f8e-8b84-766eb28a1b49/authentication/qrCodePinMethod/standardQRCode
```

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

