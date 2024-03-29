---
title: "deviceInventorySimpleProperty resource type"
description: "Inherited type of DeviceInventoryProperty where the property contains a single value"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceInventorySimpleProperty resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Inherited type of DeviceInventoryProperty where the property contains a single value


Inherits from [deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceInventorySimpleProperties](../api/intune-devices-deviceinventorysimpleproperty-list.md)|[deviceInventorySimpleProperty](../resources/intune-devices-deviceinventorysimpleproperty.md) collection|List properties and relationships of the [deviceInventorySimpleProperty](../resources/intune-devices-deviceinventorysimpleproperty.md) objects.|
|[Get deviceInventorySimpleProperty](../api/intune-devices-deviceinventorysimpleproperty-get.md)|[deviceInventorySimpleProperty](../resources/intune-devices-deviceinventorysimpleproperty.md)|Read properties and relationships of the [deviceInventorySimpleProperty](../resources/intune-devices-deviceinventorysimpleproperty.md) object.|
|[Create deviceInventorySimpleProperty](../api/intune-devices-deviceinventorysimpleproperty-create.md)|[deviceInventorySimpleProperty](../resources/intune-devices-deviceinventorysimpleproperty.md)|Create a new [deviceInventorySimpleProperty](../resources/intune-devices-deviceinventorysimpleproperty.md) object.|
|[Delete deviceInventorySimpleProperty](../api/intune-devices-deviceinventorysimpleproperty-delete.md)|None|Deletes a [deviceInventorySimpleProperty](../resources/intune-devices-deviceinventorysimpleproperty.md).|
|[Update deviceInventorySimpleProperty](../api/intune-devices-deviceinventorysimpleproperty-update.md)|[deviceInventorySimpleProperty](../resources/intune-devices-deviceinventorysimpleproperty.md)|Update the properties of a [deviceInventorySimpleProperty](../resources/intune-devices-deviceinventorysimpleproperty.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The catalog id for this inventory property type Inherited from [deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md)|
|displayName|String|The localized display name of the property. Example: "Size (MB)". This property is read-only. Inherited from [deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md)|
|value|[deviceInventoryValue](../resources/intune-devices-deviceinventoryvalue.md)|Value of the property. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceInventorySimpleProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInventorySimpleProperty",
  "id": "String (identifier)",
  "displayName": "String",
  "value": {
    "@odata.type": "microsoft.graph.deviceInventoryDateTimeValue",
    "value": "String (timestamp)"
  }
}
```
