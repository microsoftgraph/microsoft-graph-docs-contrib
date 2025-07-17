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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the additional information about a plan. Each [plan](plannerplan.md) object has a details object.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plan details](../api/plannerplandetails-get.md) | [plannerPlanDetails](plannerplandetails.md) |Read the properties and relationships of a **plannerPlanDetails** object.|
|[Update plan details](../api/plannerplandetails-update.md) | [plannerPlanDetails](plannerplandetails.md)	|Update a **plannerPlanDetails** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|categoryDescriptions|[plannerCategoryDescriptions](plannercategorydescriptions.md)|An object that specifies the descriptions of the 25 categories that can be associated with tasks in the plan.|
|contextDetails|[plannerPlanContextDetailsCollection](plannerplancontextdetailscollection.md)|A collection of additional information associated with [plannerPlanContext](plannerplancontext.md) entries that are defined for the [plannerPlan](plannerplan.md) container. Read-only.|
|id|String|The unique identifier for the plan details. It's 28 characters long and case-sensitive. [Format validation](tasks-identifiers-disclaimer.md) is done on the service. Read-only.|
|sharedWith|[plannerUserIds](planneruserids.md)|The set of user IDs that this plan is shared with. If you're using Microsoft 365 groups, use the groups API to manage group membership to share the [group's](group.md) plan. You can also add existing members of the group to this collection, although it isn't required in order for them to access the plan owned by the group. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerPlanDetails"
}-->

```json
{
  "categoryDescriptions": {"@odata.type": "microsoft.graph.plannerCategoryDescriptions"},
  "contextDetails": {"@odata.type": "microsoft.graph.plannerPlanContextDetailsCollection"},
  "id": "String (identifier)",
  "sharedWith": {"@odata.type": "microsoft.graph.plannerUserIds"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerPlanDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


