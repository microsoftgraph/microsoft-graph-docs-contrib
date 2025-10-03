---
title: "excludedGroupAssignment resource type"
description: "Represents an entity that governs the update deployment audience with excluded groups. Groups are logical containers of devices represented by Microsoft Entra groups."
author: "andredm7"
ms.date: 10/08/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# excludedGroupAssignment resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the update deployment audience with excluded groups. Groups are logical containers of devices represented by Microsoft Entra groups.

Inherits from [microsoft.graph.windowsUpdates.groupAssignment](../resources/windowsupdates-groupassignment.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignments|[microsoft.graph.windowsUpdates.assignedGroup](../resources/windowsupdates-assignedgroup.md) collection| Represents an entity that governs the update deployment audience which is a Microsoft Entra group.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.excludedGroupAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.excludedGroupAssignment",
  "assignments": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.assignedGroup"
    }
  ]
}
```

