---
title: "toLowercaseTransformation resource type"
description: "Converts the characters of the selected attribute into lowercase characters."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
ms.date: 06/11/2024
---

# toLowercaseTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Converts the characters of the selected attribute into lowercase characters.

Inherits from [customClaimTransformation](../resources/customclaimtransformation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|input|[transformationAttribute](../resources/transformationattribute.md)|The input attribute that provides the source for the transformation. This parameter is required if it is the first or only transformation in the list of transformations to be applied. Subsequent transformations use the output of the prior transformation as input. Inherited from [customClaimTransformation](../resources/customclaimtransformation.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.toLowercaseTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.toLowercaseTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  }
}
```

