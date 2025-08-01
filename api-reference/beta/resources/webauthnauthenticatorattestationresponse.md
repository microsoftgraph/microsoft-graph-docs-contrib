---
title: "webauthnAuthenticatorAttestationResponse resource type"
description: "Represents data returned from a WebAuthn authenticator after it creates a new public key credential."  
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/24/2024
---

# webauthnAuthenticatorAttestationResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents data returned from a WebAuthn authenticator after it creates a new public key credential. For more information, see [Information About Public Key Credential](https://www.w3.org/TR/WebAuthn-2/#iface-authenticatorattestationresponse).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attestationObject|String|Base64URL encoded, cryptographically protected attestation about the WebAuthn Authenticator.|  
|clientDataJson|String|Contains the contextual binding between a Relying Party (Microsoft Entra ID) and the client represented as an base64URL encoded JSON string.|  


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
