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
|Building|Represents a tenant building and has properties such as name, address, geographic coordinates, address, and so on.| 
|Floor|Represents a floor within a building and has properties such as name, parentID, label, SortOrder, and so on. A floor must always be parented to a building.|
|Section|Represents a section within a floor and has including properties such as name, parentID, label, and so on. A section must always be parented to a floor.|
|Room|Represents a room within the tenant. All rooms in Places must be associated with Exchange mailboxes. A room can be added to a floor or a section. The rich properties of the room include an email address for the room, accessibility, capacity, audio device, video device, and so on.| 
|Workspace|Represents a collection of desks. All the workspaces in Places must be associated with Exchange mailboxes. A workspace can be added to a floor or a section. The rich properties of a workspace include an email address for the workspace, mode, accessibility, and capacity.|
|Desk|Represents individual desks. A desk must be added to a section. The rich properties for the section include email address, mode, and accessibility.|

**Everything from here to the Methods section needs to be reworked**
**Everything from here to the Methods section needs to be reworked**
**Everything from here to the Methods section needs to be reworked**
**Everything from here to the Methods section needs to be reworked**
**Everything from here to the Methods section needs to be reworked**

**Note:** Places supports Roomlist as well to ensure backward compatibility with Outlook Roomfinder. However rely on the above-mentioned place types if you do not need backward compatibility with Roomfinder. More details on roomlist can be found here: roomList resource type - Microsoft Graph v1.0 | Microsoft Learn

## Using the Places API 

Places API can be used by Places administrator or Exchange administrator to create, read, update or delete spaces. All the places objects have basic properties such as ID, placeID, display name. While the more advanced spaces such as rooms, workspaces and desks support properties such as mode, email address, devices information etc.  

The findRooms and findRoomLists functions support similar lookups for rooms and room lists in a tenant. The following table compares the places API and these functions. 

Note: The findRooms and findRoomLists functions are deprecated.

|Places API|findRooms and findRoomLists functions (deprecated)|
|Gets all the rooms or room lists in a tenant, and all the rooms in a room list.|Gets all the rooms or room lists in a tenant, and all the rooms in a room list. |
|[List places](../api/place-list.md) can return more than 100 rooms in a tenant.|
[findRooms](../api/user-findrooms.md) returns up to the first 100 rooms in a tenant.|
|Supports [getting an individual room or room list](../api/place-get.md) in a tenant.|Doesn't support getting an individual room or room list in a tenant.|
|Defines the specific entities of [room](./room.md) and [roomList](./roomlist.md) that specify a richer property set, in addition to the display name and SMTP address.|Each room and room list is of a lighter weight [emailAddress](./emailaddress.md) type that specifies only the display name and SMTP address.|
|Supports only organizational scenarios with delegated (work or school accounts) or application permissions.|Supports only organizational scenarios with delegated or application permissions.|
|Supports [updating an individual room or room list](../api/place-update.md) in a tenant.|Doesn't support updating an individual room or room list in a tenant.|

**Everything up to the above disclaimer needs to be reworked**
**Everything up to the above disclaimer needs to be reworked**
**Everything up to the above disclaimer needs to be reworked**
**Everything up to the above disclaimer needs to be reworked**
**Everything up to the above disclaimer needs to be reworked**

## Methods 

|Method|Return Type|Description|
|:--|:--|:--|
|Create place|Created place|Create a new place|
|[Get place](../api/place-get.md)|The requested, derived type of **place** or list of places|Get the properties and relationships of a specified **place** object or a list of places objects of a specific type|
|[Update place](../api/place-update.md)|The requested, derived type of **place**|Update the properties and relationships of a specified **place** object.|
|Delete place||Delete a **place** of any kind using the **id** of the **place**| 
|descendants|List of Places objects|Returns the list of specific types (floor, section, rooms, desks, or workspaces) under a **place**|

## Properties

### Base properties

These base properties are inherited by all **Place** types.

