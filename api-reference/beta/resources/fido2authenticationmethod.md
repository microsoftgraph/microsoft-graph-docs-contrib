---
title: "fido2AuthenticationMethod resource type"
description: "A representation of a FIDO2 security key registered to a user. FIDO2 is a sign-in authentication method."
author: "calvinlui"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: FIDO2
ms.date: 10/15/2026
---

# fido2AuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of a FIDO2 security key registered to a user. FIDO2 is a sign-in authentication method.

The **fido2AuthenticationMethod** resource is a derived type that inherits from the [authenticationMethod](authenticationmethod.md) resource type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/fido2authenticationmethod-list.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) collection|Retrieve a list of a user's fido2AuthenticationMethod objects and their properties.|
|[Create](../api/authentication-post-fido2methods.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md)|Create a new [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object based on [WebAuthn W3C standards](https://www.w3.org/TR/webauthn-2/#iface-pkcredential).|
|[Get](../api/fido2authenticationmethod-get.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md)|Read the properties and relationships of a user's fido2AuthenticationMethod object.|
|[Delete](../api/fido2authenticationmethod-delete.md)|None|Deletes a user's fido2AuthenticationMethod object.|
|[Creation options](../api/fido2authenticationmethod-creationoptions.md)|[webauthnCredentialCreationOptions](../resources/webauthncredentialcreationoptions.md)|Retrieve creation options required to generate and register an Entra ID compatible passkey.|

## Properties
| Property | Type | Description |
|:---|:---|:---|
| aaGuid | String | Authenticator Attestation GUID, an identifier that indicates the type (such as make and model) of the authenticator. |
| attestationCertificates | String collection | The attestation certificate or certificates attached to this security key. |
| attestationLevel | attestationLevel | The attestation level of this FIDO2 security key. The possible values are: `attested`, `notAttested`, `unknownFutureValue`. |
| createdDateTime | DateTimeOffset | The timestamp when this key was registered to the user. |
| displayName | String | The display name of the key as given by the user. |
| id | String | The authentication method identifier. |
| lastUsedDateTime | DateTimeOffset | The date and time the authentication method was last used by the user. Read-only. Optional. This optional value is `null` if the authentication method doesn't populate it. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [authenticationMethod](../resources/authenticationmethod.md). |
| model | String | The manufacturer-assigned model of the FIDO2 security key. |
| passkeyType | passkeyType | The type of passkey allowed in the passkey profile. The possible values are: `deviceBound`, `synced`, `unknownFutureValue`. |
| provenance | [credentialProvenance](../resources/credentialprovenance.md) | The provenance and trust classification of the authentication method. Supports administrative overrides. This property is available only to tenants enrolled in the Chain of Trust private preview. Inherited from [authenticationMethod](../resources/authenticationmethod.md). |
| publicKeyCredential | [webauthnPublicKeyCredential](../resources/webauthnpublickeycredential.md) | Contains the WebAuthn public key credential information being registered. Only used for write requests. This property isn't returned on read operations. |

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
  "lastUsedDateTime": "String (timestamp)",
  "model": "String",
  "passkeyType": "String",
  "provenance": {
    "@odata.type": "microsoft.graph.credentialProvenance"
  },
  "publicKeyCredential": {
    "@odata.type": "microsoft.graph.webauthnPublicKeyCredential"
  }
}
```
