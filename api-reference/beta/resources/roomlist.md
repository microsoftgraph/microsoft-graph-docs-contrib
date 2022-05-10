---
title: "roomList resource type"
description: "Represents a group of rooms created by the company."
ms.localizationpriority: medium
author: "vrod9429"
ms.prod: "outlook"
doc_type: "resourcePageType"
---

# roomList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a group of [room](room.md) or [workspace](workspace.md) resources defined in the tenant. A **roomList** can contain a mix of **room** and **workspace** resources. 

In Exchange Online, each **roomList** is associated with a mailbox.

Derived from [place](place.md).

## Methods

| Method                              | Return Type                  | Description |
|:------------------------------------|:-----------------------------|:--------|
| [List places](../api/place-list.md) | A collection of the requested, derived type of [place](place.md) | Get a collection of the specified type of **place** object defined in the tenant. For example, you can get all the rooms, all the workspaces, all the room lists, the workspaces in a specific room list, or the rooms in a specific room list in the tenant.|
| [Get place](../api/place-get.md)    | The requested, derived type of [place](place.md)            | Get the properties and relationships of the specified **place** object, such as a room list. |
| [Update place](../api/place-update.md)    | The requested, derived type of [place](place.md)            | Update the properties and relationships of a specified **place** object. |

## Properties

| Property       | Type                                              | Description |
|:---------------|:--------------------------------------------------|:--------|
| address        | [physicalAddress](physicaladdress.md)             | The street address of the room list. |
| displayName    | String                                            | The name associated with the room list. |
| emailAddress   | String                                            | The email address of the room list. |
| geoCoordinates | [outlookGeoCoordinates](outlookgeocoordinates.md) | Specifies the roomlist location in latitude, longitude and (optionally) altitude coordinates. |
| id             | String                                            | Unique identifier for the room list. Read-only. |
| phone          | String                                            | The phone number of the room list. |

## Relationships

| Relationship | Type                         | Description          |
|:-------------|:-----------------------------|:---------------------|
| rooms        | [place](place.md) collection | Read-only. Nullable. |
| workspaces   | [place](place.md) collection | Read-only. Nullable. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.roomList",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.roomList",
  "id": "String (identifier)",
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "emailAddress": "String"
}
```


