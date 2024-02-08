---
title: "shiftsRolePermission resource type"
description: "Represents permissions for a role in a Shifts schedule."
author: "galalalym"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# shiftsRolePermission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents permissions for a role in a Shifts schedule.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedResourceActions|String collection|The permissions that are allowed for a role. Permissions that aren't in this collection are disabled.|

### Supported resource actions
|Resource Action|Description|
|:---|:---|
|`CanModifyShiftRequestsCapabilities`|Users that have a role that has this permission enabled will have the capability to modify the settings to enable or disable open shifts, swap shifts, and request and offer shifts for their team.|
|`CanModifyTimeClockCapabilities`|Users that have a role that has this permission enabled will have the capability to modify the settings to enable or disable time clock setting for their team.|
|`CanModifyTimeClockGeoFencingSettings`|Users that have a role that has this permission enabled will have the capability to enable or disable time clock location detection setting for their team.|
|`CanModifyTimeOffRequestsCapabilities`|Users that have a role that has this permission enabled will have the capability to enable or disable time off requests setting for their team.|
|`CanModifyTimeOffReasons`|Users that have a role that has this permission enabled will have the capability to to add, edit, and delete time off reasons for their team.|
|`CanModifySchedulingGroups`|Users that have a role that has this permission enabled will have the capability to add, edit, and delete groups in Shifts. Regardless of the value of this permission, users that have an owner role will have the capability to add and delete team members on the groups.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.shiftsRolePermission"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.shiftsRolePermission",
  "allowedResourceActions": [
    "String"
  ]
}
```

