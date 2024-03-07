---
title: "customClaimConfiguration resource type"
description: "Claim configuration that details the conditions and sources of any custom claim."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# customClaimConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Claim configuration that details the conditions and sources of any custom claim. Typically, either an attribute or a set of transforms should be provided to source the claim value. In the case where both are provided then the output of the transforms will take priority, only if the transforms result in no output will the attribute value be used.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attribute|[customClaimAttributeBase](../resources/customclaimattributebase.md)|The attribute on which we source this property.|
|condition|[customClaimConditionBase](../resources/customclaimconditionbase.md)|The condition, if any, associated with this configuration.|
|transformations|[customClaimTransformation](../resources/customclaimtransformation.md) collection|An ordered list of transformations that will be applied in sequence.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customClaimConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customClaimConfiguration",
  "condition": {
    "@odata.type": "microsoft.graph.customClaimConditionBase"
  },
  "attribute": {
    "@odata.type": "microsoft.graph.customClaimAttributeBase"
  },
  "transformations": [
    {
      "@odata.type": "microsoft.graph.containsTransformation"
    }
  ]
}
```
