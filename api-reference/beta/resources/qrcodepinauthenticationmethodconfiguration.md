---
title: "qrCodePinAuthenticationMethodConfiguration resource type"
description: "Represents the configuration policy that applies to users or groups enabled for the QR code authentication method."
author: "AanjuSingh"
ms.date: 02/24/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: QR Code authentication
---

# qrCodePinAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the QR code authentication method policy that defines configuration settings and target users or groups who are enabled to use QR code authentication method. 


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/qrcodepinauthenticationmethodconfiguration-get.md)|[qrCodePinAuthenticationMethodConfiguration](../resources/qrcodepinauthenticationmethodconfiguration.md)|Read the properties and relationships of a qrCodePinAuthenticationMethodConfiguration object.|
|[Update](../api/qrcodepinauthenticationmethodconfiguration-update.md)|[qrCodePinAuthenticationMethodConfiguration](../resources/qrcodepinauthenticationmethodconfiguration.md)|Update the properties of a qrCodePinAuthenticationMethodConfiguration object.|
|[Delete](../api/qrcodepinauthenticationmethodconfiguration-delete.md)|None|Delete a qrCodePinAuthenticationMethodConfiguration object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|
|id|String|The identifier for the authentication method policy. The value is always `QRCodePin`. Inherits from [entity](../resources/entity.md)|
|pinLength|Int32|A memorized alphanumeric secret code. Minimum length is 8 as per NIST 800-63B and can't be longer than 20 digits. |
|standardQRCodeLifetimeInDays|Int32|The maximum value is 395 days and the default value is 365 days.|
|state|authenticationMethodState|Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). The possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|A collection of groups that are enabled to use the authentication method.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.qrCodePinAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.qrCodePinAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "standardQRCodeLifetimeInDays": "Integer",
  "pinLength": "Integer"
}
```

