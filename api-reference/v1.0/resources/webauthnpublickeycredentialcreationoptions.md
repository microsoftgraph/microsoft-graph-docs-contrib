---
title: "webauthnPublicKeyCredentialCreationOptions resource type"
description: "Defines the parameters required for creating a new WebAuthn public key credential."
author: "samudapuram"
ms.date: 04/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnPublicKeyCredentialCreationOptions resource type

Namespace: microsoft.graph

Defines the parameters required for creating a new WebAuthn public key credential. These options specify the relying party, user information, cryptographic parameters, and authenticator selection criteria for credential creation. This complex type is the type for the **publicKey** property of the [webauthnCredentialCreationOptions](../resources/webauthncredentialcreationoptions.md) resource.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attestation|String|Specifies the relying party's preference for attestation conveyance.|
|authenticatorSelection|[webauthnAuthenticatorSelectionCriteria](../resources/webauthnauthenticatorselectioncriteria.md)|Criteria for selecting an appropriate authenticator for credential creation.|
|challenge|String|The challenge that the authenticator must sign to prove possession of the credential. This value is Base64URL-encoded without padding.|
|excludeCredentials|[webauthnPublicKeyCredentialDescriptor](../resources/webauthnpublickeycredentialdescriptor.md) collection|A list of credentials that are already registered for this user, which should be excluded from selection.|
|extensions|[webauthnAuthenticationExtensionsClientInputs](../resources/webauthnauthenticationextensionsclientinputs.md)|Inputs for requested WebAuthn extensions.|
|pubKeyCredParams|[webauthnPublicKeyCredentialParameters](../resources/webauthnpublickeycredentialparameters.md) collection|The cryptographic parameters that the relying party supports, in order of preference.|
|rp|[webauthnPublicKeyCredentialRpEntity](../resources/webauthnpublickeycredentialrpentity.md)|Information about the relying party (RP) requesting credential creation.|
|timeout|Int32|The time, in milliseconds, that the caller is willing to wait for the operation to complete.|
|user|[webauthnPublicKeyCredentialUserEntity](../resources/webauthnpublickeycredentialuserentity.md)|Information about the user account for which the credential is being created.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webauthnPublicKeyCredentialCreationOptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webauthnPublicKeyCredentialCreationOptions",
  "rp": {
    "@odata.type": "microsoft.graph.webauthnPublicKeyCredentialRpEntity"
  },
  "user": {
    "@odata.type": "microsoft.graph.webauthnPublicKeyCredentialUserEntity"
  },
  "challenge": "String",
  "pubKeyCredParams": [
    {
      "@odata.type": "microsoft.graph.webauthnPublicKeyCredentialParameters"
    }
  ],
  "timeout": "Integer",
  "excludeCredentials": [
    {
      "@odata.type": "microsoft.graph.webauthnPublicKeyCredentialDescriptor"
    }
  ],
  "authenticatorSelection": {
    "@odata.type": "microsoft.graph.webauthnAuthenticatorSelectionCriteria"
  },
  "attestation": "String",
  "extensions": {
    "@odata.type": "microsoft.graph.webauthnAuthenticationExtensionsClientInputs"
  }
}
```