|Property|Type|Description|
|:--|:--|:--|
|Id|String|A unique identifier for the **place**. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration.|
|placeId|String|An alternate immutable unique identifier of the **place**. Read-only.|
|displayName|String|The name is associated with the **place**. In legacy objects, this property will be called **label**.|
|Description|String|User-defined description of the place. This property is referred to as **label** in the Places PowerShell cmdlet and in objects created in version 1 of Microsoft Places.|
|resourceLinks|ResourceLink collection|A set of links to external resources associated with the **place**.|
|IsWheelChairAccessible|Boolian|Specified whether the **place** is wheelchair accessible.|

### Building properties 

In addition to the base properties, the **building** type supports the following additional properties:

|Property|Type|Description|
|:--|:--|:--|
|address|physicalAddress|The street address of the **place**, including Street, City, state, country or region, and postal code.|  
|geoCoordinates|[outlookGeoCoordinates](../../v1.0/resources/outlookgeocoordinates.md)|Specifies the **place** location in latitude, longitude, and (optionally) altitude coordinates.|
|phone|String|The phone number of the **place**.|

### Floor properties

In addition to the base properties, the **floor** type supports the following additional properties:

|Property|Type|Description|
|:--|:--|:--|
|parentId|String|ID of a Building in which this floor is located.|
|phone|String|The phone number of the place.|
|SortOrder|Integer|Specifies the sort order of the floor. For example, a floor might be named "Lobby" with a sort order of 0 to show this floor first in ordered lists.|

### Section properties

In addition to the base properties, the **section** type supports the following additional properties:  

|Property|Type|Description|
|:--|:--|:--|
|parentId|String|ID of the floor in which this section is located.|

### Room properties  

In addition to the base properties, the **room** type supports the following additional properties:

|Property|Type|Description|
|:--|:--|:--|
|parentId|String|ID of the **floor** or **section** in which this room is located.|
|capacity|Integer|The maximum number of people that the **place** can accommodate.|
|audioDeviceName|String|The name of the audio device that is available in the room.|
|videoDeviceName|String|The name of the video device that is available in the room.|
|displayDeviceName|String|The name of the display device (e.g., monitor, projector, and so on) available in the room.|
|isTeamsEnabled|Boolean|Identifies if the room is configured with Microsoft Teams Rooms.|
|tags|Collection(String)|Custom tags that are associated with the place for categorization or filtering.|
|emailAddress|String|The email address associated with the room. Used for booking.|
|bookingPolicies|Collection of bookingPolicies|A collection of booking policy objects that define how the room can be reserved.|

### Workspace properties

In addition to the base properties, the **workspace** type supports the following additional properties:  

|Property|Type|Description|
|:--|:--|:--|
|parentId|String|ID of the **floor** or **section** in which this **workspace** is located.|
|capacity|Integer|The maximum number of individual desks within a **workspace**.|
|displayDeviceName|String|The name of the display device (e.g., monitor, projector, and so on) that is available in the workspace.|
|tags|Collection(String)|Custom tags that are associated with the workspace for categorization or filtering.|
|mode|placeMode|The mode for a workspace. We support 3 modes: <ul><li>Bookable: Workspaces that can be booked in advance using desk-pool reservation tools.</li><li>Walkup: First come, first serve workspaces. As soon as you plug in to one of the desks in the workspace, the desk will be booked for you, provided you have associated the peripherals in Teams Pro Management portal.</li><li>Offline: Workspaces that are taken down for maintenance or marked as not bookable.</li></ul>|
|emailAddress|String|The email address associated with the workspace. Used for booking.|
|bookingPolicies|Collection of bookingPolicies|A collection of booking policy objects that define how the workspace can be reserved.|

### Desk properties  

Apart from the base properties, the **desk** type supports the following additional properties:

|Property|Type|Description|
|:--|:--|:--|
|parentId|String|ID of the section in which this desk is located.|
|mailboxDetails|mailboxDetails|The mailbox object-ids and email address that are associated with the desk.|
|displayDeviceName|String|The name of the display device (e.g., monitor, projector, and so on) available at the desk.|
|tags|Collection (String)|Custom tags that are associated with the desk for categorization or filtering.|
|Mode|Dictionary|The mode of the **desk**. We support 4 modes:<ul><li>Assigned: Desks that are assigned to a user.</li><li>Bookable: Desks that can be booked in advance using desk reservation tools.</li><li>Walkup: First come, first serve desk. As soon as you plug in to these desks, they will be booked for you, provided you have associated the peripherals in Teams Pro Management portal.</li><li>Offline: Desks that are taken down for maintenance or marked as not bookable.</li></ul>|
|bookingPolicies|Collection of bookingPolicies|A collection of booking policy objects that define how the place can be reserved.|

