---
title: "accessReviewInactiveUsersQueryScope resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# accessReviewInactiveUsersQueryScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [accessReviewQueryScope](../resources/accessreviewqueryscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inactiveDuration|Duration|**TODO: Add Description**|
|query|String|**TODO: Add Description** Inherited from [accessReviewQueryScope](../resources/accessreviewqueryscope.md)|
|queryRoot|String|**TODO: Add Description** Inherited from [accessReviewQueryScope](../resources/accessreviewqueryscope.md)|
|queryType|String|**TODO: Add Description** Inherited from [accessReviewQueryScope](../resources/accessreviewqueryscope.md)|

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

