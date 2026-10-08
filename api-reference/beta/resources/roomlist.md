---
title: "roomList resource type"
description: "Represents a group of rooms created by the company."
ms.localizationpriority: medium
author: tiwarisakshi02
ms.subservice: outlook
doc_type: "resourcePageType"
ms.date: 08/31/2026
---

# roomList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a group of [room](../resources/room.md) or [workspace](../resources/workspace.md) resources defined in the tenant. A **roomList** can contain a mix of **room** and **workspace** resources.

In Exchange Online, each **roomList** is associated with a mailbox.

Inherits from [place](../resources/place.md).

## Methods

| Method                              | Return Type                  | Description |
|:------------------------------------|:-----------------------------|:--------|
| [List places](../api/place-list.md) | A collection of the requested, derived type of [place](../resources/place.md) | Get a collection of the specified type of **place** object defined in the tenant. For example, you can get all the rooms, all the workspaces, all the room lists, the workspaces in a specific room list, or the rooms in a specific room list in the tenant.|
| [Get place](../api/place-get.md)    | The requested, derived type of [place](../resources/place.md)            | Get the properties and relationships of the specified **place** object, such as a room list. |
| [Update place](../api/place-update.md)    | The requested, derived type of [place](../resources/place.md)            | Update the properties and relationships of a specified **place** object. |

## Properties

| Property       | Type                                              | Description |
|:---------------|:--------------------------------------------------|:--------|
| address        | [physicalAddress](../resources/physicaladdress.md)             | The street address of the room list. |
| customProperties | [stringDictionary](../resources/stringdictionary.md)         | Custom properties for the room list. Each property has a string key and a string value. Inherited from [place](../resources/place.md). Nullable. |
| displayName    | String                                            | The name associated with the room list. |
| emailAddress   | String                                            | The email address of the room list. |
| geoCoordinates | [outlookGeoCoordinates](../resources/outlookgeocoordinates.md) | Specifies the roomlist location in latitude, longitude, and (optionally) altitude coordinates. |
| id             | String                                            | Unique identifier for the room list. Read-only. This identifier isn't immutable and can change if there are changes to the mailbox or to the tenant configuration. |
| lastUpdatedTime | DateTimeOffset                                   | The date and time when the room list was last updated. The timestamp is in ISO 8601 format and is always in UTC. Inherited from [place](../resources/place.md). Read-only. Nullable. |
| phone          | String                                            | The phone number of the room list. |

## Relationships

| Relationship | Type                         | Description          |
|:-------------|:-----------------------------|:---------------------|
| rooms        | [place](../resources/place.md) collection | Read-only. Nullable. |
| workspaces   | [place](../resources/place.md) collection | Read-only. Nullable. |

## JSON representation

The following JSON representation shows the resource type.

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
  "customProperties": {"String": "String"},
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "emailAddress": "String",
  "lastUpdatedTime": "String (timestamp)"
}
```
