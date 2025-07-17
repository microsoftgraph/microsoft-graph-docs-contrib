---
title: "windowsDriverUpdateProfile resource type"
description: "Windows Driver Update Profile"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsDriverUpdateProfile resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Driver Update Profile

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsDriverUpdateProfiles](../api/intune-softwareupdate-windowsdriverupdateprofile-list.md)|[windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md) collection|List properties and relationships of the [windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md) objects.|
|[Get windowsDriverUpdateProfile](../api/intune-softwareupdate-windowsdriverupdateprofile-get.md)|[windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md)|Read properties and relationships of the [windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md) object.|
|[Create windowsDriverUpdateProfile](../api/intune-softwareupdate-windowsdriverupdateprofile-create.md)|[windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md)|Create a new [windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md) object.|
|[Delete windowsDriverUpdateProfile](../api/intune-softwareupdate-windowsdriverupdateprofile-delete.md)|None|Deletes a [windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md).|
|[Update windowsDriverUpdateProfile](../api/intune-softwareupdate-windowsdriverupdateprofile-update.md)|[windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md)|Update the properties of a [windowsDriverUpdateProfile](../resources/intune-softwareupdate-windowsdriverupdateprofile.md) object.|
|[assign action](../api/intune-softwareupdate-windowsdriverupdateprofile-assign.md)|None||
|[executeAction action](../api/intune-softwareupdate-windowsdriverupdateprofile-executeaction.md)|[bulkDriverActionResult](../resources/intune-softwareupdate-bulkdriveractionresult.md)||
|[syncInventory action](../api/intune-softwareupdate-windowsdriverupdateprofile-syncinventory.md)|None|Sync the driver inventory of a WindowsDriverUpdateProfile.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The Intune policy id.|
|displayName|String|The display name for the profile.|
|description|String|The description of the profile which is specified by the user.|
|approvalType|[driverUpdateProfileApprovalType](../resources/intune-softwareupdate-driverupdateprofileapprovaltype.md)|Driver update profile approval type. For example, manual or automatic approval. Possible values are: `manual`, `automatic`.|
|deviceReporting|Int32|Number of devices reporting for this profile|
|newUpdates|Int32|Number of new driver updates available for this profile.|
|deploymentDeferralInDays|Int32|Deployment deferral settings in days, only applicable when ApprovalType is set to automatic approval.|
|createdDateTime|DateTimeOffset|The date time that the profile was created.|
|lastModifiedDateTime|DateTimeOffset|The date time that the profile was last modified.|
|roleScopeTagIds|String collection|List of Scope Tags for this Driver Update entity.|
|inventorySyncStatus|[windowsDriverUpdateProfileInventorySyncStatus](../resources/intune-softwareupdate-windowsdriverupdateprofileinventorysyncstatus.md)|Driver inventory sync status for this profile.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md) collection|The list of group assignments of the profile.|
|driverInventories|[windowsDriverUpdateInventory](../resources/intune-softwareupdate-windowsdriverupdateinventory.md) collection|Driver inventories for this profile.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsDriverUpdateProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsDriverUpdateProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "approvalType": "String",
  "deviceReporting": 1024,
  "newUpdates": 1024,
  "deploymentDeferralInDays": 1024,
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "inventorySyncStatus": {
    "@odata.type": "microsoft.graph.windowsDriverUpdateProfileInventorySyncStatus",
    "lastSuccessfulSyncDateTime": "String (timestamp)",
    "driverInventorySyncState": "String"
  }
}
```