---
title: "qrCodePinAuthenticationMethodConfiguration resource type"
description: "TBD"
author: "TBD"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: QRCodePin
toc.keywords: [ TBD ]
ms.date: 02/03/2025
---

# qrCodePinAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of the Microsoft Entra native QRCodePin in the tenant, including whether the authentication method is enabled or disabled and the users and groups who can register and use it.

Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/qrcodepinauthenticationmethodconfiguration-get.md)|[qrCodePinAuthenticationMethodConfiguration](../resources/qrcodepinauthenticationmethodconfiguration.md)|Read the properties and relationships of a qrCodepinAuthenticationMethodConfiguration object.|
|[Update](../api/qrcodepinauthenticationmethodconfiguration-update.md)|None|Update the properties of a qrCodepinAuthenticationMethodConfiguration object.|
|[Delete](../api/qrcodepinauthenticationmethodconfiguration-delete.md)|None| Delete the tenant-customized qrCodepinAuthenticationMethodConfiguration object and restore the default configuration.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|standardQRCodeLifetimeInDays|Int|Standard QR code lifetime is in days and max. is 395 days ( 13 months) and default value is 365 days ( 12 months)|
|pinLength|Int|A at-least-8-digit memorized secret. Min length default is 8 as per NIST standards and can't be longer than 20 digits |
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy.|
|id|String|The identifier for the authentication method policy. The value is always `QRCodePin`. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). |
|state|authenticationMethodState|The possible values are: `enabled`, `disabled`. |


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|A collection of groups that are enabled to use the authentication method.|

The following JSON representation shows the resource type.
The following is a JSON representation of the resource.
TBD
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
  "standardQRCodeLifetimeInDays": "Int",
  "pinLength": "Int"
}
```