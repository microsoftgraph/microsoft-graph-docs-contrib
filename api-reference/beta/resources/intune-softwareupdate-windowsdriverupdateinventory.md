---
title: "windowsDriverUpdateInventory resource type"
description: "A new entity to represent driver inventories."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsDriverUpdateInventory resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A new entity to represent driver inventories.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsDriverUpdateInventories](../api/intune-softwareupdate-windowsdriverupdateinventory-list.md)|[windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md) collection|List properties and relationships of the [windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md) objects.|
|[Get windowsDriverUpdateInventory](../api/intune-softwareupdate-windowsdriverupdateinventory-get.md)|[windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md)|Read properties and relationships of the [windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md) object.|
|[Create windowsDriverUpdateInventory](../api/intune-softwareupdate-windowsdriverupdateinventory-create.md)|[windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md)|Create a new [windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md) object.|
|[Delete windowsDriverUpdateInventory](../api/intune-softwareupdate-windowsdriverupdateinventory-delete.md)|None|Deletes a [windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md).|
|[Update windowsDriverUpdateInventory](../api/intune-softwareupdate-windowsdriverupdateinventory-update.md)|[windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md)|Update the properties of a [windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The id of the driver.|
|name|String|The name of the driver.|
|version|String|The version of the driver.|
|manufacturer|String|The manufacturer of the driver.|
|releaseDateTime|DateTimeOffset|The release date time of the driver.|
|driverClass|String|The class of the driver.|
|applicableDeviceCount|Int32|The number of devices for which this driver is applicable.|
|approvalStatus|[driverApprovalStatus](../resources/intune-softwareupdate-driverapprovalstatus.md)|The approval status for this driver. Possible values are: `needsReview`, `declined`, `approved`, `suspended`.|
|category|[driverCategory](../resources/intune-softwareupdate-drivercategory.md)|The category for this driver. Possible values are: `recommended`, `previouslyApproved`, `other`.|
|deployDateTime|DateTimeOffset|The date time when a driver should be deployed if approvalStatus is approved.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsDriverUpdateInventory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsDriverUpdateInventory",
  "id": "String (identifier)",
  "name": "String",
  "version": "String",
  "manufacturer": "String",
  "releaseDateTime": "String (timestamp)",
  "driverClass": "String",
  "applicableDeviceCount": 1024,
  "approvalStatus": "String",
  "category": "String",
  "deployDateTime": "String (timestamp)"
}
```



