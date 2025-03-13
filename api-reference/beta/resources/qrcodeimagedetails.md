---
title: "qrCodeImageDetails resource type"
description: "Represents raw image content of QR code"
author: "Aanjusingh"
ms.date: 02/24/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# qrCodeImageDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents raw image content of QR code. 


## Properties

|Property|Type|Description|
|:---|:---|:---|
|binaryValue|Binary|binaryValue of QR code.|
|errorCorrectionLevel|errorCorrectionLevel|The possible values are: `l`, `m`, `q`, `h`, `unknownFutureValue`.|
|rawContent|Binary|Base64-encoded rawContent of QR code.|
|version|Int32|version to create QR code image.|

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
