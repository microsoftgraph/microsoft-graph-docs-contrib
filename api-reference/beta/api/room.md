---
title: "room resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# room resource type

Get a list of rooms in your tenant.Details about each room is also provided.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get room](../api/room-get.md) | [room](room.md) | Read properties and relationships of room object. |


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|audioDeviceName|String|Specifies the name of the audio device in the room. |
|bookingType|[outlookbookingType](outlookbookingtype.md)|Type of room (standard, reserved, managed)|
|building|String|Specifies the building name or building number that the room is in.|
|capacity|String|Specifies the capacity of the room.|
|displayDeviceName|String|Specifies the name of the display device in the room|
|emailAddress|String|Email address of the room|
|floorNumber|Int32|Specifies the floor number that the room is on|
|isWheelchairAccessible|Boolean|Specifies whether the room is wheelchair accessible.|
|label|String|Specifies a descriptive label for the room (for example, a number or name).|
|nickname|String|Specifies a nickname for the room (for example, conf room).|
|tags|String[]|Specifies additional features of the room (for example, details like the type of view or furniture type).|
|videoDeviceName|String|Specifies the name of the video device in the room|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.room",
  "baseType": ""
}-->

```json
{
  "audioDeviceName": "String",
  "bookingType": {"@odata.type": "microsoft.graph.outlookbookingType"},
  "building": "String",
  "capacity": "String",
  "displayDeviceName": "String",
  "emailAddress": "String",
  "floorNumber": 1024,
  "isWheelchairAccessible": true,
  "label": "String",
  "nickname": "String",
  "tags": "String",
  "videoDeviceName": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "room resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
