---
title: "extractNumberTransformation resource type"
description: "Returns the numerical part of the string."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# extractNumberTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns the numerical part of the string.

Inherits from [customClaimTransformation](../resources/customclaimtransformation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|input|[transformationAttribute](../resources/transformationattribute.md)|The input attribute that will provide the source for the transformation. This parameter is required if it is the first or only transformation in the list of transformations to be applied. Subsequent transformations will use the output of the prior transformation as input. Inherited from [customClaimTransformation](../resources/customclaimtransformation.md).|
|type|transformationExtractType|The type of extract transformation to apply. The possible values are: `prefix`, `suffix`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.extractNumberTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.extractNumberTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "type": "String"
}
```
