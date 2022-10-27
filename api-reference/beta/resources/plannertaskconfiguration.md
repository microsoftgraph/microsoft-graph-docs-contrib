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

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List plannerTaskConfigurations](../api/businessscenarioplanner-list-taskconfiguration.md)|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md) collection|Get a list of the [plannerTaskConfiguration](../resources/plannertaskconfiguration.md) objects and their properties.|
|[Create plannerTaskConfiguration](../api/businessscenarioplanner-post-taskconfiguration.md)|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|Create a new [plannerTaskConfiguration](../resources/plannertaskconfiguration.md) object.|
|[Get plannerTaskConfiguration](../api/plannertaskconfiguration-get.md)|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|Read the properties and relationships of a [plannerTaskConfiguration](../resources/plannertaskconfiguration.md) object.|
|[Update plannerTaskConfiguration](../api/plannertaskconfiguration-update.md)|[plannerTaskConfiguration](../resources/plannertaskconfiguration.md)|Update the properties of a [plannerTaskConfiguration](../resources/plannertaskconfiguration.md) object.|
|[Delete plannerTaskConfiguration](../api/businessscenarioplanner-delete-taskconfiguration.md)|None|Delete a [plannerTaskConfiguration](../resources/plannertaskconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|editPolicy|[plannerTaskPolicy](../resources/plannertaskpolicy.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

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

