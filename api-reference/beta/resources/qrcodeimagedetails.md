---
title: "qrCodeImageDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 02/24/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# qrCodeImageDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|binaryValue|Binary|**TODO: Add Description**|
|errorCorrectionLevel|errorCorrectionLevel|**TODO: Add Description**.The possible values are: `l`, `m`, `q`, `h`, `unknownFutureValue`.|
|rawContent|Binary|**TODO: Add Description**|
|version|Int32|**TODO: Add Description**|

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