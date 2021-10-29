---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-troubleshooting-devicemanagement-get.md)|[deviceManagement](../resources/intune-troubleshooting-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-troubleshooting-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-troubleshooting-devicemanagement-update.md)|[deviceManagement](../resources/intune-troubleshooting-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-troubleshooting-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|troubleshootingEvents|[deviceManagementTroubleshootingEvent](../resources/intune-troubleshooting-devicemanagementtroubleshootingevent.md) collection|The list of troubleshooting events for the tenant.|

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




