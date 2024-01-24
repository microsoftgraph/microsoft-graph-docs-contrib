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
|`CanModifyShiftRequestsCapabilities`|The abilities of users having the role to open shifts, swap shifts, and request and offer shifts for their team.|
|`CanModifyTimeClockCapabilities`|The ability of users having the role to modify the Time clock Shifts setting for their team.|
|`CanModifyTimeClockGeoFencingSettings`|Takes precedent on Time clock being enabled. User’ role ability to enable or disable Time clock location detection in Shifts setting for their team.|
|`CanModifyTimeOffRequestsCapabilities`|User’ role ability to enable or disable Time off requests in Shifts setting for their team.|
|`CanModifyTimeOffReasons`|User’ role ability (or not) to add, edit, and delete of Time off reasons in Shifts settings for their team.|
|`CanModifySchedulingGroups`|User’ role ability (or not) to add, rename or delete groups in Shifts. Regardless, user’ role is able to add and delete team members on the groups.|


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

