---
title: "adminWindows resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# adminWindows resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List adminWindows](../api/admin-list-windows.md)|[adminWindows](../resources/adminwindows.md) collection|Get a list of the [adminWindows](../resources/adminwindows.md) objects and their properties.|
|[Create adminWindows](../api/admin-post-windows.md)|[adminWindows](../resources/adminwindows.md)|Create a new [adminWindows](../resources/adminwindows.md) object.|
|[Get adminWindows](../api/adminwindows-get.md)|[adminWindows](../resources/adminwindows.md)|Read the properties and relationships of an [adminWindows](../resources/adminwindows.md) object.|
|[Update adminWindows](../api/adminwindows-update.md)|[adminWindows](../resources/adminwindows.md)|Update the properties of an [adminWindows](../resources/adminwindows.md) object.|
|[Delete adminWindows](../api/admin-delete-windows.md)|None|Delete an [adminWindows](../resources/adminwindows.md) object.|
|[List adminWindowsUpdates](../api/adminwindows-list-updates.md)|[adminWindowsUpdates](../resources/adminwindowsupdates.md) collection|Get the adminWindowsUpdates resources from the updates navigation property.|
|[Create adminWindowsUpdates](../api/adminwindows-post-updates.md)|[adminWindowsUpdates](../resources/adminwindowsupdates.md)|Create a new adminWindowsUpdates object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|updates|[adminWindowsUpdates](../resources/adminwindowsupdates.md)|**TODO: Add Description**|

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

