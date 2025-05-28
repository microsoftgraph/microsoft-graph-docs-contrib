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

Place object represents different space types within a tenant. A place object can be one of the following types: 

|Place Type|Details|
|--|--| 
|Building|Represents a tenant building and has properties such as name, address, geographic coordinates, address, and so on.| 
|Floor|Represents a floor within a building and has properties such as name, parentID, label, SortOrder, and so on. A floor must always be parented to a building.|
|Section|Represents a section within a floor and has including properties such as name, parentID, label, and so on. A section must always be parented to a floor.|
|Room|Represents a room within the tenant. All rooms in Places must be associated with Exchange mailboxes. A room can be added to a floor or a section. The rich properties of the room include an email address for the room, accessibility, capacity, audio device, video device, and so on.| 
|Workspace|Represents a collection of desks. All the workspaces in Places must be associated with Exchange mailboxes. A workspace can be added to a floor or a section. The rich properties of a workspace include an email address for the workspace, mode, accessibility, and capacity.|
|Desk|Represents individual desks. A desk must be added to a section. The rich properties for the section include email address, mode, and accessibility.|

**Everything from here to the following table is slated to be reworked**

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

## Methods 

|Method|Return Type|Description|
|--|--|--|
|Create place|Created place|Create a new place|
|[Get place](../api/place-get.md)|The requested, derived type of [place](./place.md) or list of places|Get the properties and relationships of a specified **place** object or a list of places object of a specific type|
|[Update place](../api/place-update.md)|The requested, derived type of [place](./place.md)|Update the properties and relationships of a specified **place** object.|
|Delete place||Delete a **place** of any kind using the **id** of the **place**| 
|descendants|List of Places objects|Returns the list of specific type (floor, section, rooms, desks, or workspaces) of places under a Place|

## Properties

### Base properties

These base properties are inherited by all **Place** types.

|Property|Type|Description|
|--|--|--|
|Id|String|A unique identifier for the **place**. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration.|
|placeId|String|An alternate immutable unique identifier of the **place**. Read-only.|
|displayName|String|The name is associated with the **place**. In legacy objects, this property will be called **label**.|
|Description|String|User-defined description of the place. This property is referred to as **label** in the Places PowerShell cmdlet and in objects created in version 1 of Microsoft Places.|
|resourceLinks|ResourceLink collection|A set of links to external resources associated with the place.|
|IsWheelChairAccessible|Boolian|Is the **place** wheelchair accessible or not.|

### Building properties 

In addition to the base properties, the **building** supports the following additional properties:

|Property|Type|Description|
|--|--|--|
|address|physicalAddress|The street address of the **place**, including Street, City, state, country or region, and postal code.|  
|geoCoordinates|[outlookGeoCoordinates](../../v1.0/resources/outlookgeocoordinates.md)|Specifies the **place** location in latitude, longitude, and (optionally) altitude coordinates.|
|phone|String|The phone number of the **place**.|

### Floor properties

In addition to the base properties, the building supports the following additional properties:

|Property|Type|Description|
|--|--|--|
|parentId|String|ID of a Building in which this floor is located.|
|phone|String|The phone number of the place.|
|SortOrder|Integer|Specifies the sort order of the floor. For example, a floor might be named "Lobby" with a sort order of 0 to show this floor first in ordered lists.|

### Section properties

In addition to the base properties, the building supports the following additional properties:  

|Property|Type|Description|
|--|--|--|
|parentId|String|ID of the floor in which this section is located.|

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
- For administrators to create a room list, use the Exchange PowerShell cmdlet [New-DistributionGroup](/powershell/module/exchange/users-and-groups/new-distributiongroup).
- For administrators to add a room to a room list, use the Exchange Powershell cmdlet [Add-DistributionGroupMember](/powershell/module/exchange/users-and-groups/add-distributiongroupmember).

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "place resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
