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

Update the properties of a qrCode object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

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
PATCH /authenticationMethodDevices/{authenticationMethodDevicesId}/hardwareOathDevices/{hardwareOathTokenAuthenticationMethodDeviceId}/assignTo/authentication/qrCodePinMethod/standardQRCode
PATCH /authenticationMethodDevices/{authenticationMethodDevicesId}/hardwareOathDevices/{hardwareOathTokenAuthenticationMethodDeviceId}/assignTo/authentication/qrCodePinMethod/temporaryQRCode
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
|expireDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|startDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastUsedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|image|[microsoft.strongAuthentication.qrCodeImageDetails](../resources/qrcodeimagedetails.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [qrCode](../resources/qrcode.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_qrcode"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/authenticationMethodDevices/{authenticationMethodDevicesId}/hardwareOathDevices/{hardwareOathTokenAuthenticationMethodDeviceId}/assignTo/authentication/qrCodePinMethod/standardQRCode
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCode",
  "expireDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "lastUsedDateTime": "String (timestamp)",
  "image": {
    "@odata.type": "microsoft.graph.qrCodeImageDetails"
  }
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCode",
  "id": "cb960eac-7a22-1979-ec68-1ec73264ae8d",
  "expireDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "lastUsedDateTime": "String (timestamp)",
  "image": {
    "@odata.type": "microsoft.graph.qrCodeImageDetails"
  }
}
```