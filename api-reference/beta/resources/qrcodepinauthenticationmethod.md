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
|[Get](../api/qrcodepinauthenticationmethod-get.md)|[qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md)|Read the properties and relationships of a user's qrCodePinAuthenticationMethod object.|
|[Create a Standard QR code](../api/qrpin-updatepin.md)|[standardQRCode](../resources/qrcode.md)|Create a user's new standardQRCode object.|
|[Delete a Standard QR code](../api/qrcodepinauthenticationmethod-delete-standardqrcode.md)|None|Delete a user's standardQRCode object.|
|[Create a Temporary QR code](../api/qrpin-updatepin.md)|[temporaryQRCode](../resources/qrcode.md)|Create a user's new temporaryQRCode object.|
|[Delete a Temporary QR code](../api/qrcodepinauthenticationmethod-delete-temporaryqrcode.md)|None|Delete a user's temporaryQRCode object.|
|[Update user Pin](../api/qrpin-updatepin.md)|[pin](../resources/qrpin.md)|Create a new user's pin object.|
|[Delete](../api/authentication-delete-qrcodepinmethod.md)|None|Delete a user's qrCodePinAuthenticationMethod object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the QR code auth was created. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|id|String|The identifier of the QR code auth added to this user. Inherited from [authenticationMethod](../resources/authenticationmethod.md). Inherits from [entity](../resources/entity.md)|
|isUsable|Boolean|The state of the authentication method that indicates whether it's currently usable by the user. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|methodUsabilityReason|String|Details about the usability state (isUsable). Reasons can include: EnabledByPolicy, DisabledByPolicy, Expired, NotYetValid, OneTimeUsed. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|

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
  "methodUsabilityReason": "String"
}
```

