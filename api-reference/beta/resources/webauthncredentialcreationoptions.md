---
title: "webauthnCredentialCreationOptions resource type"
description: "Represents the data returned from a WebAuthn Authenticator after the Authenticator creates a new public key credential."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/24/2024
---

# webauthnCredentialCreationOptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the data returned from a WebAuthn Authenticator after the Authenticator creates a new public key credential. For more information, see [Web Authentication: An API for accessing Public Key Credentials Level 2](https://www.w3.org/TR/WebAuthn-2/#idl-index).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|challengeTimeoutDateTime|DateTimeOffset| Defines when the challenge in the creation options is no longer valid. Expired challenges are rejected when you attempt to create a new [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md). |  
|publicKey|[webauthnCredentialCreationOptions](webauthnpublickeycredentialcreationOptions.md)|Defines public key options for the creation of a new WebAuthn public key credential.|  

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webauthnCredentialCreationOptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webauthnCredentialCreationOptions",
  "challengeTimeoutDateTime": "String (timestamp)",
  "publicKey": {
    "@odata.type": "microsoft.graph.webauthnPublicKeyCredentialCreationOptions"
  }
}
```
