---
title: "roomList resource type"
description: "Represents a group of rooms created by the company."
ms.localizationpriority: medium
author: "vrod9429"
ms.subservice: "outlook"
doc_type: "resourcePageType"
ms.date: 03/22/2024
---

# roomList resource type

Namespace: microsoft.graph

Represents a group of [room](room.md) objects defined in the tenant.

Derived from [place](place.md).

## Methods

| Method                              | Return Type                  | Description |
|:------------------------------------|:-----------------------------|:--------|
| [List places](../api/place-list.md) | A collection of the requested, derived type of [place](place.md) | Get a collection of the specified type of **place** object defined in the tenant. For example, you can get all the rooms, all the room lists, or the rooms in a specific room list in the tenant.|
| [Get place](../api/place-get.md)    | The requested, derived type of [place](place.md)            | Get the properties and relationships of the specified **place** object, such as a room list. |
| [Update place](../api/place-update.md)    | The requested, derived type of [place](place.md)            | Update the properties and relationships of a specified **place** object. |

## Properties

| Property       | Type                                              | Description |
|:---------------|:--------------------------------------------------|:--------|
| address        | [physicalAddress](physicaladdress.md)             | The street address of the room list. |
| displayName    | String                                            | The name associated with the room list. |
| emailAddress   | String                                            | The email address of the room list. |
| geoCoordinates | [outlookGeoCoordinates](outlookgeocoordinates.md) | Specifies the roomlist location in latitude, longitude, and (optionally) altitude coordinates. |
| id             | String                                            | Unique identifier for the room list. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or the tenant configuration. The beta version of this API has a new property added called **placeId**, which provides an immutable ID |
| phone          | String                                            | The phone number of the room list. |

## Relationships

| Relationship | Type                         | Description          |
|:-------------|:-----------------------------|:---------------------|
| rooms        | [place](place.md) collection | Read-only. Nullable. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.roomList"
}-->

```json
{
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "displayName": "String",
  "emailAddress": "String",
  "geoCoordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "id": "String (identifier)",
  "phone": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "roomList resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

