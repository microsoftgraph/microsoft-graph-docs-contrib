---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-policylistingservice-devicemanagement-get.md)|[deviceManagement](../resources/intune-policylistingservice-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-policylistingservice-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-policylistingservice-devicemanagement-update.md)|[deviceManagement](../resources/intune-policylistingservice-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-policylistingservice-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceConfigurationProfiles|[deviceConfigurationProfile](../resources/intune-policylistingservice-deviceconfigurationprofile.md) collection|Profile Id of the object.|

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
  "@odata.type": "#microsoft.graph.deviceManagement"
}
```
