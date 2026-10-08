---
title: "qrCodePinAuthenticationMethod resource type"
description: "Represents a QR code and PIN authentication method registered to a user, used for frontline worker authentication."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.date: 01/29/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: QR code authentication
toc.keywords: [ QRCodePin ]
---

# qrCodePinAuthenticationMethod resource type

Namespace: microsoft.graph

Represents a QR code and PIN authentication method registered to a user. This single-factor authentication method is designed for frontline workers and combines a QR code (equivalent to something you have) with a PIN (something you know). Users enter the PIN only after successful QR code verification.

Each user can have only one active QR code PIN authentication method. The method requires both a standard QR code and a PIN to be created. Standard QR codes are intended for badges and have a configurable lifetime (default 365 days, maximum 395 days). Temporary QR codes can be created for situations when a user forgot their badge and have a short lifetime (1-12 hours).

Inherits from [authenticationMethod](../resources/authenticationmethod.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/qrcodepinauthenticationmethod-get.md)|[qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md)|Read the properties of a user's QR code PIN authentication method.|
|[Create](../api/authentication-put-qrcodepinmethod.md)|[qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md)|Create a new QR code PIN authentication method for a user.|
|[Delete](../api/qrcodepinauthenticationmethod-delete.md)|None|Delete a user's QR code PIN authentication method.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when this authentication method was created. Inherited from [authenticationMethod](../resources/authenticationmethod.md). Read-only.|
|id|String|The unique identifier for this authentication method. Inherited from [entity](../resources/entity.md). Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|pin|[qrPin](../resources/qrpin.md)|The PIN associated with this QR code authentication method.|
|standardQRCode|[qrCode](../resources/qrcode.md)|The standard (long-lived) QR code credential, typically printed on a user's badge.|
|temporaryQRCode|[qrCode](../resources/qrcode.md)|A temporary (short-lived) QR code credential, created when a user forgets their badge.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.qrCodePinAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.qrCodePinAuthenticationMethod",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)"
}
```

## Related content

- [QR code PIN authentication method overview](/azure/active-directory/authentication/concept-authentication-methods#qr-code-pin)
- [authenticationMethod resource type](authenticationmethod.md)
