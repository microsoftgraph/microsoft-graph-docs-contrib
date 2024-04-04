---
title: "ifEmptyTransformation resource type"
description: "Outputs an attribute or constant if the input is null or empty."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# ifEmptyTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Outputs an attribute or constant if the input is null or empty.

Inherits from [customClaimTransformation](../resources/customclaimtransformation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|input|[transformationAttribute](../resources/transformationattribute.md)|The input attribute that provides the source for the transformation. This parameter is required if it's the first or only transformation in the list of transformations to be applied. Subsequent transformations use the output of the prior transformation as input. Inherited from [customClaimTransformation](../resources/customclaimtransformation.md).|
|output|[transformationAttribute](../resources/transformationattribute.md)|The output attribute used, based on the condition applied in this transformation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.ifEmptyTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ifEmptyTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "output": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  }
}
```
