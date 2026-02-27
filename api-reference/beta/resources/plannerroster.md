---
title: "plannerRoster resource type"
description: "Represents a collection of users who are collaborating on a plannerPlan."
author: "tarkansevilmis"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 06/05/2024
---

# plannerRoster resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of users who are collaborating on a [plannerPlan](plannerplan.md). A **plannerRoster** is a simple set of users, where everyone has the same level of permissions and they can be created by everyone, unless disabled by the tenant administrator. A **plannerRoster** can contain one plan.

Deleting a **plannerRoster** also deletes the plan and all tasks in the plan. A **plannerRoster** is also automatically deleted under the following conditions:

* The **plannerRoster** doesn't contain a plan 24 hours after its creation. Membership information is erased within 30 days of this deletion.
* The **plannerRoster** doesn't have any users remaining in the membership list because the last user removed themselves. Roster, its plan, and all contained tasks are deleted within 30 days of this operation.
* The **plannerRoster** doesn't have any users remaining in the membership list because the last user was permanently deleted. Roster, its plan, and all contained tasks are deleted immediately. Deleted users are permanently erased within 30 days of their deletion; however, tenant administrators can also choose to permanently delete users without this delay.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/planner-post-rosters.md)|[plannerRoster](../resources/plannerroster.md)|Create a new [plannerRoster](../resources/plannerroster.md) object.|
|[Get](../api/plannerroster-get.md)|[plannerRoster](../resources/plannerroster.md)|Read the properties and relationships of a [plannerRoster](../resources/plannerroster.md) object.|
|[Delete](../api/plannerroster-delete.md)|None|Delete a [plannerRoster](../resources/plannerroster.md) object.|
|[List members of roster](../api/plannerroster-list-members.md)|[plannerRosterMember](../resources/plannerrostermember.md) collection|Get the plannerRosterMember resources from the members navigation property.|
|[Add member to roster](../api/plannerroster-post-members.md)|[plannerRosterMember](../resources/plannerrostermember.md)|Create a new plannerRosterMember object.|
|[List plans in roster](../api/plannerroster-list-plans.md)|[plannerPlan](../resources/plannerplan.md) collection|Get the plannerPlan resources from the plans navigation property.|
|[List user's plans in rosters](../api/planneruser-list-rosterplans.md)|[plannerPlan](plannerplan.md) collection| Get the [plannerPlans](plannerplan.md) contained by the [plannerRosters](plannerroster.md) that the user is a member.|
|[Assign sensitivity label](../api/plannerroster-assignsensitivitylabel.md)|[plannerRoster](../resources/plannerroster.md)]|Assign a sensitivity label to a [plannerRoster](../resources/plannerroster.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| assignedSensitivityLabel | [sensitivityLabelAssignmentMethod](../resources/sensitivitylabelassignment.md#sensitivitylabelassignmentmethod-values)| The sensitivity label applied to the roster. If mandatory labeling is enabled for the user and no label is specified, the user can't create the roster. Also, if labels are mandatory for the user, the user can't change the label of the roster to `null`. The possible values are: `standard`, `privileged`, `auto`, `unknownFutureValue`.|
|id|String|Identifier of the **plannerRoster**. Read only. Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[plannerRosterMember](../resources/plannerrostermember.md) collection|Retrieves the members of the **plannerRoster**.|
|plans|[plannerPlan](../resources/plannerplan.md) collection|Retrieves the plans contained by the **plannerRoster**.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerRoster",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerRoster",
  "assignedSensitivityLabel": "#microsoft.graph.sensitivityLabelAssignment",
  "id": "String (identifier)"
}
```

