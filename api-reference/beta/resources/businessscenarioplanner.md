---
title: "businessScenarioPlanner resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# businessScenarioPlanner resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains Planner related content for the scenario, allowing both configuration of Planner behavior and accessing the scenario data in Planner.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get businessScenarioPlanner](../api/businessscenarioplanner-get.md)|[businessScenarioPlanner](../resources/businessscenarioplanner.md)|Read the properties and relationships of a [businessScenarioPlanner](../resources/businessscenarioplanner.md) object.|
|[Update businessScenarioPlanner](../api/businessscenarioplanner-update.md)|[businessScenarioPlanner](../resources/businessscenarioplanner.md)|Update the properties of a [businessScenarioPlanner](../resources/businessscenarioplanner.md) object.|
|[getPlan](../api/businessscenarioplanner-getplan.md)|[businessScenarioPlanReference](../resources/businessscenarioplanreference.md)|Gets the reference to the Plan corresponding to the given target. This plan contains any tasks created for the scenario for this the given target.|
|[Get plannerPlanConfiguration](../api/businessscenarioplanner-get-planconfiguration.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|Get the plannerPlanConfiguration from the planConfiguration navigation property.|
|[Get plannerTaskConfiguration](../api/businessscenarioplanner-get-taskconfiguration.md)|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|Get the plannerTaskConfiguration from the taskConfiguration navigation property.|
|[List tasks](../api/businessscenarioplanner-list-tasks.md)|[businessScenarioTask](../resources/businessscenariotask.md) collection|Get the businessScenarioTasks from the tasks navigation property.|
|[Create businessScenarioTask](../api/businessscenarioplanner-post-tasks.md)|[businessScenarioTask](../resources/businessscenariotask.md)|Create a new businessScenarioTask object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier of businessScenarioPlanner object. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|planConfiguration|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|The configuration of Planner plans that will be created for the scenario.|
|taskConfiguration|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|The configuration of Planner tasks that will be created for the scenario.|
|tasks|[businessScenarioTask](../resources/businessscenariotask.md) collection|The Planner tasks for the scenario|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.businessScenarioPlanner",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.businessScenarioPlanner",
  "id": "String (identifier)"
}
```

