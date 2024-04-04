---
title: "substringTransformation resource type"
description: "Creates a new value by extracting a substring, you can provide a zero-based starting index for the substring."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# substringTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Creates a new value by extracting a substring, you can provide a zero-based starting index for the substring.

Inherits from [customClaimTransformation](../resources/customclaimtransformation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|index|Int32|The start index of the substring operation, where 0 is the first character in the string.|
|input|[transformationAttribute](../resources/transformationattribute.md)|The input attribute that will provide the source for the transformation. This parameter is required if it is the first or only transformation in the list of transformations to be applied. Subsequent transformations use the output of the prior transformation as input. Inherited from [customClaimTransformation](../resources/customclaimtransformation.md).|
|length|Int32|The maximum length of the string, starting from the provided index.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.substringTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.substringTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "index": "Integer",
  "length": "Integer"
}
```
