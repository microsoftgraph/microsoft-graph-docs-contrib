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

Represents a place. This is the base type for a [room](room.md) or [roomList](roomlist.md).

## Using the Places API
Tenants can organize meeting rooms into room lists. You can get all the room lists in the tenant, get all the rooms in the tenant, or get all the rooms in a specific room list. 

We have also added more details about each to allow for queries like get a list of all rooms by city,floor, or building.

## Methods

| Method                              | Return Type                  | Description |
|:------------------------------------|:-----------------------------|:--------|
| [List places](../api/place-list.md) | [place](place.md) collection | Retrieve a list of place objects. |
| [Get place](../api/place-get.md)    | [place](place.md)            | Retrieve the properties and relationships of a place object. |

## Properties

| Property       | Type                                              | Description |
|:---------------|:--------------------------------------------------|:--------|
| address        | [physicalAddress](physicaladdress.md)             | The address of the place. |
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
