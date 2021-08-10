---
title: "security resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# security resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List securities](../api/security-list.md)|[security](../resources/security.md) collection|Get a list of the [security](../resources/security.md) objects and their properties.|
|[Create security](../api/security-create.md)|[security](../resources/security.md)|Create a new [security](../resources/security.md) object.|
|[Get security](../api/security-get.md)|[security](../resources/security.md)|Read the properties and relationships of a [security](../resources/security.md) object.|
|[Update security](../api/security-update.md)|[security](../resources/security.md)|Update the properties of a [security](../resources/security.md) object.|
|[Delete security](../api/security-delete.md)|None|Deletes a [security](../resources/security.md) object.|
|[List attackSimulationRoot](../api/security-list-attacksimulation.md)|[attackSimulationRoot](../resources/attacksimulationroot.md) collection|Get the attackSimulationRoot resources from the attackSimulation navigation property.|
|[Create attackSimulationRoot](../api/security-post-attacksimulation.md)|[attackSimulationRoot](../resources/attacksimulationroot.md)|Create a new attackSimulationRoot object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|attackSimulation|[attackSimulationRoot](../resources/attacksimulationroot.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security"
}
```

