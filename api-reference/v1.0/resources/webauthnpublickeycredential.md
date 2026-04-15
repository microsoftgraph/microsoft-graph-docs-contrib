---
title: "webauthnPublicKeyCredential resource type"
description: "Contains attributes returned to the client from the browser after a web authentication (WebAuthn) credential is created."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.date: 04/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnPublicKeyCredential resource type

Namespace: microsoft.graph

Contains attributes returned to the client from the browser after a web authentication (WebAuthn) credential is created.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The credential ID created by the WebAuthn Authenticator.|
|response|[webauthnAuthenticatorAttestationResponse](../resources/webauthnauthenticatorattestationresponse.md)|Response data returned from a WebAuthn authenticator after it creates a new public key credential.|
|clientExtensionResults|[webauthnAuthenticationExtensionsClientOutputs](../resources/webauthnauthenticationextensionsclientoutputs.md)|The untyped results from the execution of extensions requested by the client when creating a new public key credential.|

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

