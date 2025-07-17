---
title: "plannerPlanDetails resource type"
description: "Represents the additional information about a plan."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# plannerPlanDetails resource type

Namespace: microsoft.graph

Represents the additional information about a plan. Each [plan](plannerplan.md) object has a details object.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plan details](../api/plannerplandetails-get.md) | [plannerPlanDetails](plannerplandetails.md) |Read properties and relationships of **plannerPlanDetails** object.|
|[Update plan details](../api/plannerplandetails-update.md) | [plannerPlanDetails](plannerplandetails.md)	|Update **plannerPlanDetails** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|categoryDescriptions|[plannerCategoryDescriptions](plannercategorydescriptions.md)|An object that specifies the descriptions of the 25 categories that can be associated with tasks in the plan.|
|id|String| The unique identifier for the plan details. It's 28 characters long and case-sensitive. [Format validation](planner-identifiers-disclaimer.md) is done on the service. Read-only.|
|sharedWith|[plannerUserIds](planneruserids.md)|Set of user IDs that this plan is shared with. If you're using Microsoft 365 groups, use the Groups API to manage group membership to share the [group's](group.md) plan. You can also add existing members of the group to this collection, although it isn't required for them to access the plan owned by the group. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.plannerPlanDetails"
}-->

```json
{
  "categoryDescriptions": {"@odata.type": "microsoft.graph.plannerCategoryDescriptions"},
  "id": "String (identifier)",
  "sharedWith": {"@odata.type": "microsoft.graph.plannerUserIds"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerPlanDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

