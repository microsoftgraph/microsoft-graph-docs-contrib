---
title: "qrCodePinAuthenticationMethod resource type"
description: "Represents a QR code authentication method registered to a user."
author: "AanjuSingh"
ms.date: 02/25/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: QR code authentication
toc.keywords: [ QRCodePin ]
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
|id|String|The identifier of the QR code auth added to this user. Inherited from [authenticationMethod](../resources/authenticationmethod.md). Inherits from [entity](../resources/entity.md)|
|lastUsedDateTime|DateTimeOffset|The date and time the authentication method was last used by the user. Read-only. Optional. This optional value is `null` if the authentication method doesn't populate it. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|pin|[qrPin](../resources/qrpin.md)|The PIN linked to the QR Code auth method of the user.|
|standardQRCode|[qrCode](../resources/qrcode.md)|Standard QR code is primary QR code of the user with lifetime upto 395 days (13 months). There can be only one active standard QR code for the user.|
|temporaryQRCode|[qrCode](../resources/qrcode.md)|Temporary QR code has lifetime up to 12 hours. It can be issued when the user doesn't have access to their standard QR code. There can be only one active temporary QR code for the user. |

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
  "lastUsedDateTime": "String (timestamp)"
}
```

