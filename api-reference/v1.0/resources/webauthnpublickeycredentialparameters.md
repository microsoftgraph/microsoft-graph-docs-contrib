---
title: "webauthnPublicKeyCredentialParameters resource type"
description: "Represents a cryptographic algorithm and credential type that the relying party supports."
author: "samudapuram"
ms.date: 04/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnPublicKeyCredentialParameters resource type

Namespace: microsoft.graph

Represents a cryptographic algorithm and credential type that the relying party supports. The relying party provides a list of these parameters in order of preference during credential creation. This complex type is the type for each item in the **pubKeyCredParams** collection of the [webauthnPublicKeyCredentialCreationOptions](../resources/webauthnpublickeycredentialcreationoptions.md) resource.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alg|Int32|A COSE algorithm identifier representing the cryptographic algorithm to use for this credential type. For example, `-7` represents ES256.|
|type|String|The type of credential to create. Currently, the only supported value is `public-key`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webauthnPublicKeyCredentialParameters"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webauthnPublicKeyCredentialParameters",
  "type": "String",
  "alg": "Integer"
}
```
