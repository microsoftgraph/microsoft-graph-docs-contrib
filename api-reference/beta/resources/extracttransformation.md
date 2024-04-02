---
title: "extractTransformation resource type"
description: "Returns the substring after, between or before it matches the specified value.*"
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# extractTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns the substring after, between or before it matches the specified value.

Inherits from [customClaimTransformation](../resources/customclaimtransformation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|input|[transformationAttribute](../resources/transformationattribute.md)|The input attribute that provides the source for the transformation. This parameter is required if it's the first or only transformation in the list of transformations to be applied. Subsequent transformations use the output of the prior transformation as input. Inherited from [customClaimTransformation](../resources/customclaimtransformation.md).|
|type|String|The type of extract transformation to apply.|
|value|String|The value to be used as part of the transformation.|
|value2|String|An optional secondary value to be used when dealing with `between` extract operations.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.extractTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.extractTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "type": "String",
  "value": "String",
  "value2": "String"
}
```
