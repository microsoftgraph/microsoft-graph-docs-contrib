---
title: "qrPin resource type"
description: "Represents the PIN credential associated with a QR code PIN authentication method."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.date: 01/27/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: PIN
toc.keywords: [ QRCodePin, QRCode ]
---

# qrPin resource type

Namespace: microsoft.graph

Represents the PIN credential associated with a [qrCodePinAuthenticationMethod](qrcodepinauthenticationmethod.md). The PIN is a memorized secret that users enter after successful QR code verification. 

The PIN must be between 8-20 digits, with a minimum default length of 8 digits as per NIST standards. When a PIN is created by an admin or reset, it's a temporary PIN that requires the user to change it on their next sign-in. The PIN code value is only returned at the time of creation or reset.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Reset PIN](../api/qrpin-updatepin.md)|[qrPin](../resources/qrpin.md)|Reset a user's PIN to a new temporary PIN that must be changed on next sign-in.|
|[Update PIN](../api/qrpin-update.md)|[qrPin](../resources/qrpin.md)|Update a user's PIN.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|code|String|The PIN code value. This property is only returned at the time of creating or resetting the PIN. For GET operations, this property returns `null`. The PIN must be between 8-20 digits.|
|createdDateTime|DateTimeOffset|The date and time when the PIN was created. Read-only.|
|forceChangePinNextSignIn|Boolean|Indicates whether the user must change the PIN on their next sign-in. This is `true` when an admin creates or resets the PIN, and `false` after the user changes it.|
|id|String|The unique identifier for the PIN. Inherited from [entity](../resources/entity.md). Read-only.|
|updatedDateTime|DateTimeOffset|The date and time when the PIN was last updated. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.qrPin",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.qrPin",
  "id": "String (identifier)",
  "code": "String",
  "createdDateTime": "String (timestamp)",
  "forceChangePinNextSignIn": "Boolean",
  "updatedDateTime": "String (timestamp)"
}
```

## Related content

- [qrCodePinAuthenticationMethod resource type](qrcodepinauthenticationmethod.md)
