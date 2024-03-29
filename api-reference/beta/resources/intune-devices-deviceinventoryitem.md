---
title: "deviceInventoryItem resource type"
description: "Abstract type to represent a single piece of inventory data that was collected on a device. For example, this could represent a single network adapter that was present on a device"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceInventoryItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Abstract type to represent a single piece of inventory data that was collected on a device. For example, this could represent a single network adapter that was present on a device

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceInventoryItems](../api/intune-devices-deviceinventoryitem-list.md)|[deviceInventoryItem](../resources/intune-devices-deviceinventoryitem.md) collection|List properties and relationships of the [deviceInventoryItem](../resources/intune-devices-deviceinventoryitem.md) objects.|
|[Get deviceInventoryItem](../api/intune-devices-deviceinventoryitem-get.md)|[deviceInventoryItem](../resources/intune-devices-deviceinventoryitem.md)|Read properties and relationships of the [deviceInventoryItem](../resources/intune-devices-deviceinventoryitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier for the inventory data|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceInventoryItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInventoryItem",
  "id": "String (identifier)"
}
```
