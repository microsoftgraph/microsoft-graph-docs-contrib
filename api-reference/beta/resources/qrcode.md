---
title: "qrCode resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 02/24/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# qrCode resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

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
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|expireDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherits from [entity](../resources/entity.md)|
|image|[qrCodeImageDetails](../resources/qrcodeimagedetails.md)|**TODO: Add Description**|
|lastUsedDateTime|DateTimeOffset|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|

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