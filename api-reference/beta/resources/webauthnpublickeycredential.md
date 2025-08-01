---
title: "webauthnPublicKeyCredential resource type"
description: "Contains attributes returned to the client from the browser after a web authentication (WebAuthn) credential is created." 
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/24/2024
---

# webauthnPublicKeyCredential resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains attributes returned to the client from the browser after a web authentication credential is created. These attributes are needed by the server to persist the credential for use in Microsoft Entra ID. For more information, see [PublicKeyCredential Interface](https://www.w3.org/TR/WebAuthn-2/#iface-pkcredential).  

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The credential ID created by the WebAuthn Authenticator.|
|response|[webauthnAuthenticatorAttestationResponse](../resources/webauthnAuthenticatorAttestationResponse.md)|Response data returned from a WebAuthn authenticator after it creates a new public key credential.|  
|clientExtensionResults|[webauthnAuthenticationExtensionsClientOutputs](../resources/webauthnAuthenticationExtensionsClientOutputs.md)|The untyped results from the execution of extensions requested by the client when creating a new public key credential.|  


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
