---
title: "verifiedCredentialClaims resource type"
description: "Open type containing the key value pair of the claims retrieved from the credentials. Names must be valid property names, values may be restricted to a list of types via an annotation with term `Validation.OpenPropertyTypeConstraint`."
author: "sponnada"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# verifiedCredentialClaims resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Open type containing the key value pair of the claims retrieved from the credentials. Names must be valid property names, values may be restricted to a list of types via an annotation with term `Validation.OpenPropertyTypeConstraint`


Inherits from [Dictionary](../resources/dictionary.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
Any simple identifier | Any type listed in `Validation.OpenPropertyTypeConstraint`, or any type if there is no constraint

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

