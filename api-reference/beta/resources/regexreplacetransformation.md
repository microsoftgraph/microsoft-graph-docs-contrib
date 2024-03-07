---
title: "regexReplaceTransformation resource type"
description: "Creates a new value by performing a regex replacement on the input."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# regexReplaceTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Creates a new value by performing a regex replacement on the input.

Inherits from [customClaimTransformation](../resources/customclaimtransformation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|input|[transformationAttribute](../resources/transformationattribute.md)|The input attribute that will provide the source for the transformation. This parameter is required if it is the first or only transformation in the list of transformations to be applied. Subsequent transformations will use the output of the prior transformation as input. Inherited from [customClaimTransformation](../resources/customclaimtransformation.md).|
|regex|String|The regular expression which is to be applied on the input directory attribute or constant.|
|replacement|String|The transformation output replacement pattern with regular expression output group(s) and input parameter group(s) reference.|
|additionalAttributes|[sourcedAttribute](../resources/sourcedattribute.md) collection|Additional attributes that can be referenced within the replacement string.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.regexReplaceTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.regexReplaceTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  },
  "regex": "String",
  "replacement": "String",
  "additionalAttributes": [
    {
      "@odata.type": "microsoft.graph.sourcedAttribute"
    }
  ]
}
```
