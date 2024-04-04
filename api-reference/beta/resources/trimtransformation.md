---
title: "trimTransformation resource type"
description: "Eliminates leading and trailing characters that match the provided input. "
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# trimTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Eliminates leading and trailing characters that match the provided input. 

Inherits from [customClaimTransformation](../resources/customclaimtransformation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|input|[transformationAttribute](../resources/transformationattribute.md)|Attribute that provides the source for the transformation. This parameter is required if it is the first or only transformation in the list of transformations to be applied. Subsequent transformations use the output of the prior transformation as input. Inherited from [customClaimTransformation](../resources/customclaimtransformation.md).|
|type|transformationTrimType|The type of trim transformation to apply. The possible values are: `leading`, `trailing`, `leadingAndTrailing`, `unknownFutureValue`.|
|value|String|The value to be used as part of the transformation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trimTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trimTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "type": "String",
  "value": "String"
}
```
