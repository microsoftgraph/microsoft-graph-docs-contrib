---
title: "qrCodePinAuthenticationMethod resource type"
description: "Represents a QR code authentication method registered to a user."
author: "Aanjusingh and ducnguye"
ms.date: 02/25/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# qrCodePinAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a QR code authentication method registered to a user. QR code authentication method consists of QR code and user PIN. To sign-in, user will simply scan the QR code and their PIN. You can apply available QR code authentication method policy configurations here (../resources/qrcodepinauthenticationmethodconfiguration.md) to all the enabled users, such as lifetime of standard QR code and PIN length. 

Inherits from [authenticationMethod](../resources/authenticationmethod.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/qrcodepinauthenticationmethod-get.md)|[qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md)|Read the properties and relationships of a user's qrCodePinAuthenticationMethod object.|
|[Create](../api/authentication-put-qrcodepinmethod.md)|[qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md)|Create a user's new qrCodePinAuthenticationMethod object.|
|[Delete](../api/authentication-delete-qrcodepinmethod.md)|None|Delete a user's qrCodePinAuthenticationMethod object.|
|[Create a Standard or Temporary QR code](../api/qrcodepinauthenticationmethod-patch-standardqrcode.md)|[qrCode](../resources/qrcode.md)|Create a user's new standard or temporary qrCode object.|
|[Update a Standard QR code](../api/qrcode-update.md)|[qrCode](../resources/qrcode.md)|Update a user's standard qrCode object.|
|[Delete a Standard or Temporary QR code](../api/qrcode-delete.md)|None|Delete a user's standardQRCode or temporary qrCode object.|
|[Reset Pin](../api/qrcodepinauthenticationmethod-patch-pin.md)|[qrPin](../resources/qrpin.md)|Resets a user's Pin by creating a new qrPIN object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the QR code auth was created. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|id|String|The identifier of the QR code auth added to this user. Inherited from [authenticationMethod](../resources/authenticationmethod.md). Inherits from [entity](../resources/entity.md)|
|isUsable|Boolean|The state of the authentication method that indicates whether it's currently usable by the user. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|methodUsabilityReason|String|Details about the usability state (isUsable). Reasons can include: EnabledByPolicy, DisabledByPolicy, Expired, NotYetValid, OneTimeUsed. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|

## Relationships
None

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

