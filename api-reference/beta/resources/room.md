---
title: "room resource type"
description: "**TODO: Add Description**"
author: "MSGraphDocsvTeam"
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# room resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [place](../resources/place.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/roomlist-list-rooms.md)|[room](../resources/room.md) collection|Get a list of the room objects and their properties.|
|[Create](../api/roomlist-post-rooms.md)|[room](../resources/room.md)|Create a new room object.|
|[Get](../api/room-get.md)|[room](../resources/room.md)|Read the properties and relationships of a room object.|
|[Update](../api/room-update.md)|[room](../resources/room.md)|Update the properties of a room object.|
|[Delete](../api/roomlist-delete-rooms.md)|None|Delete a room object.|
|[descendants](../api/room-descendants.md)|[place](../resources/place.md) collection|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|audioDeviceName|String|**TODO: Add Description**|
|bookingType|bookingType|**TODO: Add Description**.The possible values are: `unknown`, `standard`, `reserved`.|
|building|String|**TODO: Add Description**|
|capacity|Int32|**TODO: Add Description**|
|displayDeviceName|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|emailAddress|String|**TODO: Add Description**|
|floorLabel|String|**TODO: Add Description**|
|floorNumber|Int32|**TODO: Add Description**|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isTeamsEnabled|Boolean|**TODO: Add Description**|
|isWheelChairAccessible|Boolean|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|label|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|nickname|String|**TODO: Add Description**|
|parentId|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|phone|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|placeId|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|tags|String collection|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|videoDeviceName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.room",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.room",
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
  "resourceLinks": [
    {
      "@odata.type": "microsoft.graph.resourceLink"
    }
  ],
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "emailAddress": "String",
  "nickname": "String",
  "building": "String",
  "floorNumber": "Integer",
  "capacity": "Integer",
  "bookingType": "String",
  "audioDeviceName": "String",
  "videoDeviceName": "String",
  "displayDeviceName": "String",
  "floorLabel": "String",
  "isTeamsEnabled": "Boolean"
}
```

