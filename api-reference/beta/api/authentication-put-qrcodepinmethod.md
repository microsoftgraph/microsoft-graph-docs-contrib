---
title: "Create qrCodePinAuthenticationMethod"
description: "Create a new qrCodePinAuthenticationMethod object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 02/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create qrCodePinAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new qrCodePinAuthenticationMethod object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "authentication-put-qrcodepinmethod-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authentication-put-qrcodepinmethod-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /users/{id}/authentication/qrcodepinmethod
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md) object.

You can specify the following properties when creating a **qrCodePinAuthenticationMethod**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|standardQRCode|[qrCode](../resources/qrcode.md)|**TODO: Add Description**|
|pin|[qrPin](../resources/qrpin.md)|**TODO: Add Description**. Optional.|


## Response

If successful, this method returns a `201 Created` response code and a [qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_qrcodepinauthenticationmethod_from_"
}
-->
``` http
PUT /users/{id}/authentication/qrcodepinmethod
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCodePinAuthenticationMethod",
  "standardQRCode": {
    "expireDateTime": "2025-12-19T12:00:00Z",
    "startDateTime": "2025-01-01T12:00:00Z"
  },
  "pin": {
    "code": "09599786"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.qrCodePinAuthenticationMethod"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCodePinAuthenticationMethod",
  "id": "d29518d4-b99a-4c88-b40c-92fd12959724",
  "isUsable": false,
  "methodUsabilityReason": null,
  "standardQRCode": {
    "id": "1a253da5-3f9a-457d-bd9c-de1aab9a2e59",
    "expireDateTime": "2025-12-19T12:00:00Z",
    "startDateTime": "2025-01-01T12:00:00Z",
    "createdDateTime": "2025-03-05T00:03:11.1460378Z",
    "lastUsedDateTime": "0001-01-01T00:00:00Z",
    "image": {
      "binaryValue": "PHN2ZyB2ZXJzaW9uPSIxLjEiIGJhc2VQcm9maWxlPSJmdWxsIiBzaGFwZS1yZW5kZXJpbmc9ImNyaX...",
      "version": 1,
      "errorCorrectionLevel": "l",
      "rawContent": "bXMtcXJwaW46djF8YWRtaW5AeHBmcTgub25taWNyb3NvZnQuY29tfDFhMjUzZGE1LTNmOWEtNDU3ZC1iZDljLWRlMWFhYjlhMmU1OXwzNzYz..."
    }
  }
  "temporaryQRCode": null,
  "pin": {
    "id": "a98a1084-f503-4dfd-a293-c0e93cba124a",
    "code": "09599786",
    "forceChangePinNextSignIn": true,
    "createdDateTime": "2025-03-05T00:03:11.3120627Z",
    "updatedDateTime": "2025-03-05T00:03:11.3120627Z"
  }
}
```

