---
title: "adminWindows resource type"
description: "Represents a container for all Windows administrator functionalities."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# adminWindows resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for all Windows administrator functionalities.

## Properties
| Property | Type   | Description                                                                         |
|:---------|:-------|:------------------------------------------------------------------------------------|
| id       | String | The unique identifier for the device. Not nullable. Read-only. Returned by default. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|updates|[adminWindowsUpdates](../resources/adminwindowsupdates.md)|Entity that acts as a container for all Windows Update for Business deployment service functionalities. Read-only.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adminWindows",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adminWindows",
  "id": "String (identifier)"
}
```
