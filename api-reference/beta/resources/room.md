---
title: "room resource type"
description: "Represents a room within a tenant."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# room resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a room within a tenant. A room can be added to a [floor](./floor.md) or to a [section](./section.md).

Inherits from [place](./place.md).

## Methods
For the list of supported methods, see [place](./place.md).

## Properties
|Property |Type |Description |
|:--|:--|:--|
|address |[physicalAddress](./physicaladdress.md) |The physical address of the **room**, including the street, city, state, country or region, and postal code. Inherited from [place](../resources/place.md).|
|audioDeviceName |String |The name of the audio device that is available in the **room**. |
|bookingType |[bookingType](#bookingtype-values) |Specifies how the **room** can be booked. The possible values are:<ul><li>`unknown` - Unspecified booking behavior. We don't recommend that you use this value.</li><li>`standard` - Available for general booking.</li><li>`reserved` - Reserved for specific users or purposes.</li></ul> |
|building |String |The name or identifier of the [building](./building.md) where the **room** is located. |
|capacity |Int32 |The maximum number of people the **room** can accommodate. |
|displayDeviceName |String |The name of the display device (for example, `monitor` or `projector`) that is available in the **room**. |
|displayName |String |The name that is associated with the **room**. Inherited from [place](../resources/place.md).|
|emailAddress |String |The email address associated with the **room**. This email address is used for booking. |
|floorLabel |String |A human-readable label for the [floor](./floor.md); for example, `Ground Floor`. |
|floorNumber |Int32 |The numeric floor level within the building. For example, `1` for first floor, `2` for second floor, and so on. |
|geoCoordinates |[outlookGeoCoordinates](./outlookgeocoordinates.md) |Specifies the **room** location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](../resources/place.md). |
|id |String |The unique identifier for the **room**. Read-only. This identifier isn't immutable and can change if the mailbox or tenant configuration changes. Inherited from [place](../resources/place.md).|
|isTeamsEnabled |Boolean |Indicates whether the **room** is configured with the Microsoft Teams Rooms system. |
|isWheelChairAccessible |Boolean |Indicates whether the **room** is wheelchair accessible. Inherited from [place](../resources/place.md).|
|label |String |User-defined description of the **room**. Inherited from [place](../resources/place.md). |
|nickname |String |A short, friendly name for the **room**, often used for easier identification or display in UI. |
|parentId |String |The ID of a parent [floor](./floor.md) or [section](./section.md). Inherited from [place](../resources/place.md). |
|phone |String |The phone number of the **room**. Inherited from [place](../resources/place.md).|
|placeId |String |An alternate immutable unique identifier of the **room**. Read-only.|
|tags |String collection |Custom tags that are associated with the **room** for categorization or filtering. Inherited from [place](../resources/place.md).|
|teamsEnabledState |placeFeatureEnablement |A state that indicates whether the room is enabled for Microsoft Teams. The possible values are: `unknown`, `enabled`, `disabled`, `unknownFutureValue`.|
|videoDeviceName |String |The name of the video device that is available in the **room**. |

### bookingType values

| Value    | Description                                               |
|:---------|:----------------------------------------------------------|
| unknown  | Unspecified booking behavior. We don't recommend that you use this value. |
| standard | The room can be reserved based on the other settings in this cmdlet. Default. |
| reserved | The room is available only on a first-come, first-served basis. It can't be reserved.|

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
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "audioDeviceName": "String",
  "bookingType": "String",
  "building": "String",
  "capacity": "Int32",
  "displayDeviceName": "String",
  "displayName": "String",
  "emailAddress": "String",
  "floorLabel": "String",
  "floorNumber": "Int32",
  "geoCoordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "id": "String (identifier)",
  "isTeamsEnabled": "Boolean",
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "nickname": "String",
  "parentId": "String",
  "phone": "String",
  "placeId": "String (alternate identifier)",
  "tags": ["String"],
  "teamsEnabledState": "String",
  "videoDeviceName": "String"
}
```

