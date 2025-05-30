---
title: "place resource type"
description: "Represents a place. Defines the base type for a room or roomList."
ms.localizationpriority: medium
author: "vrod9429"
ms.subservice: "outlook"
doc_type: "resourcePageType"
ms.date: 03/23/2024
---

# place resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents different space types within a tenant. A `place` object can be one of the following types:

|Place Type|Details|
|:--|:--| 
|Building|Represents a tenant building and has properties such as name, address, geographic coordinates, and so on.| 
|Floor|Represents a floor within a building and has properties such as name, parentID, label, SortOrder, and so on. A floor must always be parented to a building.|
|Section|Represents a section within a floor and has properties such as name, parentID, label, and so on. A section must always be parented to a floor.|
|Room|Represents a room within the tenant. All rooms in Places must be associated with Exchange mailboxes. A room can be added to a floor or a section. The rich properties of the room include an email address for the room, accessibility, capacity, equipped audio device, equipped video device, and so on.| 
|Workspace|Represents a collection of desks. All the workspaces in Places must be associated with Exchange mailboxes. A workspace can be added to a floor or a section. The rich properties of a workspace include an email address for the workspace, mode, accessibility, and capacity.|
|Desk|Represents individual desks. A desk must be added to a section. The rich properties for the section include email address, mode, and accessibility.|
|RoomList|A collection of rooms in the tenant. Places supports **RoomList** to ensure room booking works in Room Finder across all clients on all devices, such as classic Outlook across desktop and mobile.<br/><br/>However, we recommend that you rely on the new place types and hierarchy if you do not use Room Finder in the tenant. Go to [roomlist](../../v1.0/resources/roomlist.md) for more information.|

## Using the Places API 

The Places API can be used by applications that have the appropriate read or write permissions on Places objects.

> [!Note]
> The **findRooms** and **findRoomLists** functions are deprecated.

|Places API|findRooms and findRoomLists functions (deprecated)|
|:--|:--|
| Gets all the rooms or room lists in a tenant, and all the rooms in a room list. | Gets all the rooms or room lists in a tenant, and all the rooms in a room list. |
| [List places](../api/place-list.md) can return more than 100 rooms in a tenant. | [findRooms](../api/user-findrooms.md) returns up to the first 100 rooms in a tenant. |
| Supports [getting an individual room or room list](../api/place-get.md) in a tenant. | Doesn't support getting an individual room or room list in a tenant. |
| Defines the specific entities of [room](./room.md) and [roomList](./roomlist.md) that specify a richer property set, the display name, and the SMTP address. | Each room and room list is of a lighter-weight [emailAddress](emailaddress.md) type that specifies only the display name and SMTP address.|
| Supports only organizational scenarios with delegated (work or school accounts) or application permissions. | Supports only organizational scenarios with delegated or application permissions. |
| Supports [updating an individual room or room list](../api/place-update.md) in a tenant. | Doesn't support updating an individual room or room list in a tenant. |

## Methods 

|Method|Return Type|Description|
|:--|:--|:--|
|[Create place](../api/place-create.md)|Created place|Create a new place.|
|[Get place](../api/place-get.md)|The requested, derived type of **place** or list of places|Get the properties and relationships of a specified **place** object or a list of places objects of a specific type.|
|[Update place](../api/place-update.md)|The requested, derived type of **place**|Update the properties and relationships of a specified **place** object.|
|[Delete place](../api/place-delete.md)||Delete a **place** of any kind using the **id** of the **place**| 
|[Descendants](../api/place-descendants.md)|List of Places objects|Returns the list of specific types (floor, section, rooms, desks, or workspaces) under a given **place**.|

## Properties

### Base properties

These base properties are inherited by all **place** types.

|Property|Type|Description|
|:--|:--|:--|
|id|String|A unique identifier for the **place**. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration.|
|placeId|String|An alternate immutable unique identifier of the **place**. Read-only.|
|displayName|String|The name is associated with the **place**. In legacy objects, this property is called **label**.|
|description|String|User-defined description of the place. This property is referred to as **label** in the Places PowerShell cmdlet and in objects created in version 1 of Microsoft Places.|
|resourceLinks|ResourceLink collection|A set of links to external resources associated with the **place**.|
|isWheelChairAccessible|Boolean|Specifies whether the **place** is wheelchair accessible.|

