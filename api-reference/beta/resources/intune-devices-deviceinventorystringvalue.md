---
title: "deviceInventoryStringValue resource type"
description: "Inherited type of DeviceInventoryValue where the value is a string"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceInventoryStringValue resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Inherited type of DeviceInventoryValue where the value is a string


Inherits from [deviceInventoryValue](../resources/intune-devices-deviceinventoryvalue.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|String|String value of a property. Example: "Size (MB)". This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceInventoryStringValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInventoryStringValue",
  "value": "String"
}
```
