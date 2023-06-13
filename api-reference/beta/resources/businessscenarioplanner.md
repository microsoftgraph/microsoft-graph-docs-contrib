---
title: "businessScenarioPlanner resource type"
description: "Contains Microsoft Planner-related content for the scenario, allowing both configuration of Planner behavior and accessing the scenario data in Planner."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# businessScenarioPlanner resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains Microsoft Planner-related content for the scenario, allowing both configuration of Planner behavior and accessing the scenario data in Planner.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get businessScenarioPlanner](../api/businessscenarioplanner-get.md)|[businessScenarioPlanner](../resources/businessscenarioplanner.md)|Read the properties and relationships of a [businessScenarioPlanner](../resources/businessscenarioplanner.md) object.|
|[getPlan](../api/businessscenarioplanner-getplan.md)|[businessScenarioPlanReference](../resources/businessscenarioplanreference.md)|Get information about the [plannerPlan](../resources/plannerplan.md) mapped to a given target.|
|[Get plannerPlanConfiguration](../api/plannerplanconfiguration-get.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|Get the **plannerPlanConfiguration** from the **planConfiguration** navigation property.|
|[Get plannerTaskConfiguration](../api/plannertaskconfiguration-get.md)|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|Get the **plannerTaskConfiguration** from the **taskConfiguration** navigation property.|
|[List tasks](../api/businessscenarioplanner-list-tasks.md)|[businessScenarioTask](../resources/businessscenariotask.md) collection|Get the **businessScenarioTasks** from the **tasks** navigation property.|
|[Create businessScenarioTask](../api/businessscenarioplanner-post-tasks.md)|[businessScenarioTask](../resources/businessscenariotask.md)|Create a new **businessScenarioTask** object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the **businessScenarioPlanner** object. Inherited from [entity](../resources/entity.md). Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|planConfiguration|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|The configuration of Planner plans that will be created for the scenario.|
|taskConfiguration|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|The configuration of Planner tasks that will be created for the scenario.|
|tasks|[businessScenarioTask](../resources/businessscenariotask.md) collection|The Planner tasks for the scenario.|

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
