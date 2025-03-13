---
title: "Create qrCode"
description: "Create a new qrCode object."
author: Aanjusingh, minatoruan
ms.date: 03/04/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create a Standard or Temporary QR code

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new standard or temporary qrCode object. A user can have only one active standard or temporary QR code. To create a new standard or temporary QR code, delete existing active standard or temporary QR code.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

[!INCLUDE [rbac-authentication-methods-apis-read](../includes/rbac-for-apis/rbac-authentication-methods-apis-read.md)]

<!-- {
  "blockType": "permissions",
  "name": "qrcodepinauthenticationmethod-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/qrcodepinauthenticationmethod-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /users/{id}/authentication/qrcodepinmethod/standardQRCode
PATCH /users/{id}/authentication/qrcodepinmethod/temporaryQRCode
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [qrCode](../resources/qrcode.md) object.

You can specify the following properties when creating a **qrCode**.

|Property|Type|Description|
|:---|:---|:---|
|expireDateTime|DateTimeOffset|It is a mandatory request value. QR code will be expired and becomes unusable based on set expireDateTime. Max. lifetime of standard QR code is upto 395 days and temporary QR code is upto 12 hours. It can be modified for standard QR code later upto max. lifetime but can't be modified for temporary QR code.|
|startDateTime|DateTimeOffset|It is a mandatory request value. It determines when QR code will become active.|


## Response

If successful, this method returns a `201 Created` response code and a [qrCode](../resources/qrcode.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_qrcode_from_",
  "@odata.type": "microsoft.graph.qrCode"
}
-->
``` http
PATCH /users/{id}/authentication/qrcodepinmethod/standardQRCode
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCode",
  "expireDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
}
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
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCode",
  "id": "44f2f040-ea9d-4283-9e7b-b63ddae391a9",
  "expireDateTime": "2025-12-19T12:00:00Z",
  "startDateTime": "2025-01-01T12:00:00Z",
  "createdDateTime": "2025-03-04T21:27:46.9771036Z",
  "lastUsedDateTime": "0001-01-01T00:00:00Z",
  "image": {
    "binaryValue": "PHN2ZyB2ZXJzaW9uPSIxLjEiIGJhc2VQcm9maWxlPSJmdWxsIiBzaGFwZS1yZW5kZXJpbmc9ImNyaXNwRWRnZXMiIHdpZHRoPSIxOTUiIGhlaWdodD0iMTk1IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAw...",
    "version": 1,
    "errorCorrectionLevel": "l",
    "rawContent": "bXMtcXJwaW46djF8YWRtaW5AeHBmcTgub25taWNyb3NvZnQuY29tfDQ0ZjJmMDQwLWVhOWQtNDI4My05ZTdiLW..."
  }
}
```

