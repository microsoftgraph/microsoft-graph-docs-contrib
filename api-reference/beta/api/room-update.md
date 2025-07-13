---
title: "Update room"
description: "Update the properties of a room object."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Update room

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [room](../resources/room.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "room-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/room-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /room
PATCH /roomList/rooms/{roomId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the [room](../resources/room.md), including the street, city, state, country or region, and postal code. Inherited from [place](../resources/place.md). Optional.|
|audioDeviceName |String |The name of the audio device that is available in the [room](../resources/room.md). Optional. |
|bookingType |[bookingType](../resources/room.md#bookingtype-values) |Specifies how the place can be booked. Possible values are:<ul><li>**standard** - Available for general booking</li><li>**reserved** – Reserved for specific users or purposes</li><li>**unknown** – Default or unspecified booking behavior</li></ul> Optional. |
|building |String |The name or identifier of the building where the [room](../resources/room.md) is located. Optional. |
|capacity |Integer |The maximum number of people in the [room](../resources/room.md) can accommodate. Optional. |
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available in the [room](../resources/room.md). Optional. |
|displayName|String|The name that is associated with the [room](../resources/room.md). Inherited from [place](../resources/place.md). Required.|
|emailAddress |String |The email address associated with the [room](../resources/room.md). This email address is used for booking. Optional. |
|floorLabel |String |A human-readable label for the floor, such as "Ground Floor". Optional. |
|floorNumber |Integer |The numeric floor level within the building. For example, 1 for first floor, 2 for second floor, and so on. Optional. |
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the [room](../resources/room.md) location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](../resources/place.md). Optional.|
|isTeamsEnabled |Boolean |Whether or not the [room](../resources/room.md) is configured with the Microsoft Teams Room system. Required.|
|isWheelChairAccessible|Boolean|Whether or not the [room](../resources/room.md) is wheelchair accessible. Inherited from [place](../resources/place.md). Required.|
|label |String |User-defined description of the [room](../resources/room.md). Optional. |
|nickname |String |A short, friendly name for the [room](../resources/room.md), often used for easier identification or display in UI. Required. |
|parentId|String|**id** of a parent [place](../resources/place.md). Inherited from [place](../resources/place.md). Optional.|
|phone|String|The phone number of the [room](../resources/room.md). Inherited from [place](../resources/place.md). Optional.|
|placeId|String|An alternate immutable unique identifier of the [room](../resources/room.md). Read-only. Inherited from [place](../resources/place.md). Optional.|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|A set of links to external resources that are associated with the [room](../resources/room.md). Inherited from [place](../resources/place.md). Required.|
|tags|String collection|Custom tags that are associated with the [room](../resources/room.md) for categorization or filtering. Inherited from [place](../resources/place.md). Required.|
|videoDeviceName |String |The name of the video device that is available in the [room](../resources/room.md). Optional. |

## Response

If successful, this method returns a `200 OK` response code and an updated [room](../resources/room.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["cf100@contoso.com"],
  "name": "update_room"
}-->
```http
PATCH https://graph.microsoft.com/beta/places/cf100@contoso.com
Content-type: application/json

{
  "@odata.type": "microsoft.graph.room",
  "nickname": "Conf Room",
  "building": "1",
  "label": "100",
  "capacity": 50,
  "isWheelChairAccessible": false
}
```

### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.room"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#places/$entity",
  "@odata.type": "#microsoft.graph.room",
  "id": "3162F1E1-C4C0-604B-51D8-91DA78989EB1",
  "emailAddress": "cf100@contoso.com",
  "displayName": "Conf Room 100",
  "address": {
    "street": "4567 Main Street",
    "city": "Buffalo",
    "state": "NY",
    "postalCode": "98052",
    "countryOrRegion": "USA"
  },
  "geoCoordinates": {
    "latitude": 47,
    "longitude": -122
  },
  "phone": "555-555-0100",
  "nickname": "Conf Room",
  "label": "100",
  "capacity": 50,
  "building": "1",
  "floorLabel": "1P",
  "floorNumber": 1,
  "isWheelChairAccessible": false,
  "bookingType": "standard",
  "tags": [
    "bean bags"
  ],
  "audioDeviceName": null,
  "videoDeviceName": null,
  "displayDeviceName": "surface hub",
  "placeId": "080ed1a0-7b54-4995-85a5-eeec751786f5"
}
```
