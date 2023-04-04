---
title: "plannerPlanContainer resource type"
description: "Represents a container for a plannerPlan. The container is a resource that specifies authorization rules and the lifetime of the plan."
author: "TarkanSevilmis"
ms.localizationpriority: high
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerPlanContainer resource type

Namespace: microsoft.graph

Represents a container for a [plannerPlan](plannerplan.md). The container is a resource that specifies authorization rules and the lifetime of the plan. This means that only the people who are authorized to work with the resource containing the plan will be able to work with the plan and the tasks within it. When the containing resource is deleted, the contained plans are also deleted. The properties of the **plannerPlanContainer** cannot be changed after the plan is created.

Microsoft Planner currently supports the container types listed in the following table. When you create a plan, you must specify the **containerUrl** property with the path of the resource identified in the following table.

|Type|Description|Path to the resource|
|----|-----------|--------------------|
|group| Plan is contained by a [group](group.md).| `https://graph.microsoft.com/v1.0/groups/{id}`|
|roster| Plan is contained by a **plannerRoster** | `https://graph.microsoft.com/beta/planner/rosters/{id}`. Rosters as containers for plans (**plannerRoster** resources) are currently accessible only through the beta endpoint.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|containerId|String|The identifier of the resource that contains the plan. Optional.|
|type|plannerContainerType| The type of the resource that contains the plan. For supported types, see the previous table. Possible values are: `group`, `unknownFutureValue`, `roster`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `roster`. Optional.|
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
  "containerId": "String",
  "type": "String",
  "url": "String"
}
```

