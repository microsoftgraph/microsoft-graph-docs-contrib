---
title: "place resource type"
description: "Represents different space types within a tenant."
author: "vrod9429"
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# place resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A **Place** object represents different space types within a tenant. A place object can be one of the following types:

|Place Type	|Details |
|:--|:--|
|[building](./building.md) | Represents a tenant building and has properties such as name, address, geographic coordinates, and so on. |
|[floor](./floor.md) |Represents a floor within a building, including properties such as name, parentID, SortOrder, and so on. A floor must always be parented to a building. |
|[section](./section.md) |Represents a section within a floor, including properties such as name, parentID, label, and so on. A section must always be parented to a floor. |
|[room](./room.md) |Represents a room within the tenant. All the rooms in Places must be associated with Exchange mailboxes. A room can be added to a floor or to a section. The rich properties of the room include an email address for the room, accessibility, capacity, audio device, video device, and so on. |
|[workspace](./workspace.md) |Represents a collection of desks. All the workspaces in Places must be associated with Exchange mailboxes. A workspace can be added to a floor or a section. The rich properties of a workspace include an email address for the workspace, mode, accessibility, and capacity. |
|[desk](./desk.md) |Represents individual desks. A desk must be added to a section. The rich properties for the section include email address, mode, and accessibility. |
|roomList |A collection of rooms in the tenant. Places supports **Roomlist** to ensure room booking works in RoomFinder across all clients on all devices, such as classic Outlook across desktop and mobile.

However, we recommend that you rely on the new **place** types and hierarchy if you do not use **Roomfinder** in the tenant. More details on **Roomlist** can be found at [roomList resource type](../../v1.0/resources/roomlist.md). |

## Using the Places API

The **Places** API can be used by applications that have the right read or write permissions on a **places** object. All the **places** objects have basic properties such as ID, placeID, and display name. While the more advanced spaces such as rooms, workspaces, and desks support properties such as mode, email address, and device information.

## Methods
|Method |Return |Type |Description |
|:--|:--|:--|:--|
|[Create place](../api/place-post-places.md) |Created Place |Create a new **place**. | 
|[Get place](../api/place-get.md) |The requested, derived type of **place** |Get the properties and relationships of a specified **place** object.|
[List Place](../api/place-list.md) |A list of **place** objects |Get the properties and relationships of multiple **place** objects. |
[Update place](../api/place-update.md) |The requested, derived type of **place** |Update the properties and relationships of a specified **place** object. |
|[Delete Place](../api/place-delete.md) | |Delete a **place** of any kind using the id of the **place**. |
|[descendants](../api/place-descendants.md) |List of **place** objects |Returns the list of descendant **place** objects of a specific type (for example, floor, section, rooms, desks, or workspaces) under a given **place**. | 

The [findRooms](../api/user-findrooms.md) and [findRoomLists](../api/user-findroomlists.md) functions support similar lookups for rooms and room lists in a tenant. The following table compares the places API and these functions.

> [!NOTE]
> The **findRooms** and **findRoomLists** functions are deprecated.
 
|Places API |findRooms and findRoomLists functions (deprecated) |
|:--|:--|
|Gets all the rooms or room lists in a tenant, and all the rooms in a room list. |Gets all the rooms or room lists in a tenant, and all the rooms in a room list.
|[List places](../../v1.0/api/place-list.md) can return more than 100 rooms in a tenant. |[findRooms](../api/user-findrooms.md) returns up to the first 100 rooms in a tenant. |
|Supports [getting an individual room or room list](../../v1.0/api/place-get.md) in a tenant. |Doesn't support getting an individual room or room list in a tenant. |
|Defines the specific entities of [room](../../v1.0/resources/room.md) and [roomList](../../v1.0/resources/roomlist.md) that specify a richer property set, in addition to the display name and SMTP address.	|Each room and room list is of a lighter-weight [emailAddress](../../v1.0/resources/emailaddress.md) type that specifies only the display name and SMTP address. |
|Supports only organizational scenarios with delegated (work or school accounts) or application permissions. |Supports only organizational scenarios with delegated or application permissions.
|Supports [updating an individual room or room list](../../v1.0/api/place-update.md) in a tenant. |Doesn't support updating an individual room or room list in a tenant. |

