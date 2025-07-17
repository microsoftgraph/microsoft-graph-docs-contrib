---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-gpanalyticsservice-devicemanagement-get.md)|[deviceManagement](../resources/intune-gpanalyticsservice-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-gpanalyticsservice-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-gpanalyticsservice-devicemanagement-update.md)|[deviceManagement](../resources/intune-gpanalyticsservice-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-gpanalyticsservice-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|

## Relationships
None

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
