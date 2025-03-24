---
title: "Update qrCode"
description: "Update the properties of a qrCode object."
author: "AanjuSingh"
ms.date: 03/03/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create or Update a QR code

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use this api to create a standard or temporay QR code. You can only update standard QR code and not temporary QR code. Only  **expireDateTime** property can be updated for standard QR code.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "qrcode-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/qrcode-update-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read](../includes/rbac-for-apis/rbac-authentication-methods-apis-read.md)]

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

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The date and time when the QR code becomes available to use.|
|expireDateTime|DateTimeOffset| The QR code expires and becomes unusable based on this property's value. This property can be modified for a standard QR code up to the maximum lifetime of 395 days from the **startDateTime** value. This property can't be modified for a temporary QR code. |

## Response

If successful, this method returns a `201 Created` response code and an updated [qrCode](../resources/qrcode.md) object in the response body.

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
PATCH https://graph.microsoft.com/beta/users/7c4999f7-9c25-4f8e-8b84-766eb28a1b49/authentication/qrcodepinmethod/standardQRCode
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCode",
  "expireDateTime": "2025-12-19T12:00:00Z",
  "startDateTime": "2025-01-01T12:00:00Z",
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
    "@odata.type": "#microsoft.graph.qrCodeImageDetails",
    "binaryValue": "SGVsbG9Xb3JsZCE=",
    "version": 1,
    "errorCorrectionLevel": "l",
    "rawContent": "SGVsbG9Xb3JsZCEyTXlSYXdDb250ZW50"
  }
}
```
