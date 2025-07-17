---
title: "verifiedCredentialClaims resource type"
description: "Open type containing the key-value pair of the claims retrieved from the credentials."
author: "sponnada"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# verifiedCredentialClaims resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Open type containing the key-value pair of the claims retrieved from the verifiable credentials. Names must be valid property names and values may be restricted to a list of types via an annotation with the term `Validation.OpenPropertyTypeConstraint`.
Used for the **claims** property of [verified credential data](verifiedCredentialData.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiedCredentialClaims"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verifiedCredentialClaims"
}
```

