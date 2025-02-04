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

TBD

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
|authenticationModeConfiguration|[qrCodepinAuthenticationMethodConfiguration](../resources/qrcodepinauthenticationmethodconfiguration.md)|Defines strong authentication configurations. This configuration includes the default authentication mode and the different rules for strong authentication bindings. |
|standardQRCodeLifetimeInDays|Int|TBD|
|pinLength|Int|TBD|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy.|
|id|String|The identifier for the authentication method policy. The value is always `QRCodePin`. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). |
|issuerHintsConfiguration|[x509CertificateIssuerHintsConfiguration](../resources/x509certificateissuerhintsconfiguration.md)|Determines whether issuer(CA) hints are sent back to the client side to filter the certificates shown in certificate picker. |
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
  "@odata.type": "microsoft.graph.x509CertificateAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}

``` json
{
  "@odata.type": "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "certificateUserBindings": [
    {
      "@odata.type": "microsoft.graph.x509CertificateUserBinding"
    }
  ],
  "authenticationModeConfiguration": {
    "@odata.type": "microsoft.graph.x509CertificateAuthenticationModeConfiguration"
  },
  "issuerHintsConfiguration": {
    "@odata.type": "microsoft.graph.x509CertificateIssuerHintsConfiguration"
  }
}
```
-->
