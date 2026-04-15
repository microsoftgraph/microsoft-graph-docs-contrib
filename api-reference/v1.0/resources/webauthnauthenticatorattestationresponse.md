---
title: "webauthnAuthenticatorAttestationResponse resource type"
description: "Represents data returned from a WebAuthn authenticator after it creates a new public key credential."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.date: 04/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnAuthenticatorAttestationResponse resource type

Namespace: microsoft.graph

Represents data returned from a WebAuthn authenticator after it creates a new public key credential.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attestationObject|String|Base64URL encoded, cryptographically protected attestation about the WebAuthn Authenticator.|
|clientDataJSON|String|Contains the contextual binding between a Relying Party (Microsoft Entra ID) and the client represented as a base64URL encoded JSON string.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webauthnAuthenticatorAttestationResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webauthnAuthenticatorAttestationResponse",
  "clientDataJSON": "String",
  "attestationObject": "String"
}
```

