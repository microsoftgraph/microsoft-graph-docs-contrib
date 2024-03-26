---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a Container for all device management functionality"
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a Container for all device management functionality

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-deviceintent-devicemanagement-get.md)|[deviceManagement](../resources/intune-deviceintent-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-deviceintent-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-deviceintent-devicemanagement-update.md)|[deviceManagement](../resources/intune-deviceintent-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-deviceintent-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|intents|[deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md) collection|The device management intents|
|settingDefinitions|[deviceManagementSettingDefinition](../resources/intune-deviceintent-devicemanagementsettingdefinition.md) collection|The device management intent setting definitions|
|templates|[deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md) collection|The available templates|
|categories|[deviceManagementSettingCategory](../resources/intune-deviceintent-devicemanagementsettingcategory.md) collection|The available categories|

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
