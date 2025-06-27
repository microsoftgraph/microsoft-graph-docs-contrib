---
title: "place resource type"
description: "Represents different space types within a tenant."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# place resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A **place** object represents different space types within a tenant. A **place** object can be one of the following types:

|Place Type	|Details |
|:--|:--|
|[building](./building.md) | Represents a building within the tenant and has properties such as name, address, geographic coordinates, and so on. |
|[floor](./floor.md) |Represents a floor within a building, including properties such as name, parentID, sortOrder, and so on. A building is always the parent of a floor. |
|[section](./section.md) |Represents a section within a floor, including properties such as name, parentID, label, and so on. A floor is always the parent of a section. |
|[room](./room.md) |Represents a room within the tenant. All rooms must be associated with Exchange mailboxes. A room can be added to a floor or to a section. The rich properties of the room include an email address for the room, accessibility, capacity, audio device, video device, and so on. |
|[workspace](./workspace.md) |Represents a collection of desks. All workspaces must be associated with Exchange mailboxes. A workspace can be added to a floor or a section. The rich properties of a workspace include an email address for the workspace, mode, accessibility, and capacity. |
|[desk](./desk.md) |Represents individual desks. A desk must be added to a section. The rich properties for the section include email address, mode, and accessibility. |
|[roomList](./roomlist.md) |A collection of rooms in the tenant. Places supports **roomList** to ensure room booking works in Room Finder across all clients on all devices, such as classic Outlook across desktop and mobile. <br/><br/>However, we recommend that you rely on the new **place** types and hierarchy if you do not use **roomFinder** in the tenant. More details on **roomList** can be found at [roomList resource type](./roomlist.md). |

## Using the Places API

The Places API can be used by applications that have the right read or write permissions on a **places** object. All the **places** objects have basic properties such as ID, placeID, and display name. While the more advanced spaces such as rooms, workspaces, and desks support properties such as mode, email address, and device information.

## Methods
|Method |Return |Type |Description |
|:--|:--|:--|:--|
|[List](../api/place-list.md) |A list of **place** objects |Get the properties and relationships of multiple **place** objects. |
|[Create](../api/place-post-places.md) |Created **place** |Create a new **place**. | 
|[Get](../api/place-get.md) |The requested, derived type of **place** |Get the properties and relationships of a specified **place** object.|
|[Update](../api/place-update.md) |The requested, derived type of **place** |Update the properties and relationships of a specified **place** object. |
|[Delete](../api/place-delete.md) |None |Delete a **place** with the specified id. |
|[descendants](../api/place-descendants.md) |List of **place** objects |Get all the descendants of a specific type (for example, [buildings](./building.md), [floors](./floor.md), [sections](./section.md), [rooms](./room.md), [workspaces](./workspace.md), or [desks](./desk.md)) under a **place**. | 

The [findRooms](../api/user-findrooms.md) and [findRoomLists](../api/user-findroomlists.md) functions support similar lookups for rooms and room lists in a tenant. The following table compares the places API and these functions.

> [!NOTE]
> The **findRooms** and **findRoomLists** functions are deprecated.
 
|Places API |findRooms and findRoomLists functions (deprecated) |
|:--|:--|
|Gets all the rooms or room lists in a tenant, and all the rooms in a room list. |Gets all the rooms or room lists in a tenant, and all the rooms in a room list.
|[List](../api/place-list.md) can return more than 100 rooms in a tenant. |[findRooms](/graph/api/user-findrooms) returns up to the first 100 rooms in a tenant. |
|Supports [getting an individual room or room list](/graph/api/place-get) in a tenant. |Doesn't support getting an individual room or room list in a tenant. |
|Defines the specific entities of [room](/graph/api/resources/room) and [roomList](/graph/api/resources/roomlist) that specify a richer property set, in addition to the display name and SMTP address.	|Each room and room list is of a lighter-weight [emailAddress](/graph/api/resources/emailaddress) type that specifies only the display name and SMTP address. |
|Supports only organizational scenarios with delegated (only for work or school accounts) or application permissions. |Supports only organizational scenarios with delegated or application permissions.
|Supports [updating an individual room or room list](../api/place-update.md) in a tenant. |Doesn't support updating an individual room or room list in a tenant. |

## Properties

|Property |Type |Description |
|:--|:--|:--|
|address |[physicalAddress](./physicaladdress.md) |The physical address of the **place**, including the street, city, state, country or region, and postal code. |
|description |String |User-defined description of the **place**. (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) |
|displayName |String |The name that is associated with the **place**. |
|geoCoordinates|[outlookGeoCoordinates](./outlookgeocoordinates.md)|Specifies the **place** location in latitude, longitude, and (optionally) altitude coordinates. |
|id |String |A unique identifier for the place. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration. |
|isWheelChairAccessible |Boolean |Whether or not the **place** is wheelchair accessible. |
|parentId |String |**id** of a parent **place**. |
|phone |String |The phone number of the **place**. |
|placeId |String |An alternate immutable unique identifier of the **place**. Read-only. |
|resourceLinks |[resourceLink](./resourcelink.md) collection |A set of links to external resources that are associated with the **place**. |
|tags |Collection(String) |Custom tags that are associated with the **place** for categorization or filtering. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.place",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
    "displayName": "Edm.String",
    "geoCoordinates": {
        "latitude": "Edm.Double",
        "longitude": "Edm.Double",
        "accuracy": "Edm.Double",
        "altitude": "Edm.Double",
        "altitudeAccuracy": "Edm.Double"
    },
    "phone": "Edm.String",
    "address": {
        "type": "unknown | home | business | other",
        "postOfficeBox": "Edm.String",
        "street": "Edm.String",
        "city": "Edm.String",
        "state": "Edm.String",
        "countryOrRegion": "Edm.String",
        "postalCode": "Edm.String"
    },
    "placeId": "Edm.String",
    "parentId": "Edm.String",
    "description": "Edm.String",
    "resourceLinks": [
        {
            "linkType": "unspecified | blobId | url",
            "name": "Edm.String",
            "value": "Edm.String"
        }
    ],
    "tags": "Collection(Edm.String)",
    "isWheelChairAccessible": "Edm.Boolean",
    "emailAddress": "Edm.String",
    "nickname": "Edm.String",
    "building": "Edm.String",
    "floorNumber": "Edm.Int32",
    "label": "Edm.String",
    "capacity": "Edm.Int32",
    "bookingType": "unknown | standard | reserved",
    "audioDeviceName": "Edm.String",
    "videoDeviceName": "Edm.String",
    "displayDeviceName": "Edm.String",
    "floorLabel": "Edm.String",
    "isTeamsEnabled": "Edm.Boolean"
} 

```

