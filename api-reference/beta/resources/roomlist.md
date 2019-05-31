---
title: "roomList resource type"
description: "Represents a group of rooms created by the company."
localization_priority: Normal
author: "vrod9429"
ms.prod: "outlook"
doc_type: "resourcePageType"
---

# roomList resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a group of rooms created by the company.

Derived from [place](place.md).

## Methods

| Method                              | Return Type                  | Description |
|:------------------------------------|:-----------------------------|:--------|
| [List places](../api/place-list.md) | [place](place.md) collection | Get a place object collection. |
| [Get place](../api/place-get.md)    | [place](place.md)            | Read properties and relationships of roomList object. |

## Properties

| Property       | Type                                              | Description |
|:---------------|:--------------------------------------------------|:--------|
| address        | [physicalAddress](physicaladdress.md)             | The address of the roomlist. |
| displayName    | String                                            | The name associated with the roomlist. |
| emailAddress   | String                                            | The email address of the roomlist. |
| geoCoordinates | [outlookGeoCoordinates](outlookgeocoordinates.md) | Specifies the roomlist location in latitude, longitude and (optionally) altitude coordinates. |
| id             | String                                            | Unique identifier for the roomlist. Read-only. |
| phone          | String                                            | The phone number of the roomlist. |

## Relationships

| Relationship | Type                         | Description          |
|:-------------|:-----------------------------|:---------------------|
| rooms        | [place](place.md) collection | Read-only. Nullable. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.roomList",
  "baseType": ""
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
