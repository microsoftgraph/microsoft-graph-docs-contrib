---
title: "accessReviewInstanceDecisionItemPermission resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 11/05/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemPermission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents the permission that grants a principal access to a resource that is represented through an [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) object. **accessReviewInstanceDecisionItemAzureRoleResource** is an open type that allows for other properties to be passed in.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String| The description of the permission. |
|displayName|String| The display name of the permission. |
|id|String| The identifier of the permission. |
|type|String| The type of the permission. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemPermission"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemPermission",
  "id": "String",
  "displayName": "String",
  "type": "String",
  "description": "String"
}
```

