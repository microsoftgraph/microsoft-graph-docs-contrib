---
title: "planContainer resource type"
description: "Identifies the container - a group, a Teams channel, or a user - that a plan belongs to. `containerType` and `containerId` are both required when filtering the top-level /planner/plans_v2 collection."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# planContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **container** property of the [plan](plan.md) resource uses this type.

Identifies the container - a group, a Teams channel, or a user - that a [plan](plan.md) belongs to. `containerType` and `containerId` are both required when filtering the top-level /planner/plans_v2 collection.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|containerId|String|ID of the container (group ID, user ID, or Teams channel ID).|
|containerType|plannerContainerType|Type of the container that owns the plan. The possible values are: `group`, `unknownFutureValue`, `roster`, `project`, `driveItem`, `user`, `teamsChannel`, `onlineMeeting`, `plannerTask`, `officeDocument`, `meeting`, `dataverseProject`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `roster` , `project` , `driveItem` , `user` , `teamsChannel` , `onlineMeeting` , `plannerTask` , `officeDocument` , `meeting` , `dataverseProject`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.planContainer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.planContainer",
  "containerId": "String",
  "containerType": "String"
}
```

