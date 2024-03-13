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
|[Get deviceManagement](../api/intune-softwareupdate-devicemanagement-get.md)|[deviceManagement](../resources/intune-softwareupdate-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-softwareupdate-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-softwareupdate-devicemanagement-update.md)|[deviceManagement](../resources/intune-softwareupdate-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-softwareupdate-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The Identifier of the entity|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|windowsFeatureUpdateProfiles|[windowsFeatureUpdateProfile](../resources/intune-softwareupdate-windowsfeatureupdateprofile.md) collection|A collection of windows feature update profiles|
|windowsQualityUpdateProfiles|[windowsQualityUpdateProfile](../resources/intune-softwareupdate-windowsqualityupdateprofile.md) collection|A collection of windows quality update profiles|
|windowsDriverUpdateProfiles|[windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md) collection|A collection of windows driver update profiles|
|windowsUpdateCatalogItems|[windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md) collection|A collection of windows update catalog items (fetaure updates item , quality updates item)|

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
