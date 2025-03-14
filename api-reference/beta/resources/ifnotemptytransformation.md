---
title: "ifNotEmptyTransformation resource type"
description: " Contains the output of a transformation if the input is not null or empty."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
ms.date: 06/11/2024
---

# ifNotEmptyTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

 Contains the output of a transformation if the input is not null or empty.

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
  "@odata.type": "microsoft.graph.ifNotEmptyTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ifNotEmptyTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "output": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  }
}
```
