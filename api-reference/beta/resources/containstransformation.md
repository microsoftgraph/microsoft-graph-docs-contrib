---
title: "containsTransformation resource type"
description: "Outputs an attribute or constant if the input matches the specified value."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# containsTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Outputs an attribute or constant if the input matches the specified value.

Inherits from [customClaimTransformation](../resources/customclaimtransformation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|input|[transformationAttribute](../resources/transformationattribute.md)|The input attribute that will provide the source for the transformation. This parameter is required if it is the first or only transformation in the list of transformations to be applied. Subsequent transformations will use the output of the prior transformation as input. Inherited from [customClaimTransformation](../resources/customclaimtransformation.md).|
|output|[transformationAttribute](../resources/transformationattribute.md)|The output attribute that will be used based on the condition applied in this transformation.|
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
