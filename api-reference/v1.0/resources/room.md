---
title: "room resource type"
description: "Specifies the properties of a room in a tenant."
ms.localizationpriority: medium
author: "vrod9429"
ms.subservice: "outlook"
doc_type: "resourcePageType"
ms.date: 03/22/2024
---

# room resource type

Namespace: microsoft.graph

Represents a room within a tenant. A room can be added to a [floor](./floor.md) or to a [section](./section.md).

Inherits from [place](./place.md).

## Methods
For the list of supported methods, see [place](./place.md).

## Properties

| Property               | Type                                              | Description |
|:-----------------------|:--------------------------------------------------|:--|
| address                | [physicalAddress](physicaladdress.md)             | The street address of the room. |
| audioDeviceName        | String                                            | Specifies the name of the audio device in the room. |
| bookingType            | [bookingType](#bookingtype-values)                | Type of room. Possible values are: `unknown`, `standard`, `reserved`. |
| building               | String                                            | Specifies the building name or building number that the room is in. |
| capacity               | Int32                                             | Specifies the capacity of the room. |
| displayDeviceName      | String                                            | Specifies the name of the display device in the room. |
| displayName            | String                                            | The name associated with the room. |
| emailAddress           | String                                            | Email address of the room. |
| floorLabel             | String                                            | Specifies a descriptive label for the floor, for example, P. |
| floorNumber            | Int32                                             | Specifies the floor number that the room is on. |
| geoCoordinates         | [outlookGeoCoordinates](outlookgeocoordinates.md) | Specifies the room location in latitude, longitude, and optionally, altitude coordinates. |
|id |String |The unique identifier for the **room**. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. Inherited from [place](./place.md).|
| isWheelChairAccessible | Boolean                                           | Specifies whether the room is wheelchair accessible. Inherited from [place](./place.md). |
| label                  | String                                            | Specifies a descriptive label for the room, for example, a number or name. Inherited from [place](./place.md). |
| nickname               | String                                            | Specifies a nickname for the room, for example, "conf room". |
| parentId |String | The ID of a parent [floor](./floor.md) or [section](./section.md). Inherited from [place](./place.md). |
| phone                  | String                                            | The phone number of the room. |
| placeId |String | An alternative immutable unique identifier of the **room**. Read-only. |
| tags | String collection | Specifies other features of the room, for example, details like the type of view or furniture type. Inherited from [place](./place.md). |
|teamsEnabledState |placeFeatureEnablement |A state that indicates whether the **room** is enabled for Microsoft Teams. The possible values are: `unknown`, `enabled`, `disabled`, `unknownFutureValue`.|
| videoDeviceName        | String                                            | Specifies the name of the video device in the room. |

### bookingType values

| Value    | Description                                               |
|:---------|:----------------------------------------------------------|
| unknown  | Unspecified booking behavior. We don't recommend that you use this value. |
| reserved | The room is available only on a first-come, first-served basis. It can't be reserved.|
| standard | The room is available and can be reserved. This value is the default. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.room"
}-->

```json
{
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "audioDeviceName": "String",
  "bookingType": "String",
  "building": "String",
  "capacity": 1024,
  "displayName": "String",
  "displayDeviceName": "String",
  "emailAddress": "String",
  "floorLabel": "String",
  "floorNumber": 1024,
  "geoCoordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "id": "String (identifier)",
  "isWheelChairAccessible": true,
  "label": "String",
  "nickname": "String",
  "parentId": "String",
  "phone": "String",
  "placeId": "String (alternative identifier)",
  "tags": ["String"],
  "teamsEnabledState": "String",
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

