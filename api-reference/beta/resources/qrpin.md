---
title: "qrPin resource type"
description: "Represents the PIN for the user in a QR code authentication method."
author: "AanjuSingh"
ms.date: 02/24/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: PIN
toc.keywords: [ QRCodePin, QRCode ]
---

# qrPin resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the PIN for the user in a [QR code authentication method](../resources/qrcodepinauthenticationmethod.md). When the user is registered for the QR code authentication method, they get a temporary PIN which they are required to change during the initial sign-in. Self-service PIN reset isn't supported. Only admins can reset the user's PIN by creating a new temporary PIN.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Reset PIN](../api/qrpin-update.md)|[qrPin](../resources/qrpin.md)|Reset a user's PIN by creating a new **qrPIN** object.|
|[Update PIN](../api/qrpin-updatepin.md)|[qrPin](../resources/qrpin.md)|Update a user's PIN by creating a new **qrPIN** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|String|PIN of the user. It is between 8-20 digits as configured in the [QR code authentication method policy](../resources/qrcodepinauthenticationmethodconfiguration.md). The code is temporary when issued by admin but permanent after the user changes it at the first login attempt. This PIN can be reset by the admin but not the user.|
|createdDateTime|DateTimeOffset|The date and time when the PIN was created.|
|forceChangePinNextSignIn|Boolean|Defaults to `true` for a temporary PIN. |
|updatedDateTime|DateTimeOffset|The date and time when the PIN was updated.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.qrPin",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.qrPin",
  "code": "String",
  "forceChangePinNextSignIn": "Boolean",
  "createdDateTime": "String (timestamp)",
  "updatedDateTime": "String (timestamp)"
}
```