## Properties

### Base properties

The base properties are inherited by all **place** types.

|Property |Type |Description |
|:--|:--|:--|
|id |String |A unique identifier for the place. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration. |
|placeId |String |An alternate immutable unique identifier of the **place**. Read-only. |
|displayName |String |The name that is associated with the place. |   
|description |String |User-defined description of the place. (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) |
|resourceLinks |ResourceLink collection	|A set of links to external resources that are associated with the place. |
|isWheelChairAccessible |Boolean |Whether or not the **place** is wheelchair accessible. |
|tags |Collection(String) |Custom tags that are associated with the place for categorization or filtering. |
|address |[physicalAddress](../../v1.0/resources/physicaladdress.md) |The physical address of the **place**, including the street, city, state, country or region, and postal code. |
|[geoCoordinates](../../v1.0/resources/geocoordinates.md) |outlookGeoCoordinates |Specifies the **place** location in latitude, longitude, and (optionally) altitude coordinates. |
|phone |String |The phone number of the place.|
|parentId |String |ID of a parent **place**. |

### Building properties 
The **building** type supports all [base properties](#base-properties), as well as the following properties:

|Property |Type |Description |
|:--|:--|:--|
|hasWiFi |Boolean |Whether or not the building has WiFi. |

### Floor properties 

The **floor** type supports all [base properties](#base-properties), as well as the following properties:

|Property |Type |Description |
|:--|:--|:--|
|SortOrder |Integer |Specifies the sort order of the floor. For example, a floor might be named "Lobby" with a sort order of 0 to show this floor first in ordered lists. |

### Room properties:

The **room** type supports all [base properties](#base-properties), as well as the following properties:

|Property |Type |Description |
|:--|:--|:--|
|capacity |Integer |The maximum number of people in the **room** can accommodate. |
|audioDeviceName |String |The name of the audio device that is available in the room. |
|videoDeviceName |String |The name of the video device that is available in the room. |
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available in the room.
|isTeamsEnabled |Boolean |Whether or not the room is configured with the Microsoft Teams Room system. |
|emailAddress |String |The email address associated with the room. This email address is used for booking. |
|nickname |String |A short, friendly name for the **place**, often used for easier identification or display in UI. |
|building |String |The name or identifier of the building where the **place** (such as a room or a desk) is located. |
|floorNumber |Integer |The numeric floor level within the building. For example, 1 for first floor, 2 for second floor, and so on. |
|floorLabel |String |A human-readable label for the floor, such as "Ground Floor". |
|label |String |A custom identifier or tag for the **place**, often used to distinguish it within a floor or section. |
|bookingType |Enum |Specifies how the place can be booked. Possible values are:
<ul><li>standard - Available for general booking</li>
<li>reserved – Reserved for specific users or purposes</li>
<li>unknown – Default or unspecified booking behavior</li>
</ul> |

### Workspace properties

The **workspace** type supports all [base properties](#base-properties), as well as the following properties:

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

### Desk properties

The **desk** type supports all [base properties](#base-properties), as well as the following properties:

|Property |Type |Description |
|:--|:--|:--|
|mailboxDetails |mailboxDetails |The mailbox object-ids and email address that are associated with the desk. |
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available at the desk. |
|Mode |Dictionary |The mode of the desk. We support 4 modes:
<ul><li>assigned - Desks that are assigned to a user</li>
<li>bookable - Desks that can be booked in advance using desk reservation tools</li>
<li>walkup - First come, first serve desks. When you plug in to a peripheral on one of these desks, the desk is booked for you, assuming that the peripheral has been associated to the desk in Teams Pro Management portal</li>
<li>offline - Desk that are taken down for maintenance or marked as not bookable.</li></ul> |



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

