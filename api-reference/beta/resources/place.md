---
title: "place resource type"
description: "Represents a place. This is the base type for a room or roomList."
localization_priority: Normal
author: "vrod9429"
ms.prod: "outlook"
doc_type: "resourcePageType"
---

# place resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents basic location attributes such as name, physical address, and geographic coordinates. This is the base type for richer location types such as [room](room.md) and [roomList](roomlist.md).

### Using the places API
Tenant administrators can organize meeting rooms into room lists. You can use the places API to get all the room lists or rooms in the tenant, or get all the rooms in a specific room list.

Places like [room](room.md) and [roomList](roomlist.md) not only contain an **id**, display name and email address, but also navigational information like its physical address or geographical coordinates, and other relevant information such as AV capabilities, floor number, or capacity in the case of rooms.

The [findRooms](../api/user-findrooms.md) and [findRoomLists](../api/user-findroomlists.md) functions support similar lookup for rooms and room lists in a tenant. The following is a comparison between the places API and these functions.

|Places API |findRooms and findRoomLists functions|
|:------------------------------------|:-----------------------------|
|Supports getting all rooms or room lists in a tenant, and all rooms in a room list | Similar support - get all rooms or room lists in a tenant, and all rooms in a room list|
|Supports [getting an individual room or room list](../api/place-get.md) in a tenant | Does not support getting an individual room or room list in a tenant
|Defines the specific entities of [room](room.md) and [roomList](roomlist.md) which specify a richer property set, in addition to the display name and SMTP address. | Each room and room list is of a lighter weight [emailAddress](emailaddress.md) type which specifies only the display name and SMTP address|
|Supports only organizational scenarios with delegated (work or school accounts) or application permissions | Similar support for only organizational scenarios with delegated or application permissions|

## Methods

| Method                              | Return Type                  | Description |
|:------------------------------------|:-----------------------------|:--------|
| [List places](../api/place-list.md) | [place](place.md) collection | Retrieve a list of place objects. |
| [Get place](../api/place-get.md)    | [place](place.md)            | Retrieve the properties and relationships of a place object. |

## Properties

| Property       | Type                                              | Description |
|:---------------|:--------------------------------------------------|:--------|
| address        | [physicalAddress](physicaladdress.md)             | The street address of the place. |
| displayName    | String                                            | The name associated with the place. |
| geoCoordinates | [outlookGeoCoordinates](outlookgeocoordinates.md) | Specifies the place location in latitude, longitude and (optionally) altitude coordinates. |
| id             | String                                            | Unique identifier for the place. Read-only. |
| phone          | String                                            | The phone number of the place. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.place",
  "baseType": ""
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

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "place resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
