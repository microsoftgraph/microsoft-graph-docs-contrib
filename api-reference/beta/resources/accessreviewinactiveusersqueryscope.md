---
title: "accessReviewInactiveUsersQueryScope resource type"
description: "A type of accessReviewQueryScope which allows for selection of only inactive users to be in the scope of an access review."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewInactiveUsersQueryScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

A type of [accessReviewQueryScope](../resources/accessreviewqueryscope.md) which allows for selection of only inactive users to be in the scope of an access review.

Inherits from [accessReviewQueryScope](../resources/accessreviewqueryscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inactiveDuration|Duration|Defines the length of the duration period of inactivity. Inactivity is based on the last sign in date of the user.|
|query|String|Inherited from [accessReviewQueryScope](../resources/accessreviewqueryscope.md)|
|queryRoot|String|Inherited from [accessReviewQueryScope](../resources/accessreviewqueryscope.md)|
|queryType|String|Inherited from [accessReviewQueryScope](../resources/accessreviewqueryscope.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInactiveUsersQueryScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
  "query": "String",
  "queryType": "String",
  "queryRoot": "String",
  "inactiveDuration": "String (duration)"
}
```
