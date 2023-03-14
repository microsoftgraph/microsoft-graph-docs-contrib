---
title: "verifiedCredentialData resource type"
description: "Data containing the metadata of the issuing authority, presented credentials and the verified claims."
author: "sponnada"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# verifiedCredentialData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Data containing the metadata of the issuing authority, presented credentials and the verified claims.
Used for the **verifiedCredentialsData** property of [access package assignment request](accessPackageAssignmentRequest.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authority|String| The authority ID for the issuer. |
|type|Collection string| The list of credential types provided by the issuer. |
|claims|[verifiableCredentialClaims](verifiableCredentialClaims.md)| Key value pair of claims retrieved from the credential that was provided and verified. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiedCredentialData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verifiedCredentialData",
  "authority": "did:ion:…..",
  "type": [
    "VerifiedCredentialExpert"
  ],
  "claims": {
    "@odata.type": "microsoft.graph.verifiedCredentialClaims"
  }
}
```