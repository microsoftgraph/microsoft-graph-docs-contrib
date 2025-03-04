---
title: "qrCodePinAuthenticationMethod resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 02/25/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# qrCodePinAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authenticationMethod](../resources/authenticationmethod.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/authentication-put-qrcodepinmethod.md)|[qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md)|Create a new qrCodePinAuthenticationMethod object.|
|[Get](../api/qrcodepinauthenticationmethod-get.md)|[qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md)|Read the properties and relationships of a qrCodePinAuthenticationMethod object.|
|[Create a QRCode](../api/qrcodepinauthenticationmethod-patch-standardqrcode.md)|[qrCode](../resources/qrcode.md)|Create a new qrCode object.|
|[Update a QRCode](../api/qrcode-update.md)|None|Delete a QRCode object.|
|[Update qrPin](../api/qrpin-updatepin.md)|[qrPin](../resources/qrpin.md)|Changing qrPin.|
|[Delete](../api/authentication-delete-qrcodepinmethod.md)|None|Delete a qrCodePinAuthenticationMethod object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|id|String|**TODO: Add Description** Inherited from [authenticationMethod](../resources/authenticationmethod.md). Inherits from [entity](../resources/entity.md)|
|isUsable|Boolean|**TODO: Add Description** Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|methodUsabilityReason|String|**TODO: Add Description** Inherited from [authenticationMethod](../resources/authenticationmethod.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|pin|[qrPin](../resources/qrpin.md)|**TODO: Add Description**|
|standardQRCode|[qrCode](../resources/qrcode.md)|**TODO: Add Description**|
|temporaryQRCode|[qrCode](../resources/qrcode.md)|**TODO: Add Description**|

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
  "createdDateTime": "String (timestamp)",
  "isUsable": "Boolean",
  "methodUsabilityReason": "String",
  "standardQRCode": {
    "@odata.type": "microsoft.graph.qrCode"
  },
  "temporaryQRCode": {
    "@odata.type": "microsoft.graph.qrCode"
  },
  "pin": {
    "@odata.type": "microsoft.graph.qrPin"
  },
}
```

