---
title: "fido2AuthenticationMethodConfiguration resource type"
description: "Represents a FIDO2 authentication methods policy."
author: "hanki71"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: FIDO2
ms.date: 03/04/2026
---

# fido2AuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

Represents a FIDO2 authentication methods policy. Authentication methods policies define configuration settings and users or groups who are enabled to use the authentication method.

Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/fido2authenticationmethodconfiguration-get.md)|[fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md)|Read the properties and relationships of a fido2AuthenticationMethodConfiguration object.|
|[Update](../api/fido2authenticationmethodconfiguration-update.md)|None|Update the properties of a fido2AuthenticationMethodConfiguration object.|
|[Delete](../api/fido2authenticationmethodconfiguration-delete.md)|None|Reverts the fido2AuthenticationMethodConfiguration object to its default configuration.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultPasskeyProfile|String|The non-deletable baseline passkey profile, within the passkey profile collection. It's automatically created when migrating to passkey profiles and initially mirrors the tenant's legacy global passkey (FIDO2) authentication methods policy settings.|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy.|
|id|String|The authentication method policy identifier.|
|isAttestationEnforced|Boolean|Determines whether attestation must be enforced for passkey (FIDO2) registration. This property is deprecated and will be removed in October 2027. Use **passkeyProfiles** property.|
|isSelfServiceRegistrationAllowed|Boolean|Determines if users can register new passkeys (FIDO2).|
|keyRestrictions|[fido2KeyRestrictions](../resources/fido2keyrestrictions.md)|Controls whether key restrictions are enforced on passkeys (FIDO2), either allowing or disallowing certain key types as defined by Authenticator Attestation GUID (AAGUID), an identifier that indicates the type (for example, make and model) of the authenticator. This property is deprecated and will be removed in October 2027. Use the **passkeyProfiles** property.|
|state|authenticationMethodState|The possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[passkeyAuthenticationMethodTarget](../resources/passkeyauthenticationmethodtarget.md) collection|A collection of groups that are enabled to use the authentication method.|
|passkeyProfiles|[passkeyProfile](../resources/passkeyprofile.md) collection|A collection of configuration profiles that control the registration of and authentication with passkeys (FIDO2).|

## JSON representation

The following JSON representation shows the resource type.
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
  "state": "String",
  "defaultPasskeyProfile": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "isSelfServiceRegistrationAllowed": "Boolean",
  "isAttestationEnforced": "Boolean",
  "keyRestrictions": {
    "@odata.type": "microsoft.graph.fido2KeyRestrictions"
  },
  "includeTargets": [ { "@odata.type": "microsoft.graph.passkeyAuthenticationMethodTarget" } ]
}
```
