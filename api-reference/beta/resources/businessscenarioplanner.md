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

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List businessScenarioPlanners](../api/businessscenario-list-planner.md)|[businessScenarioPlanner](../resources/businessscenarioplanner.md) collection|Get a list of the [businessScenarioPlanner](../resources/businessscenarioplanner.md) objects and their properties.|
|[Create businessScenarioPlanner](../api/businessscenario-post-planner.md)|[businessScenarioPlanner](../resources/businessscenarioplanner.md)|Create a new [businessScenarioPlanner](../resources/businessscenarioplanner.md) object.|
|[Get businessScenarioPlanner](../api/businessscenarioplanner-get.md)|[businessScenarioPlanner](../resources/businessscenarioplanner.md)|Read the properties and relationships of a [businessScenarioPlanner](../resources/businessscenarioplanner.md) object.|
|[Update businessScenarioPlanner](../api/businessscenarioplanner-update.md)|[businessScenarioPlanner](../resources/businessscenarioplanner.md)|Update the properties of a [businessScenarioPlanner](../resources/businessscenarioplanner.md) object.|
|[Delete businessScenarioPlanner](../api/businessscenario-delete-planner.md)|None|Delete a [businessScenarioPlanner](../resources/businessscenarioplanner.md) object.|
|[getPlan](../api/businessscenarioplanner-getplan.md)|[businessScenarioPlanReference](../resources/businessscenarioplanreference.md)|**TODO: Add Description**|
|[List plannerPlanConfiguration](../api/businessscenarioplanner-list-planconfiguration.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md) collection|Get the plannerPlanConfiguration resources from the planConfiguration navigation property.|
|[Create plannerPlanConfiguration](../api/businessscenarioplanner-post-planconfiguration.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|Create a new plannerPlanConfiguration object.|
|[List plannerTaskConfiguration](../api/businessscenarioplanner-list-taskconfiguration.md)|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md) collection|Get the plannerTaskConfiguration resources from the taskConfiguration navigation property.|
|[Create plannerTaskConfiguration](../api/businessscenarioplanner-post-taskconfiguration.md)|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|Create a new plannerTaskConfiguration object.|
|[List tasks](../api/businessscenarioplanner-list-tasks.md)|[businessScenarioTask](../resources/businessscenariotask.md) collection|Get the businessScenarioTask resources from the tasks navigation property.|
|[Create businessScenarioTask](../api/businessscenarioplanner-post-tasks.md)|[businessScenarioTask](../resources/businessscenariotask.md)|Create a new businessScenarioTask object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|planConfiguration|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|**TODO: Add Description**|
|taskConfiguration|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|**TODO: Add Description**|
|tasks|[businessScenarioTask](../resources/businessscenariotask.md) collection|**TODO: Add Description**|

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

