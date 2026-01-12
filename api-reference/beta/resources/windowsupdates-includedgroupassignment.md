---
title: "includedGroupAssignment resource type"
description: "Represents an entity that governs the update deployment audience with included groups."
author: "andredm7"
ms.date: 10/08/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# includedGroupAssignment resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the update deployment audience with included groups. Groups are logical containers of devices represented by Microsoft Entra groups.

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
  "@odata.type": "microsoft.graph.windowsUpdates.includedGroupAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.includedGroupAssignment",
  "assignments": [{"@odata.type": "microsoft.graph.windowsUpdates.assignedGroup"}]
}
```

