---
title: "plannerTaskConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerTaskConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration of [plannerTasks](../resources/plannertask.md) created for a [businessScenario](../resources/businessscenario.md)


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get plannerTaskConfiguration](../api/plannertaskconfiguration-get.md)|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|Read the properties and relationships of a [plannerTaskConfiguration](../resources/plannertaskconfiguration.md) object.|
|[Update plannerTaskConfiguration](../api/plannertaskconfiguration-update.md)|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|Update the properties of a [plannerTaskConfiguration](../resources/plannertaskconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|editPolicy|[plannerTaskPolicy](../resources/plannertaskpolicy.md)|Policy configuration for tasks created for the scenario getting edited outside of the scenario.|
|id|String|The identifier of the task configuration. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerTaskConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskConfiguration",
  "id": "String (identifier)",
  "editPolicy": {
    "@odata.type": "microsoft.graph.plannerTaskPolicy"
  }
}
```

