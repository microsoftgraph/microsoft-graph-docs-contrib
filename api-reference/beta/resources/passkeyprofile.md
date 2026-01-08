---
title: "passkeyProfile resource type"
description: "Profile that enables granular, group-based control over passkey configurations for the Passkeys (FIDO2) authentication method policy."
author: "hanki71"
ms.date: 09/25/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# passkeyProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration profile for [Passkeys (FIDO2) Authentication Method policy](../resources/fido2AuthenticationMethodConfiguration.md) that allows for granular, group-based control over passkey configurations.


Inherits from [entity](../resources/entity.md).


## Methods
No methods are supported.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attestationEnforcement|attestationEnforcement|Determines whether attestation must be enforced for FIDO2 passkey registration. Required. The possible values are: `disabled`, `registrationOnly`, `unknownFutureValue`.|
|id|String|The passkey profile identifier. Required. Inherited from [entity](../resources/entity.md). 
|keyRestrictions|[fido2KeyRestrictions](../resources/fido2keyrestrictions.md)|Controls whether key restrictions are enforced on FIDO2 passkeys, either allowing or disallowing certain key types as defined by Authenticator Attestation GUID (AAGUID), an identifier that indicates the type (for example, make and model) of the authenticator. Required.|
|name|String|Name of the passkey profile. Required.|
|passkeyTypes|passkeyTypes|Specifies which types of passkeys are targeted in this passkey profile. Required. The possible values are: `deviceBound`, `synced`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.passkeyProfile",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passkeyProfile",
  "id": "String (identifier)",
  "name": "String",
  "passkeyTypes": "String",
  "attestationEnforcement": "String",
  "keyRestrictions": {
    "@odata.type": "microsoft.graph.fido2KeyRestrictions"
  }
}
```

