---
title: "place resource type"
description: "Represents a place. Defines the base type for a room or roomList."
ms.localizationpriority: medium
author: "vrod9429"
ms.subservice: "outlook"
doc_type: "resourcePageType"
ms.date: 08/06/2025
---

# place resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/place-list.md)|[place](../resources/place.md) collection|Get a list of the place objects and their properties.|
|[Create](../api/place-post-places.md)|[place](../resources/place.md)|Create a new place object.|
|[Get](../api/place-get.md)|[place](../resources/place.md)|Read the properties and relationships of [place](../resources/place.md) object.|
|[Update](../api/place-update.md)|[place](../resources/place.md)|Update the properties of a place object.|
|[Delete](../api/place-delete.md)|None|Delete a place object.|
|[descendants](../api/place-descendants.md)|[place](../resources/place.md) collection|**TODO: Add Description**|
|[Get checkInClaim](../api/checkinclaim-get.md)|[checkInClaim](../resources/checkinclaim.md)|**TODO: Add a useful description.**|
|[Create checkInClaim](../api/place-post-checkins.md)|[checkInClaim](../resources/checkinclaim.md)|Create a new checkInClaim object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isWheelChairAccessible|Boolean|**TODO: Add Description**|
|label|String|**TODO: Add Description**|
|parentId|String|**TODO: Add Description**|
|phone|String|**TODO: Add Description**|
|placeId|String|**TODO: Add Description**|
|tags|String collection|**TODO: Add Description**|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|checkIns|[checkInClaim](../resources/checkinclaim.md) collection|**TODO: Add Description**|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.place",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.place",
  "id": "String (identifier)",
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "placeId": "String",
  "parentId": "String",
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "label": "String"
}
```
