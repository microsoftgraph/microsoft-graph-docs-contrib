---
title: "startsWithTransformation resource type"
description: "Outputs an attribute or constant if the input starts with the specified value."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# startsWithTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Outputs an attribute or constant if the input starts with the specified value.

Inherits from [customClaimTransformation](../resources/customclaimtransformation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|input|[transformationAttribute](../resources/transformationattribute.md)|Attribute that provides the source for the transformation. This parameter is required if it is the first or only transformation in the list of transformations to be applied. Subsequent transformations will use the output of the prior transformation as input. Inherited from [customClaimTransformation](../resources/customclaimtransformation.md).|
|output|[transformationAttribute](../resources/transformationattribute.md)|The output attribute used, based on the condition applied in this transformation.|
|value|String|The value to be used as part of the transformation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.startsWithTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.startsWithTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "output": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "value": "String"
}
```
