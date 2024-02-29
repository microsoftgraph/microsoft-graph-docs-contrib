---
title: "deviceManagement resource type"
description: "Singleton that acts as container for a collection of Resource Access entities."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton that acts as container for a collection of Resource Access entities.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-osprovisioninggraphservice-devicemanagement-get.md)|[deviceManagement](../resources/intune-osprovisioninggraphservice-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-osprovisioninggraphservice-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-osprovisioninggraphservice-devicemanagement-update.md)|[deviceManagement](../resources/intune-osprovisioninggraphservice-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-osprovisioninggraphservice-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managedDeviceWindowsOSImages|[managedDeviceWindowsOperatingSystemImage](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemimage.md) collection|A list of ManagedDeviceWindowsOperatingSystemImages|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```
