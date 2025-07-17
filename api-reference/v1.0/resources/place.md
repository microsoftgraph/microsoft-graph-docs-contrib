---
title: "place resource type"
description: "Represents a place. This resource is the base type for a room or roomList."
ms.localizationpriority: medium
author: "vrod9429"
ms.subservice: "outlook"
doc_type: "resourcePageType"
ms.date: 03/22/2024
---

# place resource type

Namespace: microsoft.graph

Represents basic location attributes such as name, physical address, and geographic coordinates. This resource is the base type for richer location types such as [room](room.md) and [roomList](roomlist.md).

### Using the places API
Exchange Online administrators can organize meeting rooms in a tenant into room lists. Using the places API, you can get all the room lists or rooms in the tenant, or get all the rooms in a specific room list.

Places like [room](room.md) and [roomList](roomlist.md) contain the basic **ID**, display name, and email address. In addition, they contain navigational information like physical address and geographical coordinates, and in the case of rooms, other relevant information such as AV capabilities, floor number, and capacity.

The [findRooms](/graph/api/user-findrooms) and [findRoomLists](/graph/api/user-findroomlists) functions support similar lookups for rooms and room lists in a tenant. The following table compares the places API and these functions. 

> **Note:** The **findRooms** and **findRoomLists** functions are deprecated.

|Places API |findRooms and findRoomLists functions (deprecated)|
|:------------------------------------|:-----------------------------|
|Gets all the rooms or room lists in a tenant, and all the rooms in a room list. | Gets all the rooms or room lists in a tenant, and all the rooms in a room list.|
|[List places](../api/place-list.md) can return more than 100 rooms in a tenant. | [findRooms](/graph/api/user-findrooms) returns up to the first 100 rooms in a tenant. |
|Supports [getting an individual room or room list](../api/place-get.md) in a tenant. | It doesn't support getting an individual room or room list in a tenant.|
|Defines the specific entities of [room](room.md) and [roomList](roomlist.md) that specify a richer property set, in addition to the display name and SMTP address. | Each room and room list is of a lighter weight [emailAddress](emailaddress.md) type that specifies only the display name and SMTP address.|
|Supports only organizational scenarios with delegated (work or school accounts) or application permissions. | Supports only organizational scenarios with delegated or application permissions.|
|Supports [updating an individual room or room list](/graph/api/place-update) in a tenant. | Doesn't support updating an individual room or room list in a tenant.|

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
| id             | String                                            | A unique identifier for the place. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration. The beta version of this API has a new property added called **placeId**, which provides an immutable ID. |
| phone          | String                                            | The phone number of the place. |

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
  "phone": "String"
}
```

## Related content
- For administrators to create a room list, use the Exchange PowerShell cmdlet [New-DistributionGroup](/powershell/module/exchange/users-and-groups/new-distributiongroup?view=exchange-ps&preserve-view=true).
- For administrators to add a room to a room list, use the Exchange Powershell cmdlet [Add-DistributionGroupMember](/powershell/module/exchange/users-and-groups/add-distributiongroupmember?view=exchange-ps&preserve-view=true).

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "place resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
