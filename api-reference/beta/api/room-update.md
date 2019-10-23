---
title: "Update room"
description: "Update the properties of room object."
localization_priority: Normal
author: "vrod9429"
ms.prod: "Outlook"
doc_type: "apiPageType"
---

# Update room

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of [place](../resources/place.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Place.ReadWrite.All. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Place.ReadWrite.All. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /places/{id}
```

## Request headers

| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property               | Type                                              | Description |
|:-----------------------|:--------------------------------------------------|:--|
| address                | [physicalAddress](physicaladdress.md)             | The street address of the room. |
| audioDeviceName        | String                                            | Specifies the name of the audio device in the room. |
| bookingType            | [bookingType](#bookingtype-values)                | Type of room. Possible values are `standard`, `managed`, and `reserved`. |
| building               | String                                            | Specifies the building name or building number that the room is in. |
| capacity               | String                                            | Specifies the capacity of the room. |
| displayName            | String                                            | The name associated with the room. |
| displayDeviceName      | String                                            | Specifies the name of the display device in the room. |
| emailAddress           | String                                            | Email address of the room. |
| floorNumber            | Int32                                             | Specifies the floor number that the room is on. |
| geoCoordinates         | [outlookGeoCoordinates](outlookgeocoordinates.md) | Specifies the room location in latitude, longitude and optionally, altitude coordinates. |
| id                     | String                                            | Unique identifier for the room. Read-only. |
| isWheelchairAccessible | Boolean                                           | Specifies whether the room is wheelchair accessible. |
| label                  | String                                            | Specifies a descriptive label for the room, for example, a number or name. |
| nickname               | String                                            | Specifies a nickname for the room, for example, "conf room". |
| phone                  | String                                            | The phone number of the room. |
| tags                   | String collection                                 | Specifies additional features of the room, for example, details like the type of view or furniture type. |
| videoDeviceName        | String                                            | Specifies the name of the video device in the room. |

### bookingType values

| Value    | Description                                               |
|:---------|:----------------------------------------------------------|
| standard | The room can be reserved based on the other settings in this cmdlet. This is the default value. |
| managed  | The room is managed by a delegate                         |
| reserved | The room is available only on a first come, first served basis. It cannot be reserved.|

## Response

If successful, this method returns a `200 OK` response code and an updated [place](../resources/place.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_room"
}-->
```http
PATCH https://graph.microsoft.com/beta/places/{id}
Content-type: application/json
Content-length: 285

{
  "nickname": "Conf room",
  "building": "1",
  "label": "12",
  "bookingType": {
  },
  "capacity": "2",
  "isWheelchairAccessible": true
}
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.room"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "nickname": "nickname-value",
  "building": "building-value",
  "label": "label-value",
  "bookingType": {
  },
  "capacity": "capacity-value",
  "isWheelchairAccessible": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update room",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
