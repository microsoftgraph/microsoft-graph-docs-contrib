---
title: "webauthnCredentialCreationOptions resource type"
description: "Represents the options required to create a new WebAuthn credential."
author: "samudapuram"
ms.date: 04/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnCredentialCreationOptions resource type

Namespace: microsoft.graph

Represents the options required to create a new [WebAuthn credential](../resources/webauthnpublickeycredential.md). This object is returned by the [fido2AuthenticationMethod: creationOptions](../api/fido2authenticationmethod-creationoptions.md) function and provides the parameters needed by the client to generate a new passkey.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|challengeTimeoutDateTime|DateTimeOffset|The date and time when the challenge times out and can no longer be used to create a credential.|
|publicKey|[webauthnPublicKeyCredentialCreationOptions](../resources/webauthnpublickeycredentialcreationoptions.md)|The WebAuthn public key creation options.|

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
