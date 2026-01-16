---
title: "excludedGroupAssignment resource type"
description: "Represents an entity that governs the update deployment audience with excluded groups."
author: "andredm7"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# excludedGroupAssignment resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the update deployment audience with excluded groups. Groups are logical containers of devices represented by Microsoft Entra groups.

Inherits from [groupAssignment](../resources/windowsupdates-groupassignment.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignments|[microsoft.graph.windowsUpdates.assignedGroup](../resources/windowsupdates-assignedgroup.md) collection| A collection of entities that govern the update deployment audience, defined as a Microsoft Entra group. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.excludedGroupAssignment",
  "baseType": "microsoft.graph.windowsUpdates.groupAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.excludedGroupAssignment",
  "assignments": [{"@odata.type": "microsoft.graph.windowsUpdates.assignedGroup"}]
}
```

