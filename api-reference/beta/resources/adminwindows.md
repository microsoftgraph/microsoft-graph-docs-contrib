---
title: "adminWindows resource type"
description: "Represents a container for all Windows administrator functionalities."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
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
The following is a JSON representation of the resource.
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
