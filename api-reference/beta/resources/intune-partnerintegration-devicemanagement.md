---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
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
|[Get deviceManagement](../api/intune-partnerintegration-devicemanagement-get.md)|[deviceManagement](../resources/intune-partnerintegration-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-partnerintegration-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-partnerintegration-devicemanagement-update.md)|[deviceManagement](../resources/intune-partnerintegration-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-partnerintegration-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|configManagerCollections|[configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md) collection|A list of ConfigManagerCollection|

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
