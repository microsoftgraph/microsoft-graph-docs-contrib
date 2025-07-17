---
title: "fido2AuthenticationMethodConfiguration resource type"
description: "Represents a FIDO2 authentication methods policy."
author: "calvinlui"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: FIDO2
ms.date: 07/22/2024
---

# fido2AuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

Represents a FIDO2 authentication methods policy. Authentication methods policies define configuration settings and users or groups who are enabled to use the authentication method.

Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/fido2authenticationmethodconfiguration-get.md)|[fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md)|Read the properties and relationships of a fido2AuthenticationMethodConfiguration object.|
|[Update](../api/fido2authenticationmethodconfiguration-update.md)|[fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md)|Update the properties of a fido2AuthenticationMethodConfiguration object.|
|[Delete](../api/fido2authenticationmethodconfiguration-delete.md)|None|Reverts the fido2AuthenticationMethodConfiguration object to its default configuration.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy.|
|id|String|The authentication method policy identifier.|
|isAttestationEnforced|Boolean|Determines whether attestation must be enforced for FIDO2 security key registration.|
|isSelfServiceRegistrationAllowed|Boolean|Determines if users can register new FIDO2 security keys.|
|keyRestrictions|[fido2KeyRestrictions](../resources/fido2keyrestrictions.md)|Controls whether key restrictions are enforced on FIDO2 security keys, either allowing or disallowing certain key types as defined by Authenticator Attestation GUID (AAGUID), an identifier that indicates the type (for example, make and model) of the authenticator.|
|state|authenticationMethodState|Possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|A collection of groups that are enabled to use the authentication method.|

The following JSON representation shows the resource type.
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.fido2AuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fido2AuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "includeTargets": [ { "@odata.type": "microsoft.graph.authenticationMethodTarget" } ],
  "isAttestationEnforced": "Boolean",
  "isSelfServiceRegistrationAllowed": "Boolean",
  "keyRestrictions": {
    "@odata.type": "microsoft.graph.fido2KeyRestrictions"
  },
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ]
}
```
