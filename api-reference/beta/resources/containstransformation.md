---
title: "containsTransformation resource type"
description: "Contains the output of a transformation if the input matches the specified value."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
ms.date: 06/11/2024
---

# containsTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the output of a transformation if the input matches the specified value.

Inherits from [customClaimTransformation](../resources/customclaimtransformation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|input|[transformationAttribute](../resources/transformationattribute.md)|The input attribute that provides the source for the transformation. This parameter is required if it's the first or only transformation in the list of transformations to be applied. Subsequent transformations use the output of the prior transformation as input. Inherited from [customClaimTransformation](../resources/customclaimtransformation.md).|
|output|[transformationAttribute](../resources/transformationattribute.md)|The output attribute that is used based on the condition applied in this transformation.|
|value|String|The value to be used as part of the transformation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.containsTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.containsTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "output": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "value": "String"
}
```
