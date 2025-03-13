---
title: "qrCode resource type"
description: "Represents standard or temporary QR code of the user"
author: "AnjuSingh"
ms.date: 02/24/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# qrCode resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents either standard or temporary QR code of the user.

Inherits from [entity](../resources/entity.md)

<!--
## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/qrcodepinauthenticationmethod-patch-standardqrcode.md)|[qrCode](../resources/qrcode.md)|Create a new qrCode object.|
|[Get](../api/qrcode-get.md)|[qrCode](../resources/qrcode.md)|Read the properties and relationships of a qrCode object.|
|[Update](../api/qrcode-update.md)|[qrCode](../resources/qrcode.md)|Update the properties of a qrCode object.|
|[Delete](../api/qrcodepinauthenticationmethod-delete-standardqrcode.md)|None|Delete a qrCode object.|
-->
## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the QR code was created.|
|expireDateTime|DateTimeOffset|Temporary QR code lifetime is between 1-12 hours. Standard QR code lifetime is in days and max. is 395 days (13 months) and default value is 365 days (12 months).|
|id|String|GUID of QR code. Inherits from [entity](../resources/entity.md)|
|image|[qrCodeImageDetails](../resources/qrcodeimagedetails.md)|The QR code image returned at the time of creating auth method or only QR code as an complex type.|
|lastUsedDateTime|DateTimeOffset|The date and time when the QR code was used last time successfully.|
|startDateTime|DateTimeOffset|The date and time when the QR code becomes available to use.|

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
