---
title: "transformationAttribute resource type"
description: "Attribute used to support transformations."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# transformationAttribute resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Attribute used to support transformations.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attribute|[customClaimAttributeBase](../resources/customclaimattributebase.md)|Attribute to be used as input for the transformation.|
|treatAsMultiValue|Boolean|This flag is only relevant in the case where the attribute is multivalued. By default, transformations will only be applied to the first element in a multi-valued claim, however setting this flag to 'true' ensures the transformation will be applied to all values, resulting in a multivalued outputs|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.transformationAttribute"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.transformationAttribute",
  "attribute": {
    "@odata.type": "microsoft.graph.customClaimAttributeBase"
  },
  "treatAsMultiValue": "Boolean"
}
```
