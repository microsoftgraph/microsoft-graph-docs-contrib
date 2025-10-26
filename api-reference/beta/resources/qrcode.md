---
title: "qrCode resource type"
description: "Represents standard or temporary QR code of the user."
author: "AnjuSingh"
ms.date: 02/24/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: QR Code
toc.keywords: [ QRCodePin, QRCode ]
---

# qrCode resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents either standard or temporary QR code of a user's [QR code authentication method](../resources/qrcodepinauthenticationmethod.md).

Inherits from [entity](../resources/entity.md)

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create or update](../api/qrcode-update.md)|[qrCode](../resources/qrcode.md)|Create or update a standard or temporary **qrCode** object for a user.|
|[Get](../api/qrcode-get.md)|[qrCode](../resources/qrcode.md)|Get a user's standard or temporary **qrCode** object.|
|[Delete](../api/qrcode-delete.md)|None|Delete a user's standard or temporary **qrCode** object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the QR code was created.|
|expireDateTime|DateTimeOffset|Temporary QR code lifetime is between 1-12 hours. Standard QR code lifetime is in days and max. is 395 days (13 months) and default value is 365 days (12 months).|
|id|String|Unique identifier of the QR code. Inherits from [entity](../resources/entity.md)|
|image|[qrCodeImageDetails](../resources/qrcodeimagedetails.md)|The QR code image's raw data that is returned when a standard or temporary QR code is created.|
|lastUsedDateTime|DateTimeOffset|The date and time when the QR code was last used for a successful sign-in.|
|startDateTime|DateTimeOffset|The date and time when the QR code becomes active and available to use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.qrCode",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.qrCode",
  "id": "String (identifier)",
  "expireDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "lastUsedDateTime": "String (timestamp)",
  "image": {
    "@odata.type": "microsoft.graph.qrCodeImageDetails"
  }
}
```
