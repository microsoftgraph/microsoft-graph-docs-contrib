---
title: "extractMailPrefixTransformation resource type"
description: "Removes the domain suffix from either the email address or the user principal name."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# extractMailPrefixTransformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Removes the domain suffix from either the email address or the user principal name.

Inherits from [customClaimTransformation](../resources/customclaimtransformation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|input|[transformationAttribute](../resources/transformationattribute.md)|The input attribute that provides the source for the transformation. This parameter is required if it's the first or only transformation in the list of transformations to be applied. Subsequent transformations use the output of the prior transformation as input. Inherited from [customClaimTransformation](../resources/customclaimtransformation.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.extractMailPrefixTransformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.extractMailPrefixTransformation",
  "input": {
    "@odata.type": "microsoft.graph.transformationAttribute"
  }
}
```
