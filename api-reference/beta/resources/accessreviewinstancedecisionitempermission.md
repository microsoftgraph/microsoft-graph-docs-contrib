---
title: "accessReviewInstanceDecisionItemPermission resource type"
description: "Represents the permission for which the principal has to access the resource in an accessReviewInstanceDecisionItem object."
author: "dotnet-enthusiast"
ms.date: 11/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemPermission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

In an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md), the **permission** property represents the permission that grants a principal access to a resource. **accessReviewInstanceDecisionItemPermission** is an open type that allows other properties to be passed in.


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

