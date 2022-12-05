---
title: "plannerTaskConfiguration resource type"
description: "Represents the configuration of plannerTasks created for a businessScenario."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# plannerTaskConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration of [plannerTasks](../resources/plannertask.md) created for a [businessScenario](../resources/businessscenario.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get plannerTaskConfiguration](../api/plannertaskconfiguration-get.md)|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|Read the properties and relationships of a [plannerTaskConfiguration](../resources/plannertaskconfiguration.md) object.|
|[Update plannerTaskConfiguration](../api/plannertaskconfiguration-update.md)|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|Update the properties of a [plannerTaskConfiguration](../resources/plannertaskconfiguration.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|editPolicy|[plannerTaskPolicy](../resources/plannertaskpolicy.md)|Policy configuration for tasks created for the businessScenario when they are being changed outside of the scenario.|
|id|String|The unique identifier for the task configuration. Inherited from [entity](../resources/entity.md).|

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
  "editPolicy": {"@odata.type": "microsoft.graph.plannerTaskPolicy"},
  "id": "String (identifier)"
}
```
