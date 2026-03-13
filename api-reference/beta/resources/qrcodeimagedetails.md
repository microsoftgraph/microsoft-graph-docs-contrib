---
title: "qrCodeImageDetails resource type"
description: "Represents the raw image content of a QR code."
author: "Aanjusingh"
ms.date: 01/30/2026
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
|errorCorrectionLevel|[errorCorrectionLevel](#errorcorrectionlevel-values)|Specifies how much of the QR code can be corrupted while still maintaining its readable. The possible values are: `l`  (Low), `m` (Medium), `q` (Quartile), `h` ( High), `unknownFutureValue`.|
|rawContent|Binary|Base64-encoded raw content of the QR code.|
|version|Int32|Version to create QR code image.|

### errorCorrectionLevel values

QR code error correction levels, which determine how much of the QR code can be damaged while still being readable.

| Member | Description |
| ---- | ---- |
| l | Low error correction level, approximately 7% data recovery capability. |
| m | Medium error correction level, approximately 15% data recovery capability. |
| q | Quartile error correction level, approximately 25% data recovery capability. |
| h | High error correction level, approximately 30% data recovery capability. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

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
