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

This is an abstract type.

Inherits from [entity](../resources/entity.md).

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

However, we recommend that you rely on the new `place` types and hierarchy if you do not use Roomfinder in the tenant. More details on **Roomlist** can be found at [roomList resource type](../../v1.0/resources/roomlist.md).  

## Using the Places API

The **Places** API can be used by applications that have the right read or write permissions on a **places** object. All the **places** objects have basic properties such as ID, placeID, and display name. While the more advanced spaces such as rooms, workspaces, and desks support properties such as mode, email address, and device information.

## Methods
|Method |Return |Type |Description |
|:--|:--|:--|:--|
|[Create place](../api/place-post-places.md) |Created Place |Create a new **place**. | 
|[Get place](../api/place-get.md) |The requested, derived type of **place** |Get the properties and relationships of a specified **place** object.|
[List Place](../api/place-list.md) |A list of **place** objects |Get the properties and relationships of multiple **place** objects. |
[Update place](../api/place-update.md) |The requested, derived type of **place** |Update the properties and relationships of a specified **place** object. |
|[Delete Place](../api/place-delete.md) | |Delete a **place** of any kind using the id of the place. |
|[descendants](../api/place-descendants.md) |List of **place** objects |Returns the list of descendant **places** of a specific type (for example, floor, section, rooms, desks, or workspaces) under a given **place**. | 


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
|isWheelChairAccessible |Boolean |Whether the **place** is wheelchair accessible. |
|tags |Collection(String) |Custom tags that are associated with the place for categorization or filtering. |
|address |[physicalAddress](../../v1.0/resources/physicaladdress.md) |The physical address of the **place**, including the street, city, state, country or region, and postal code. |
|[geoCoordinates](../../v1.0/resources/geocoordinates.md) |outlookGeoCoordinates |Specifies the **place** location in latitude, longitude, and (optionally) altitude coordinates. |
|phone |String |The phone number of the place.|
|parentId |String |ID of a parent **place**.

### Building properties 
The **building** type supports all [base properties](#base-properties), as well as the following properties:

|Property |Type |Description |
|:--|:--|:--|
|hasWiFi |Boolean |Whether the building has WiFi. |

### Floor properties 

The **floor** type supports all [base properties](#base-properties), as well as the following properties:

|Property |Type |Description |
|:--|:--|:--|
|SortOrder |Integer |Specifies the sort order of the floor. For example, a floor might be named "Lobby" with a sort order of 0 to show this floor first in ordered lists. |

### Room properties:

The **room** type supports all [base properties](#base-properties), as well as the following properties:

|Property |Type |Description |
|:--|:--|:--|
|Capacity |Integer |The maximum number of people in the **room** can accommodate. |
audioDeviceName	String	The name of the audio device available in the room.
videoDeviceName	String	The name of the video device available in the room.
displayDeviceName	String	The name of the display device (e.g., monitor, projector) available in the room.
isTeamsEnabled	Boolean	Identifies if the room is configured with Microsoft Teams Room system. 
emailAddress	String	The email address associated with the room, used for booking.
Nickname	String	A short, friendly name for the place, often used for easier identification or display in UI.
Building	String	The name or identifier of the building where the place (e.g., room, desk) is located.
floorNumber	Integer	The numeric floor level within the building. For example, 1 for first floor, 2 for second, etc.
floorLabel	String	A human-readable label for the floor, such as "Ground Floor"
Label	String	A custom identifier or tag for the place, often used to distinguish it within a floor or section
BookingType	Enum	Specifies how the place can be booked. Possible values include:
• standard – Available for general booking
• reserved – Reserved for specific users or purposes
• unknown – Default or unspecified booking behavior


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
  "@odata.type": "#microsoft.graph.place",
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
  "label": "String"
}
```

