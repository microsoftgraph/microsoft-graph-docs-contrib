---
title: "customClaimTransformation resource type"
description: "Represents an abstract type for a single input attribute."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# customClaimTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract type for a single input attribute.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|input|[transformationAttribute](../resources/transformationattribute.md)|The input attribute that provides the source for the transformation. This parameter is required if it's the first or only transformation in the list of transformations to be applied. Subsequent transformations use the output of the prior transformation as input.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customClaimTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customClaimTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  }
}
```
