---
title: "qrCodeImageDetails resource type"
description: "Represents the raw image content of a QR code."
author: "Aanjusingh"
ms.date: 02/24/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: QR Code Image
toc.keywords: [ QRCodePin, QRCode ]
---

# qrCodeImageDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the raw image content of a [QR code](../resources/qrcode.md).


## Properties

|Property|Type|Description|
|:---|:---|:---|
|binaryValue|Binary|The binary representation of the QR code.|
|errorCorrectionLevel|errorCorrectionLevel|Specifies how much of the **QRCode** can be corrupted while still maintaining its readable. The possible values are: `l`  (Low), `m` (Medium), `q` (Quartile), `h` ( High), `unknownFutureValue`.|
|rawContent|Binary|Base64-encoded raw content of the QR code.|
|version|Int32|Version to create QR code image.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.qrCodeImageDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.qrCodeImageDetails",
  "binaryValue": "Binary",
  "version": "Integer",
  "errorCorrectionLevel": "String",
  "rawContent": "Binary"
}
```
