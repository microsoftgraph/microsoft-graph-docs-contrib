---
title: "passkeyProfileStructure resource type"
description: "Passkey profile information for policy evaluation"
author: "hanki71"
ms.date: 09/25/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# passkeyProfileStructure resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Informs policy evaluation which [passkey profiles](../resources/passkeyprofile.md) a user is in scope of.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|attestationEnforcement|attestationEnforcement|Determines whether attestation must be enforced for FIDO2 passkey registration. Required. The possible values are: `disabled`, `registrationOnly`, `unknownFutureValue`.|
|id|String|The passkey profile identifier. Required.|
|isAttestationEnforced|Boolean|Determines whether attestation must be enforced for FIDO2 passkey registration. Required.|
|keyRestrictions|[fido2KeyRestrictions](../resources/fido2keyrestrictions.md)|Controls whether key restrictions are enforced on FIDO2 passkeys, either allowing or disallowing certain key types as defined by Authenticator Attestation GUID (AAGUID), an identifier that indicates the type (for example, make and model) of the authenticator. Required.|
|name|String|Name of the passkey profile. Required.|
|passkeyTypes|passkeyTypes|Specifies which types of passkeys are targeted in this passkey profile. Required. The possible values are: `deviceBound`, `synced`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.passkeyProfileStructure"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passkeyProfileStructure",
  "id": "String",
  "name": "String",
  "passkeyTypes": "String",
  "isAttestationEnforced": "Boolean",
  "attestationEnforcement": "String",
  "keyRestrictions": {
    "@odata.type": "microsoft.graph.fido2KeyRestrictions"
  }
}
```

