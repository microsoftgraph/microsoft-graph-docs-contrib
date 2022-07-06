---
title: "featureTarget resource type"
description: "A complex type that defines a single group, role, or AU that is included/exc in a set of changes."
author: "mjsantani"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# featureTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A complex type that defines a single group, role, or AU that is included in a set of changes.
Modeled after include and exclude targets for experience consistency, but all membership targets will soon evolve to the new feature collection model per new collection guidance.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the entity targeted.|
|targetType|featureTargetType|The kind of entity targeted, e.g. group, role, administrative unit. The possible values are: `group`, `administrativeUnit`, `role`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.featureTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.featureTarget",
  "targetType": "String",
  "id": "String (identifier)"
}
```

