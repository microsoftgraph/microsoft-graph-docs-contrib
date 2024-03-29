---
title: "deviceInventory resource type"
description: "Represents the data collected on a device for a particular inventory type. These device inventory types may include Disk Drives, Network Adapters, etc."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceInventory resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the data collected on a device for a particular inventory type. These device inventory types may include Disk Drives, Network Adapters, etc.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceInventories](../api/intune-devices-deviceinventory-list.md)|[deviceInventory](../resources/intune-devices-deviceinventory.md) collection|List properties and relationships of the [deviceInventory](../resources/intune-devices-deviceinventory.md) objects.|
|[Get deviceInventory](../api/intune-devices-deviceinventory-get.md)|[deviceInventory](../resources/intune-devices-deviceinventory.md)|Read properties and relationships of the [deviceInventory](../resources/intune-devices-deviceinventory.md) object.|
|[Create deviceInventory](../api/intune-devices-deviceinventory-create.md)|[deviceInventory](../resources/intune-devices-deviceinventory.md)|Create a new [deviceInventory](../resources/intune-devices-deviceinventory.md) object.|
|[Delete deviceInventory](../api/intune-devices-deviceinventory-delete.md)|None|Deletes a [deviceInventory](../resources/intune-devices-deviceinventory.md).|
|[Update deviceInventory](../api/intune-devices-deviceinventory-update.md)|[deviceInventory](../resources/intune-devices-deviceinventory.md)|Update the properties of a [deviceInventory](../resources/intune-devices-deviceinventory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique catalog id for this inventory entity type|
|displayName|String|The localized display name of the entity. Example: "Disk Drives". This property is read-only.|
|lastSyncDateTime|DateTimeOffset|The date and time that the inventory data was last synced with Intune. The value cannot be modified and is automatically populated when the device performs a sync. The Timestamp type represents date and time information and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Read-only. This property is read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|instances|[deviceInventoryItem](../resources/intune-devices-deviceinventoryitem.md) collection|The data on the client device that have been collected for this inventory type. This property is read-only.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceInventory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInventory",
  "id": "String (identifier)",
  "displayName": "String",
  "lastSyncDateTime": "String (timestamp)"
}
```
