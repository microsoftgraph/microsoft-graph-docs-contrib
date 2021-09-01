---
title: "windowsDriverUpdateProfileAssignment resource type"
description: "This entity contains the properties used to assign a windows driver update profile to a group."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsDriverUpdateProfileAssignment resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This entity contains the properties used to assign a windows driver update profile to a group.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsDriverUpdateProfileAssignments](../api/intune-softwareupdate-windowsdriverupdateprofileassignment-list.md)|[windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md) collection|List properties and relationships of the [windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md) objects.|
|[Get windowsDriverUpdateProfileAssignment](../api/intune-softwareupdate-windowsdriverupdateprofileassignment-get.md)|[windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md)|Read properties and relationships of the [windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md) object.|
|[Create windowsDriverUpdateProfileAssignment](../api/intune-softwareupdate-windowsdriverupdateprofileassignment-create.md)|[windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md)|Create a new [windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md) object.|
|[Delete windowsDriverUpdateProfileAssignment](../api/intune-softwareupdate-windowsdriverupdateprofileassignment-delete.md)|None|Deletes a [windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md).|
|[Update windowsDriverUpdateProfileAssignment](../api/intune-softwareupdate-windowsdriverupdateprofileassignment-update.md)|[windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md)|Update the properties of a [windowsDriverUpdateProfileAssignment](../resources/intune-softwareupdate-windowsdriverupdateprofileassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The Identifier of the entity|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The assignment target that the driver update profile is assigned to.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsDriverUpdateProfileAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsDriverUpdateProfileAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "String",
    "deviceAndAppManagementAssignmentFilterType": "String"
  }
}
```



