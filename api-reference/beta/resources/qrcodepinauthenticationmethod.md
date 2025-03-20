---
title: "qrCodePinAuthenticationMethod resource type"
description: "Represents a QR code authentication method registered to a user."
author: "AanjuSingh"
ms.date: 02/25/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# qrCodePinAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a QR code authentication method registered to a user, as allowed by the [qrCodePinAuthenticationMethodConfiguration](../resources/qrcodepinauthenticationmethodconfiguration.md) policy. The QR code authentication method consists of a QR code and a user PIN. To authenticate, the user scans the QR code and enters their PIN. 

Inherits from [authenticationMethod](../resources/authenticationmethod.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/qrcodepinauthenticationmethod-get.md)|[qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md)|Read the properties and relationships of a user's qrCodePinAuthenticationMethod object.|
|[Create](../api/authentication-put-qrcodepinmethod.md)|[qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md)|Create a user's new qrCodePinAuthenticationMethod object.|
|[Delete](../api/authentication-delete-qrcodepinmethod.md)|None|Delete a user's qrCodePinAuthenticationMethod object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the QR code auth was created. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|id|String|The identifier of the QR code auth added to this user. Inherited from [authenticationMethod](../resources/authenticationmethod.md). Inherits from [entity](../resources/entity.md)|
|isUsable|Boolean|The state of the authentication method that indicates whether it's currently usable by the user.|
|methodUsabilityReason|String|Details about the usability state (isUsable). Reasons can include: `EnabledByPolicy`, `DisabledByPolicy`, `Expired`, `NotYetValid`, `OneTimeUsed`. |

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
  "isUsable": "Boolean",
  "methodUsabilityReason": "String"
}
```

