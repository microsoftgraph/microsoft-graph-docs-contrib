---
title: "groupAssignment resource type"
description: "An abstract type that represents an entity that governs the aggregate of update deployment audiences."
author: "andredm7"
ms.date: 01/27/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# groupAssignment resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents an entity that governs the aggregate of update deployment audiences. Each audience represents one or more Microsoft Entra group assignments.

Base type of [excludedGroupAssignment](../resources/windowsupdates-excludedgroupassignment.md) and [includedGroupAssignment](../resources/windowsupdates-includedgroupassignment.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.groupAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.groupAssignment"
}
```

