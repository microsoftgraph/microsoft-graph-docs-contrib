---
title: "employeeExperienceUser resource type"
description: "Represents a container that exposes navigation properties for the employee experience resources of a user."
author: "richafnu"
ms.date: 04/29/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# employeeExperienceUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container that exposes navigation properties for the employee experience resources of a user.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List assigned roles](../api/employeeexperienceuser-list-assignedroles.md)|[engagementRole](../resources/engagementrole.md) collection|Get a list of all the [roles](../resources/engagementrole.md) assigned to a user in Viva Engage.|

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignedRoles|[engagementRole](../resources/engagementrole.md) collection|Represents the collection of Viva Engage roles assigned to a user.|
<!-- |learningCourseActivities|[learningCourseActivity](../resources/learningcourseactivity.md) collection|**TODO: Add Description**| -->

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.employeeExperienceUser",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.employeeExperienceUser"
}
```
