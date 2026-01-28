---
title: "assignedGroup resource type"
description: "Represents an entity that governs the update deployment audience defined as a Microsoft Entra group."
author: "andredm7"
ms.date: 01/27/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# assignedGroup resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the update deployment audience defined as a Microsoft Entra group.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|groupId|String| The unique identifier for the group. Returned by default. Key. Not nullable. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `in`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)| Represents a Microsoft Entra group.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.assignedGroup"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.assignedGroup",
  "groupId": "String"
}
```

