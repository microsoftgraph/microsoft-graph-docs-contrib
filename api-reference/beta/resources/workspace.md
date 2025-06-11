---
title: "workspace resource type"
description: "Represents a collection of desks."
author: "MSGraphDocsvTeam"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# workspace resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of desks. A workspace can be added to a [floor](./floor.md) or a [section](./section.md).

Inherits from [place](../resources/place.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/roomlist-list-rooms.md)|A list of **workspace** objects |Get a list of the **workspace** objects and their properties.|
|[Create](../api/roomlist-post-rooms.md)|The created **workspace** |Create a new **workspace**.|
|[Get](../api/room-get.md)|The requested **workspace** |Get the properties and relationships of the specified **workspace**.|
|[Update](../api/room-update.md)|The requested **workspace** |Update the properties and relationships of a specified **workspace**.|
|[Delete](../api/roomlist-delete-rooms.md)|None|Delete the **workspace** with the specified id.|
|[descendants](../api/room-descendants.md)|List of **desk** objects |Returns the list of descendant **desk** objects under a given **workspace**.|

## Properties

The **workspace** type supports all [base properties of a **place** object](./place.md#base-properties), as well as the following properties:

|Property |Type |Description |
|:--|:--|:--|
|capacity |Integer |The maximum number of individual desks within a workspace. |
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available in the workspace. |
|mode |placeMode |The mode for a workspace. We support 3 modes:
<ul><li>bookable - Workspaces that can be booked in advance using desk pool reservation tools</li>
<li>walkup - First come, first serve workspaces. As soon as you plug in to a peripheral on one of the desks in the workspace, the desk is booked for you, assuming that the peripheral has been associated to the desk in Teams Pro Management portal</li>
<li>Offline - Workspaces that are taken down for maintenance or marked as not bookable</li></ul> |
|emailAddress |String |The email address that is associated with the workspace. This email address is used for booking. |
|Nickname |String |A short, friendly name for the **place**, often used for easier identification or display in the UI. |
|Building |String |The name or identifier of the building where the **place** (such as a room or a desk) is located. |
|floorNumber |Integer |The numeric floor level within the building. For example, 1 for first floor, 2 for second floor, and so on. |
|floorLabel |String |A human-readable label for the floor, such as "Ground Floor". |
|Label |String |A custom identifier or tag for the **place**, often used to distinguish it within a floor or section. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workspace",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workspace",
  "id": "String (identifier)",
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "placeId": "String",
  "parentId": "String",
  "resourceLinks": [
    {
      "@odata.type": "microsoft.graph.resourceLink"
    }
  ],
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "emailAddress": "String",
  "nickname": "String",
  "building": "String",
  "floorNumber": "Integer",
  "capacity": "Integer",
  "floorLabel": "String",
  "displayDeviceName": "String",
  "mode": {
    "@odata.type": "microsoft.graph.placeMode"
  }
}
```

