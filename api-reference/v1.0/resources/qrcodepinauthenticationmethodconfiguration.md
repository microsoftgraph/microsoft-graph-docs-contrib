---
title: "qrCodePinAuthenticationMethodConfiguration resource type"
description: "Represents the policy configuration for the QR code PIN authentication method in the tenant."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.date: 01/27/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# qrCodePinAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

Represents the policy configuration for the QR code PIN authentication method in the tenant. Authentication method policies define configuration settings and users or groups that are enabled to use the authentication method. This policy allows administrators to configure the standard QR code lifetime and PIN length requirements.

Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/qrcodepinauthenticationmethodconfiguration-get.md)|[qrCodePinAuthenticationMethodConfiguration](../resources/qrcodepinauthenticationmethodconfiguration.md)|Read the properties and relationships of a QR code PIN authentication method policy.|
|[Update](../api/qrcodepinauthenticationmethodconfiguration-update.md)|[qrCodePinAuthenticationMethodConfiguration](../resources/qrcodepinauthenticationmethodconfiguration.md)|Update the properties of a QR code PIN authentication method policy.|
|[Delete](../api/qrcodepinauthenticationmethodconfiguration-delete.md)|None|Delete a QR code PIN authentication method policy and revert to the default configuration.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|
|id|String|The authentication method policy identifier. Inherited from [entity](../resources/entity.md). Read-only.|
|pinLength|Int32|The required length of the PIN. The minimum length is 8 digits (as per NIST standards), and the maximum is 20 digits.|
|standardQRCodeLifetimeInDays|Int32|The lifetime of standard QR codes in days. The default is 365 days and the maximum is 395 days (13 months). The minimum is 1 day.|
|state|authenticationMethodState|The state of the policy. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). The possible values are: `enabled`, `disabled`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|Groups of users that are included and enabled in the policy.|

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
  "excludeTargets": [{"@odata.type": "microsoft.graph.excludeTarget"}],
  "pinLength": "Integer",
  "standardQRCodeLifetimeInDays": "Integer",
  "state": "String"
}
```

## Related content

- [qrCodePinAuthenticationMethod resource type](qrcodepinauthenticationmethod.md)
- [authenticationMethodConfiguration resource type](authenticationmethodconfiguration.md)
