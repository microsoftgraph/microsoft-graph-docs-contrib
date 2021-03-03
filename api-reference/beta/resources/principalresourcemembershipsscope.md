---
title: "principalResourceMembershipsScope resource type"
description: "**TODO: Add Description**"
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# principalResourceMembershipsScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

principalResourceMembershipsScope allows for the selection of a collection of principal scopes and a collection of resource scopes to review access of the selected principals to the selected resources.

Inherits from [accessReviewScope](../resources/accessreviewscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|principalScopes|[accessReviewScope](../resources/accessreviewscope.md) collection|Defines the scopes of the principals to be included in an access review|
|resourceScopes|[accessReviewScope](../resources/accessreviewscope.md) collection|Defines the scopes of the resources that access will be reviewed to|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.principalResourceMembershipsScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
  "principalScopes": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ],
  "resourceScopes": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ]
}
```
