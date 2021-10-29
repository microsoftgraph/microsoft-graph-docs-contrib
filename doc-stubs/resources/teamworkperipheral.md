---
title: "teamworkPeripheral resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkPeripheral resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkPeripherals](../api/teamworkperipheral-list.md)|[teamworkPeripheral](../resources/teamworkperipheral.md) collection|Get a list of the [teamworkPeripheral](../resources/teamworkperipheral.md) objects and their properties.|
|[Get teamworkPeripheral](../api/teamworkperipheral-get.md)|[teamworkPeripheral](../resources/teamworkperipheral.md)|Read the properties and relationships of a [teamworkPeripheral](../resources/teamworkperipheral.md) object.|
|[Update teamworkPeripheral](../api/teamworkperipheral-update.md)|[teamworkPeripheral](../resources/teamworkperipheral.md)|Update the properties of a [teamworkPeripheral](../resources/teamworkperipheral.md) object.|
|[Delete teamworkPeripheral](../api/teamworkperipheral-delete.md)|None|Deletes a [teamworkPeripheral](../resources/teamworkperipheral.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|productId|String|**TODO: Add Description**|
|vendorId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkPeripheral",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkPeripheral",
  "id": "String (identifier)",
  "displayName": "String",
  "vendorId": "String",
  "productId": "String"
}
```

