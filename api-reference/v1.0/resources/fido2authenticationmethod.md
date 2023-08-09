---
title: "fido2AuthenticationMethod resource type"
description: "A representation of a FIDO2 security key registered to a user. FIDO2 is a sign-in authentication method."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# fido2AuthenticationMethod resource type

Namespace: microsoft.graph

A representation of a FIDO2 security key registered to a user. FIDO2 is a sign-in authentication method.

This is a derived type that inherits from the [authenticationMethod](authenticationmethod.md) resource type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/fido2authenticationmethod-list.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) collection|Retrieve a list of a user's fido2AuthenticationMethod objects and their properties.|
|[Get](../api/fido2authenticationmethod-get.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md)|Read the properties and relationships of a user's fido2AuthenticationMethod object.|
|[Delete](../api/fido2authenticationmethod-delete.md)|None|Deletes a user's fido2AuthenticationMethod object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aaGuid|String|Authenticator Attestation GUID, an identifier that indicates the type (e.g. make and model) of the authenticator.|
|attestationCertificates|String collection|The attestation certificate(s) attached to this security key.|
|attestationLevel|attestationLevel|The attestation level of this FIDO2 security key. Possible values are: `attested`, or `notAttested`.|
|createdDateTime|DateTimeOffset|The timestamp when this key was registered to the user.|
|displayName|String|The display name of the key as given by the user.|
|id|String|The authentication method identifier.|
|model|String|The manufacturer-assigned model of the FIDO2 security key.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
  "model": "String"
}
```