**Incomplete. Insert updated JSON section**
**Incomplete. Insert updated JSON section**
**Incomplete. Insert updated JSON section**
**Incomplete. Insert updated JSON section**
**Incomplete. Insert updated JSON section**

-----

Represents basic location attributes such as name, physical address, and geographic coordinates. This resource is the base type for richer location types such as [room](room.md), [workspace](workspace.md), and [roomList](roomlist.md).

### Using the places API
Exchange Online administrators can organize meeting rooms and workspaces in a tenant into room lists. Using the places API, you can use the [list](../api/place-list.md) operation to get all the rooms, workspaces, or room lists in the tenant, or get the rooms and workspaces in a specific room list.

Places like [room](room.md), [workspace](workspace.md), and [roomList](roomlist.md) contain the basic **ID**, display name, and email address. In addition, they contain navigational information like physical address and geographical coordinates, and in the case of rooms, other relevant information such as AV capabilities, floor number, and capacity.

The [findRooms](../api/user-findrooms.md) and [findRoomLists](../api/user-findroomlists.md) functions support similar lookups for rooms and room lists in a tenant. The following table compares the places API and these functions. 

> **Note:** The **findRooms** and **findRoomLists** functions are deprecated.

|Places API |findRooms and findRoomLists functions (deprecated)|
|:------------------------------------|:-----------------------------|
|Gets all the rooms or room lists in a tenant, and all the rooms in a room list. | Gets all the rooms or room lists in a tenant, and all the rooms in a room list.|
|[List places](../api/place-list.md) can return more than 100 rooms in a tenant. | [findRooms](../api/user-findrooms.md) returns up to the first 100 rooms in a tenant. |
|Supports [getting an individual room or room list](../api/place-get.md) in a tenant. | Doesn't support getting an individual room or room list in a tenant.|
|Defines the specific entities of [room](room.md) and [roomList](roomlist.md) that specify a richer property set, the display name, and the SMTP address. | Each room and room list is of a lighter weight [emailAddress](emailaddress.md) type that specifies only the display name and SMTP address.|
|Supports only organizational scenarios with delegated (work or school accounts) or application permissions. | Supports only organizational scenarios with delegated or application permissions.|
|Supports [updating an individual room or room list](../api/place-update.md) in a tenant. | Doesn't support updating an individual room or room list in a tenant.|

## Methods

| Method                              | Return Type                  | Description |
|:------------------------------------|:-----------------------------|:--------|
| [List places](../api/place-list.md) | A collection of the requested, derived type of [place](place.md) | Get a collection of the specified type of **place** objects defined in the tenant. |
| [Get place](../api/place-get.md)    | The requested, derived type of [place](place.md)            | Get the properties and relationships of a specified **place** object. |
| [Update place](../api/place-update.md)    | The requested, derived type of [place](place.md)            | Update the properties and relationships of a specified **place** object. |

## Properties

| Property       | Type                                              | Description |
|:---------------|:--------------------------------------------------|:--------|
| address        | [physicalAddress](physicaladdress.md)             | The street address of the place. |
| displayName    | String                                            | The name associated with the place. |
| geoCoordinates | [outlookGeoCoordinates](outlookgeocoordinates.md) | Specifies the place location in latitude, longitude, and (optionally) altitude coordinates. |
| id             | String                                            | A unique identifier for the place. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or to the tenant configuration. |
| phone          | String                                            | The phone number of the place. |
| placeId        | String                                            | A unique, immutable identifier for the place. Read-only. The value of this identifier is equal to the **ExternalDirectoryObjectId** returned from the `Get-Mailbox` cmdlet. |

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
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "displayName": "String",
  "id": "String (identifier)",
  "geoCoordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "phone": "String",
  "placeId": "String (alternate identifier)"
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
