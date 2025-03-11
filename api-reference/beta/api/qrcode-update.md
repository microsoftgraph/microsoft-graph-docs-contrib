---
title: "Update qrCode"
description: "Update the properties of a qrCode object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 03/03/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update qrCode

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of standard qrCode object. The only editable property is expireDateTime of standard QR code.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

[!INCLUDE [rbac-authentication-methods-apis-read](../includes/rbac-for-apis/rbac-authentication-methods-apis-read.md)]
<!-- {
  "blockType": "permissions",
  "name": "qrcode-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/qrcode-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /users/{id}/authentication/qrcodepinmethod/standardQRCode
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|expireDateTime|DateTimeOffset|It is a mandatory attribute. QR code will be expired and becomes unusable based on set expireDateTime. Max. lifetime of standard QR code is upto 395 days and temporary QR code is upto 12 hours. It can be modified for standard QR code later upto max. lifetime but can't be modified for temporary QR code. |

## Response

If successful, this method returns a `201 Created` response code and an updated [qrCode](../resources/qrcode.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_qrcode"
}
-->
``` http
PATCH /users/{id}/authentication/qrcodepinmethod/standardQRCode
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCode",
  "expireDateTime": "2025-12-19T12:00:00Z",
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCode",
  "id": "36c47c06-22ff-4fbf-beee-42111bb8ce0c",
  "expireDateTime": "2025-12-19T12:00:00Z",
  "startDateTime": "2025-01-01T12:00:00Z",
  "createdDateTime": "2025-02-01T00:03:32.1768757Z",
  "lastUsedDateTime": "0001-01-01T00:00:00Z",
  "image": null
}
```
