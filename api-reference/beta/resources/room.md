---
title: "room resource type"
description: "Represents a room within the tenant."
author: "MSGraphDocsvTeam"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# room resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a room within the tenant.

A room can be added to a [floor](./floor.md) or to a [section](./section.md).

Inherits from [place](../resources/place.md).

## Methods

Go to the [place](./place.md) documentation for supported methods.

## Properties

The **room** type supports all [base properties of a **place** object](./place.md#base-properties) and the following properties:

|Property |Type |Description |
|:--|:--|:--|
|audioDeviceName |String |The name of the audio device that is available in the room. |
|bookingType |String |Specifies how the place can be booked. Possible values are: <br/><br/> <ul><li>**standard** - Available for general booking</li>
<li>**reserved** – Reserved for specific users or purposes</li>
<li>**unknown** – Default or unspecified booking behavior</li>
</ul> |
|building |String |The name or identifier of the building where the **place** (such as a room or a desk) is located. |
|capacity |Integer |The maximum number of people in the **room** can accommodate. |
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available in the room. |
|emailAddress |String |The email address associated with the room. This email address is used for booking. |
|floorLabel |String |A human-readable label for the floor, such as "Ground Floor". |
|floorNumber |Integer |The numeric floor level within the building. For example, 1 for first floor, 2 for second floor, and so on. |
|isTeamsEnabled |Boolean |Whether or not the room is configured with the Microsoft Teams Room system. |
|label |String |A custom identifier or tag for the **place**, often used to distinguish it within a floor or section. |
|nickname |String |A short, friendly name for the **place**, often used for easier identification or display in UI. |
|videoDeviceName |String |The name of the video device that is available in the room. |

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

