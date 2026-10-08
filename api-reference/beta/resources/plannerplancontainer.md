---
title: "plannerPlanContainer resource type"
description: "Represents a container for a planner plan. The container is a resource that specifies authorization rules and the lifetime of the plan."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# plannerPlanContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for a [plannerPlan](plannerPlan.md). The container is a resource that specifies authorization rules and the lifetime of the plan. Only people authorized to work with the resource containing the plan are allowed to work with the plan and its tasks. When the containing resource is deleted, the contained plans are also deleted. Properties of **plannerPlanContainer** are only changed when a plan is moved from one container to another, using [plan move to container](../api/plannerplan-movetocontainer.md).

Planner currently supports the container types listed in the following table. When a request is received to create a plan, the **containerUrl** property must be specified with the path of the resource identified in the table.

|Type|Description|Path to the resource|
|----|-----------|--------------------|
|driveItem| Plan is contained by a [driveItem](driveitem.md). | `https://graph.microsoft.com/beta/drives/<driveId>/items/<itemId>`|
|group| Plan is contained by a [group](group.md).| `https://graph.microsoft.com/beta/groups/<id>` |
|plannerTask| Plan is contained by a [plannerTask](plannertask.md). | `https://graph.microsoft.com/beta/planner/tasks/<taskId>` |
|project| Plan is contained by a Project from [Microsoft Project for the web](/project-for-the-web/projectforweb-admin-home). | Microsoft Project currently doesn't have a resource path on Microsoft Graph. Project details and members can be managed from [Microsoft Project](https://project.microsoft.com). |
|roster| Plan is contained by a [plannerRoster](plannerroster.md). | `https://graph.microsoft.com/beta/planner/rosters/<id>` |
|teamsChannel| Plan is contained by a Teams [channel](channel.md). | `https://graph.microsoft.com/beta/teams/<teamId>/channels/<channelId>` |
|user| Plan is contained by a [User](user.md) | `https://graph.microsoft.com/beta/users/<id>` |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|containerId|String|The identifier of the resource that contains the plan. Optional.|
|type|plannerContainerType|The type of the resource that contains the plan. For supported types, see the previous table. The possible values are: `group`, `unknownFutureValue`, `roster`, `project`, `driveItem`, `user`, `teamsChannel`, and `plannerTask`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `roster`, `project`, `driveItem`, `user`, `teamsChannel`, and `plannerTask`. Optional.|
|url|String|The full canonical URL of the container. Optional.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerPlanContainer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerPlanContainer",
  "containerId": "String",
  "type": "String",
  "url": "String"
}
```

