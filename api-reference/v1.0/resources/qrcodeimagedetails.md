---
title: "qrCodeImageDetails resource type"
description: "Contains the QR code image representation data, including the binary image and error correction level."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.date: 01/30/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# qrCodeImageDetails resource type

Namespace: microsoft.graph

Contains the QR code image representation data. This complex type is returned as part of the [qrCode](qrcode.md) resource when a QR code is created. The image data is only returned at creation time because the private key embedded in the QR code isn't stored on the server.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|binaryValue|Binary|The binary representation of the QR code image.|
|errorCorrectionLevel|[errorCorrectionLevel](#errorcorrectionlevel-values)|The error correction level of the QR code, which determines how much of the QR code can be damaged while still being readable. The possible values are: `l`, `m`, `q`, `h`, `unknownFutureValue`.|
|rawContent|Binary|The raw encoded content embedded in the QR code.|
|version|Int32|The version number of the QR code, which determines its size and data capacity.|

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
  "errorCorrectionLevel": "String",
  "rawContent": "Binary",
  "version": "Integer"
}
```

## Related content

- [qrCode resource type](qrcode.md)
