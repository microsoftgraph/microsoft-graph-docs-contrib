---
title: "businessScenario resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# businessScenario resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List businessScenarios](../api/solutionsroot-list-businessscenarios.md)|[businessScenario](../resources/businessscenario.md) collection|Get a list of the [businessScenario](../resources/businessscenario.md) objects and their properties.|
|[Create businessScenario](../api/solutionsroot-post-businessscenarios.md)|[businessScenario](../resources/businessscenario.md)|Create a new [businessScenario](../resources/businessscenario.md) object.|
|[Get businessScenario](../api/businessscenario-get.md)|[businessScenario](../resources/businessscenario.md)|Read the properties and relationships of a [businessScenario](../resources/businessscenario.md) object.|
|[Update businessScenario](../api/businessscenario-update.md)|[businessScenario](../resources/businessscenario.md)|Update the properties of a [businessScenario](../resources/businessscenario.md) object.|
|[Delete businessScenario](../api/solutionsroot-delete-businessscenarios.md)|None|Delete a [businessScenario](../resources/businessscenario.md) object.|
|[List businessScenarioPlanner](../api/businessscenario-list-planner.md)|[businessScenarioPlanner](../resources/businessscenarioplanner.md) collection|Get the businessScenarioPlanner resources from the planner navigation property.|
|[Create businessScenarioPlanner](../api/businessscenario-post-planner.md)|[businessScenarioPlanner](../resources/businessscenarioplanner.md)|Create a new businessScenarioPlanner object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|ownerAppIds|String collection|**TODO: Add Description**|
|uniqueName|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|planner|[businessScenarioPlanner](../resources/businessscenarioplanner.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.businessScenario",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.businessScenario",
  "id": "String (identifier)",
  "displayName": "String",
  "uniqueName": "String",
  "ownerAppIds": [
    "String"
  ],
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```

