---
title: "webauthnPublicKeyCredentialParameters resource type"
description: "Defines a set of Microsoft Entra ID-preferred credential properties for the creation of a new public key credential."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.date: 04/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnPublicKeyCredentialParameters resource type

Namespace: microsoft.graph

Defines a set of Microsoft Entra ID-preferred credential properties for the creation of a new public key credential.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alg|Int32|Specifies the cryptographic signature algorithm used for the new credential. The algorithm identifiers should be values registered in the IANA COSE algorithms registry. For more information, see [IANA-COSE-ALGS-REG](https://www.w3.org/TR/WebAuthn-2/#biblio-iana-cose-algs-reg).|
|type|String|Specifies the type of credential to be created. The only supported value is `public-key`.|

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

