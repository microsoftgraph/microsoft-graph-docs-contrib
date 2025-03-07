---
title: "verifiedCredentialData resource type"
description: "Represents the metadata of the verifiable credential including the issuing authority, presented credentials, and the verified claims."
author: "sponnada"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# verifiedCredentialData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the metadata of the verifiable credential including the issuing authority, presented credentials, and the verified claims.
Used for the **verifiedCredentialsData** property of [access package assignment request](accesspackageassignmentrequest.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authority|String| The authority ID for the issuer. |
|type|String collection| The list of credential types provided by the issuer. |
|claims|[verifiedCredentialClaims](verifiedcredentialclaims.md)| Key-value pair of claims retrieved from the credential that the user presented, and the service verified. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiedCredentialData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verifiedCredentialData",
  "authority": "String",
  "type": [
    "String"
  ],
  "claims": {
    "@odata.type": "microsoft.graph.verifiedCredentialClaims"
  }
}
```
