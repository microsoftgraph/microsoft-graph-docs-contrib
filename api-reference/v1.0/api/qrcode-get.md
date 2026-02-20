---
title: "Get qrCode"
description: "Read the properties and relationships of a qrCode object."
author: "jpettere"
ms.date: 04/16/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get qrCode

Namespace: microsoft.graph

Read the properties and relationships of a [qrCode](../resources/qrcode.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { 
  "blockType": "permissions", 
  "name": "qrcode_get", 
  "requestUrls": ["GET /users/{id}/authentication/qrCodePinMethod/standardQRCode", "GET /users/{id}/authentication/qrCodePinMethod/temporaryQRCode"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/qrcode-get-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

Retrieve your own QR Code.

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
```http
GET /me/authentication/qrCodePinMethod/standardQRCode
GET /me/authentication/qrCodePinMethod/temporaryQRCode
```

Retrieve another user's QR Code.

[!INCLUDE [authentication-methods-apis-users-selfservice](../includes/authentication-methods-apis-users-selfservice.md)]

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id}/authentication/qrCodePinMethod/standardQRCode
GET /users/{id}/authentication/qrCodePinMethod/temporaryQRCode
```

## Optional query parameters

This method does not support OData query parameters.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [qrCode](../resources/qrcode.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_qrcode"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/7c4999f7-9c25-4f8e-8b84-766eb28a1b49/authentication/qrCodePinMethod/standardQRCode
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.qrCode"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.qrCode",
    "id": "cb960eac-7a22-1979-ec68-1ec73264ae8d",
    "expireDateTime": "2025-01-22T12:00:00Z",
    "startDateTime": "2024-02-01T00:00:00Z",
    "createdDateTime": "2024-02-01T19:58:51.2210909Z",
    "lastUsedDateTime": "0001-01-01T00:00:00Z",
    "image": null
  }
}
```

