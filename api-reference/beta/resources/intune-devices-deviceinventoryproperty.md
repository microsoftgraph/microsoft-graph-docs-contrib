---
title: "deviceInventoryProperty resource type"
description: "Abstract type to represent a single property of an inventory entity"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceInventoryProperty resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Abstract type to represent a single property of an inventory entity

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceInventoryProperties](../api/intune-devices-deviceinventoryproperty-list.md)|[deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md) collection|List properties and relationships of the [deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md) objects.|
|[Get deviceInventoryProperty](../api/intune-devices-deviceinventoryproperty-get.md)|[deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md)|Read properties and relationships of the [deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The catalog id for this inventory property type|
|displayName|String|The localized display name of the property. Example: "Size (MB)". This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceInventoryProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInventoryProperty",
  "id": "String (identifier)",
  "displayName": "String"
}
```
