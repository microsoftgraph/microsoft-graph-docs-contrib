---
title: "Create qrCode"
description: "Create a new qrCode object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 03/04/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create qrCode

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new qrCode object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "qrcodepinauthenticationmethod-patch-standardqrcode-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/qrcodepinauthenticationmethod-post-standardqrcode-permissions.md)]

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

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|expireDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|startDateTime|DateTimeOffset|**TODO: Add Description** Optional.|


## Response

If successful, this method returns a `201 Created` response code and a [qrCode](../resources/qrcode.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_qrcode_from_"
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
    "@odata.type": "microsoft.graph.qrCodeImageDetails"
    "binaryValue": "PHN2ZyB2ZXJzaW9uPSIxLjEiIGJhc2VQcm9maWxlPSJmdWxsIiBzaGFwZS1yZW5kZXJpbmc9ImNyaXNwRWRnZXMiIHdpZHRoPSIxOTUiIGhlaWdodD0iMTk1IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAw...",
    "version": 1,
    "errorCorrectionLevel": "l",
    "rawContent": "bXMtcXJwaW46djF8YWRtaW5AeHBmcTgub25taWNyb3NvZnQuY29tfDQ0ZjJmMDQwLWVhOWQtNDI4My05ZTdiLW..."
  }
}
```

