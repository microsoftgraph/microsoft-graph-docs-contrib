---
title: "fido2AuthenticationMethod resource type"
description: "A representation of a passkey (FIDO2) registered to a user. Passkey (FIDO2) is a sign-in authentication method."
author: "hanki71"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: FIDO2
ms.date: 03/04/2026
---

# fido2AuthenticationMethod resource type

Namespace: microsoft.graph

A representation of a passkey (FIDO2) registered to a user. Passkey (FIDO2) is a sign-in authentication method.

This is a derived type that inherits from the [authenticationMethod](authenticationmethod.md) resource type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/fido2authenticationmethod-list.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) collection|Retrieve a list of a user's **fido2AuthenticationMethod** objects and their properties.|
|[Create](../api/authentication-post-fido2methods.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md)|Create a new [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object based on [WebAuthn W3C standards](https://www.w3.org/TR/webauthn-2/#iface-pkcredential).|
|[Get](../api/fido2authenticationmethod-get.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md)|Read the properties and relationships of a user's **fido2AuthenticationMethod** object.|
|[Delete](../api/fido2authenticationmethod-delete.md)|None|Delete a user's **fido2AuthenticationMethod** object.|
|[Creation options](../api/fido2authenticationmethod-creationoptions.md)|[webauthnCredentialCreationOptions](../resources/webauthncredentialcreationoptions.md)|Retrieve creation options required to generate and register an Entra ID compatible passkey.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|aaGuid|String|Authenticator Attestation GUID, an identifier that indicates the type (such as make and model) of the authenticator.|
|attestationCertificates|String collection|The attestation certificate or certificates attached to this passkey.|
|attestationLevel|attestationLevel|The attestation level of this passkey (FIDO2). The possible values are: `attested`, `notAttested`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The timestamp when this key was registered to the user. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|displayName|String|The display name of the key as given by the user.|
|id|String|The authentication method identifier.|
|model|String|The manufacturer-assigned model of the FIDO2 passkey.|
|passkeyType|passkeyType|The type of passkey. The possible values are: `deviceBound`, `synced`, `unknownFutureValue`.|
|publicKeyCredential|[webauthnPublicKeyCredential](../resources/webauthnpublickeycredential.md)|Contains the WebAuthn public key credential information being registered. Only used for write requests. This property isn't returned on read operations.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.fido2AuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fido2AuthenticationMethod",
  "aaGuid": "String",
  "attestationCertificates": [
    "String"
  ],
  "attestationLevel": "String",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "model": "String",
  "passkeyType": "String",
  "publicKeyCredential": {
    "@odata.type": "microsoft.graph.webauthnPublicKeyCredential"
  }
  }
```

