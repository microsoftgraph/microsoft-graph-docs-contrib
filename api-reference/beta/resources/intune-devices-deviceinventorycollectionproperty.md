---
title: "deviceInventoryCollectionProperty resource type"
description: "Inherited type of DeviceInventoryProperty where the property contains a collection of values"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceInventoryCollectionProperty resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Inherited type of DeviceInventoryProperty where the property contains a collection of values


Inherits from [deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceInventoryCollectionProperties](../api/intune-devices-deviceinventorycollectionproperty-list.md)|[deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md) collection|List properties and relationships of the [deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md) objects.|
|[Get deviceInventoryCollectionProperty](../api/intune-devices-deviceinventorycollectionproperty-get.md)|[deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md)|Read properties and relationships of the [deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md) object.|
|[Create deviceInventoryCollectionProperty](../api/intune-devices-deviceinventorycollectionproperty-create.md)|[deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md)|Create a new [deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md) object.|
|[Delete deviceInventoryCollectionProperty](../api/intune-devices-deviceinventorycollectionproperty-delete.md)|None|Deletes a [deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md).|
|[Update deviceInventoryCollectionProperty](../api/intune-devices-deviceinventorycollectionproperty-update.md)|[deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md)|Update the properties of a [deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The catalog id for this inventory property type Inherited from [deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md)|
|displayName|String|The localized display name of the property. Example: "Size (MB)". This property is read-only. Inherited from [deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md)|
|values|[deviceInventoryValue](../resources/intune-devices-deviceinventoryvalue.md) collection|Collection value of the property. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceInventoryCollectionProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInventoryCollectionProperty",
  "id": "String (identifier)",
  "displayName": "String",
  "values": [
    {
      "@odata.type": "microsoft.graph.deviceInventoryDateTimeValue",
      "value": "String (timestamp)"
    }
  ]
}
```
