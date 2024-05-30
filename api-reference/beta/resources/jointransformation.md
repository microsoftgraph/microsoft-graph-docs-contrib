---
title: "joinTransformation resource type"
description: "Creates a new value by joining two attributes."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# joinTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Creates a new value by joining two attributes. Optionally, you can use a separator between the two attributes.

Inherits from [customClaimTransformation](../resources/customclaimtransformation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|input|[transformationAttribute](../resources/transformationattribute.md)|The input attribute that provides the source for the transformation. This parameter is required if it's the first or only transformation in the list of transformations to be applied. Subsequent transformations use the output of the prior transformation as input. Inherited from [customClaimTransformation](../resources/customclaimtransformation.md).|
|input2|[transformationAttribute](../resources/transformationattribute.md)|The second input used in the join operation.|
|separator|String|The separator value to be used.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.joinTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.joinTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "input2": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "separator": "String"
}
```
