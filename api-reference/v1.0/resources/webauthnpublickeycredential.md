---
title: "webauthnPublicKeyCredential resource type"
description: "Represents a WebAuthn public key credential created during FIDO2 passkey registration."
author: "samudapuram"
ms.date: 04/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnPublicKeyCredential resource type

Namespace: microsoft.graph

Represents a WebAuthn public key credential created during FIDO2 passkey registration. This complex type is the type for the **publicKeyCredential** property of the [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) resource.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|clientExtensionResults|[webauthnAuthenticationExtensionsClientOutputs](../resources/webauthnauthenticationextensionsclientoutputs.md)|The output of the WebAuthn extension processing.|
|id|String|The credential ID created by the WebAuthn Authenticator. This value is Base64URL-encoded without padding.|
|response|[webauthnAuthenticatorAttestationResponse](../resources/webauthnauthenticatorattestationresponse.md)|The response from the WebAuthn Authenticator after generating an attestation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webauthnPublicKeyCredential"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webauthnPublicKeyCredential",
  "id": "String",
  "response": {
    "@odata.type": "microsoft.graph.webauthnAuthenticatorAttestationResponse"
  },
  "clientExtensionResults": {
    "@odata.type": "microsoft.graph.webauthnAuthenticationExtensionsClientOutputs"
  }
}
```
