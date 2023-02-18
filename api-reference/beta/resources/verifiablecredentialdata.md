---
title: "verifiableCredentialData resource type"
description: "Data contains the metadata of the issuing authority, presented credentials and the verified claims."
author: "sponnada"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# verifiableCredentialDataresource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


## Properties
|Property|Type|Description|
|:---|:---|:---|
|authority|String| The authority ID for the issuer. |
|type|Collection string| The list of credential types provided by the issuer. |
|claims|[verifiableCredentialClaims](verifiableCredentialClaims.md)| Key valye pair of claims retrieved from the credential that was provided and verified. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiableCredentialData"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.verifiableCredentialData",
    "verifiedCredentialsData": [
    {
        "authority": "did:ion:…..",
        "type": "VerifiedCredentialExpert",
        "claims": {
            "firstName": "John",
            "lastName": "Doe"
        },
    }
]
}
```