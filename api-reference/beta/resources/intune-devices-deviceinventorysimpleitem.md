---
title: "deviceInventorySimpleItem resource type"
description: "Inherited type of DeviceInventoryItem where the instance only has a list of properties that can be displayed in a table format"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceInventorySimpleItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Inherited type of DeviceInventoryItem where the instance only has a list of properties that can be displayed in a table format


Inherits from [deviceInventoryItem](../resources/intune-devices-deviceinventoryitem.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceInventorySimpleItems](../api/intune-devices-deviceinventorysimpleitem-list.md)|[deviceInventorySimpleItem](../resources/intune-devices-deviceinventorysimpleitem.md) collection|List properties and relationships of the [deviceInventorySimpleItem](../resources/intune-devices-deviceinventorysimpleitem.md) objects.|
|[Get deviceInventorySimpleItem](../api/intune-devices-deviceinventorysimpleitem-get.md)|[deviceInventorySimpleItem](../resources/intune-devices-deviceinventorysimpleitem.md)|Read properties and relationships of the [deviceInventorySimpleItem](../resources/intune-devices-deviceinventorysimpleitem.md) object.|
|[Create deviceInventorySimpleItem](../api/intune-devices-deviceinventorysimpleitem-create.md)|[deviceInventorySimpleItem](../resources/intune-devices-deviceinventorysimpleitem.md)|Create a new [deviceInventorySimpleItem](../resources/intune-devices-deviceinventorysimpleitem.md) object.|
|[Delete deviceInventorySimpleItem](../api/intune-devices-deviceinventorysimpleitem-delete.md)|None|Deletes a [deviceInventorySimpleItem](../resources/intune-devices-deviceinventorysimpleitem.md).|
|[Update deviceInventorySimpleItem](../api/intune-devices-deviceinventorysimpleitem-update.md)|[deviceInventorySimpleItem](../resources/intune-devices-deviceinventorysimpleitem.md)|Update the properties of a [deviceInventorySimpleItem](../resources/intune-devices-deviceinventorysimpleitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier for the inventory data Inherited from [deviceInventoryItem](../resources/intune-devices-deviceinventoryitem.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|properties|[deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md) collection|The list of properties for this inventory data. This property is read-only.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceInventorySimpleItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInventorySimpleItem",
  "id": "String (identifier)"
}
```
