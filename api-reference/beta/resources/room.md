---
title: "room resource type"
description: "Represents a room within the tenant."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# room resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a room within the tenant.

A room can be added to a [floor](./floor.md) or to a [section](./section.md).

Inherits from [place](./place.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/roomlist-list-rooms.md)|[room](./room.md) collection|Get a list of **room** objects and their properties.|
|[Create](../api/roomlist-post-rooms.md)|[room](./room.md)|Create a new **room** object.|
|[Get](../api/room-get.md)|[room](./room.md)|Read the properties and relationships of a **room** object.|
|[Update](../api/room-update.md)|[room](./room.md)|Update the properties of a **room** object.|
|[Delete](../api/roomlist-delete-rooms.md)|None|Delete a **room** object.|
|[descendants](../api/room-descendants.md)|[place](./place.md) collection|Returns the list of descendant **place** objects of a specific type (for example, [desks](./desk.md) or [workspaces](./workspace.md)) under a given **room**.|

## Properties
|Property |Type |Description |
|:--|:--|:--|
|address |[physicalAddress](./physicaladdress.md) |The physical address of the **room**, including the street, city, state, country or region, and postal code. |
|audioDeviceName |String |The name of the audio device that is available in the **room**. |
|bookingType |enum |Specifies how the **room** can be booked. Possible values are:
<ul><li>**standard** - Available for general booking</li>
<li>**reserved** – Reserved for specific users or purposes</li>
<li>**unknown** – Default or unspecified booking behavior</li></ul> |
|building |String |The name or identifier of the [building](./building.md) where the **room** is located. |
|capacity |Integer |The maximum number of people in the **room** can accommodate. |
|description |String |User-defined description of the **room**. (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) Inherited from [place](../resources/place.md). |
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available in the **room**. |
|displayName |String |The name that is associated with the **room**. |
|emailAddress |String |The email address associated with the **room**. This email address is used for booking. |
|floorLabel |String |A human-readable label for the [floor](./floor.md), such as "Ground Floor". |
|floorNumber |Integer |The numeric floor level within the building. For example, 1 for first floor, 2 for second floor, and so on. |
|geoCoordinates |[outlookGeoCoordinates](./outlookgeocoordinates.md) |Specifies the **room** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](../resources/place.md). |
|id |String |A unique identifier for the **room**. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration. |
|isTeamsEnabled |Boolean |Whether or not the **room** is configured with the Microsoft Teams Room system. |
|isWheelChairAccessible |Boolean |Whether or not the **room** is wheelchair accessible. Inherited from [place](../resources/place.md).|
|nickname |String |A short, friendly name for the **room**, often used for easier identification or display in UI. |
|parentId |String |**id** of a parent [floor](./floor.md) or [section](./section.md). |
|phone |String |The phone number of the **room**. |
|placeId |String |An alternate immutable unique identifier of the **room**. Read-only. |
|resourceLinks |[resourceLink](../resources/resourcelink.md) collection	|A set of links to external resources that are associated with the **room**. |
|tags |Collection(String) |Custom tags that are associated with the **room** for categorization or filtering. |
|videoDeviceName |String |The name of the video device that is available in the **room**. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.room",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.room",
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
  "bookingType": "String",
  "audioDeviceName": "String",
  "videoDeviceName": "String",
  "displayDeviceName": "String",
  "floorLabel": "String",
  "isTeamsEnabled": "Boolean"
}
```

