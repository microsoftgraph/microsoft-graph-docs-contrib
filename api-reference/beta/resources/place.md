---
title: "place resource type"
description: "Represents a place. This is the base type for a room or roomList."
ms.localizationpriority: medium
author: "vrod9429"
ms.prod: "outlook"
doc_type: "resourcePageType"
---

# place resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents basic location attributes such as name, physical address, and geographic coordinates. This is the base type for richer location types such as [room](room.md), [workspace](workspace.md), and [roomList](roomlist.md).

### Using the places API
Exchange Online administrators can organize either meeting rooms or work spaces in a tenant into room lists. Using the places API, you can get all the room lists, rooms, or work spaces in the tenant, or get all the rooms/work spaces in a specific room list.

Places like [room](room.md), [workspace](workspace.md) and [roomList](roomlist.md) contain the basic **id**, display name and email address. In addition, they contain navigational information like physical address and geographical coordinates, and in the case of rooms, other relevant information such as AV capabilities, floor number, and capacity.

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
| geoCoordinates | [outlookGeoCoordinates](outlookgeocoordinates.md) | Specifies the place location in latitude, longitude and (optionally) altitude coordinates. |
| id             | String                                            | Unique identifier for the place. Read-only. |
| phone          | String                                            | The phone number of the place. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

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

## See also
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
