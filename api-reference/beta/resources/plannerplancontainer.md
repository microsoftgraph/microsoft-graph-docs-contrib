---
title: "plannerPlanContainer resource type"
description: "Represents a container for a plannerPlan. The container is a resource that specifies authorization rules and the lifetime of the plan."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerPlanContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for a [plannerPlan](plannerPlan.md). The container is a resource that specifies authorization rules and the lifetime of the plan. This means that only the people who are authorized to work with the resource containing the plan will be able to work with the plan and the tasks within it. When the containing resource is deleted, the contained plans are also deleted. Properties of **plannerPlanContainer** cannot be changed after the plan is created.

Planner currently supports the container types listed in the following table. When creating a plan, the **containerUrl** property must be specified with the path of the resource identified in the table.

|Type|Description|Path to the resource|
|----|-----------|--------------------|
|group| Plan is contained by a [group](group.md).| `https://graph.microsoft.com/beta/groups/<id>` |
|roster| Plan is contained by a [plannerRoster](plannerroster.md). | `https://graph.microsoft.com/beta/planner/rosters/<id>` |
|project| Plan is contained by a Project from [Microsoft Project for the web](/project-for-the-web/projectforweb-admin-home). | Microsoft Project currently doesn't have a resource path on Microsoft Graph. Project details and members can be managed from [Microsoft Project](https://project.microsoft.com). |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|containerId|String|The identifier of the resource that contains the plan. Optional.|
|type|plannerContainerType|The type of the resource that contains the plan. For supported types, see the previous table. Possible values are: `group`, `unknownFutureValue`, `roster`, and `project`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `roster`, `project`. Optional.|
|url|String|The full canonical URL of the container. Optional.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerPlanContainer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerPlanContainer",
  "url": "String",
  "containerId": "String",
  "type": "String"
}
```