### Building properties 

The **building** type supports all [base properties](#base-properties), as well as the following properties:

|Property|Type|Description|
|:--|:--|:--|
|hasWiFi|||

### Floor properties

The **floor** type supports all [base properties](#base-properties), as well as the following properties:

|Property|Type|Description|
|:--|:--|:--|
|sortOrder|Integer|Specifies the sort order of the floor. For example, a floor might be named "Lobby" with a sort order of 0 to show this floor first in ordered lists.|

### Room properties  

The **room** type supports all [base properties](#base-properties), as well as the following properties:

|Property|Type|Description|
|:--|:--|:--|
|capacity|Integer|The maximum number of people that the **room** can accommodate.|
|audioDeviceName|String|The name of the audio device that is available in the room.|
|videoDeviceName|String|The name of the video device that is available in the room.|
|displayDeviceName|String|The name of the display device (e.g., monitor, projector, and so on) available in the room.|
|isTeamsEnabled|Boolean|Identifies whether the room is configured with Microsoft Teams Rooms.|
|emailAddress|String|The email address associated with the room. Used for booking.|
|isWheelChairAccessible|Boolean|Specifies whether the room is wheelchair accessible.|
|nickname|||
|building|||
|floorNUmber|||
|floorLabel|||
|label|||
|bookingType|||

### Workspace properties

The **workspace** type supports all [base properties](#base-properties), as well as the following properties: 

|Property|Type|Description|
|:--|:--|:--|
|capacity|Integer|The number of individual desks within the **workspace**.|
|displayDeviceName|String|The name of the display device (e.g., monitor, projector, and so on) that is available in the workspace.|
|mode|placeMode|The mode for a workspace. There are 3 supported modes: <ul><li>Bookable: Workspaces that can be booked in advance using desk-pool reservation tools.</li><li>Walkup: First come, first serve workspaces. As soon as a user plugs into a peripheral at one of the desks in the workspace, the desk is booked for the user, assuming the admin has associated the peripherals with individual desks in Teams Pro Management portal.</li><li>Offline: Workspaces that are taken down for maintenance or marked as not bookable.</li></ul>|
|emailAddress|String|The email address associated with the workspace. Used for booking.|
|nickname|||
|building|||
|floorNumber|||
|label|||
|isWheelChairAccessible|||
|floorLabel|||

### Desk properties  

The **desk** type supports all [base properties](#base-properties), as well as the following properties:

|Property|Type|Description|
|:--|:--|:--|
|mailboxDetails|mailboxDetails|The mailbox object-ids and email address that are associated with the desk.|
|displayDeviceName|String|The name of the display device (e.g., monitor, projector, and so on) that is available at the desk.|
|tags|Collection (String)|Custom tags that are associated with the desk for categorization or filtering.|
|Mode|Dictionary|The mode of the **desk**. There are 4 supported modes:<ul><li>Assigned: Desks that are assigned to a user.</li><li>Bookable: Desks that can be booked in advance using desk reservation tools.</li><li>Walkup: First come, first serve desk. As soon as a user plugs into a peripheral at these desks, the desk is booked for the user, assuming the admin has associated the peripherals with individual desks in Teams Pro Management portal.</li><li>Offline: Desks that are taken down for maintenance or marked as not bookable.</li></ul>|
|bookingPolicies|Collection of bookingPolicies|A collection of booking policy objects that define how the place can be reserved.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.place"
}-->

```json
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

## Related content
- To create a room list, use the [New-DistributionGroup](/powershell/module/exchange/users-and-groups/new-distributiongroup) Exchange PowerShell cmdlet.
- To add a room to a room list, use the [Add-DistributionGroupMember](/powershell/module/exchange/users-and-groups/add-distributiongroupmember) Exchange Powershell cmdlet.

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "place resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
