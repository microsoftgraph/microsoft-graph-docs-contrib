---
title: "Get place"
description: "Retrieve the properties and relationships of a place object."
localization_priority: Normal
author: "vrod9429"
ms.prod: "outlook"
doc_type: "apiPageType"
---

# Get place

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The place object can be one of the following types:

* A room which includes rich properties such as an email address for the room, and accessibility, capacity, and device support. (Please add link to room.md.)
* A roomList which includes an email address for the room list, and a navigation property to get the collection of room instances in the room list. (Please add links to roomlist.md and room.md.)
Both room and roomList are derived from the [place](../resources/place.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Places.Read.All |
| Delegated (personal Microsoft account) | Not supported |
| Application                            | Places.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /place/{id}
```

## Optional query parameters

This method supports the following query parameters to help customize the response:
* $expand
* $filter
* $select
* $top

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [place](../resources/place.md) object in the response body.

## Examples

### Request

The following example specifies the id of a room to get its properties.
<!-- {
  "blockType": "request",
  "name": "get_places"
}-->

```http
GET https://graph.microsoft.com/beta/places/{id}
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.place"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "microsoft.graph.room",
  "id": "3162F1E1-C4C0-604B-51D8-91DA78970B97",
  "displayName": "Conf Room 32/35 (25)",
  "address": {
    "street": "One Microsoft Way",
    "city": "Redmond",
    "state": "WA",
    "postalCode": "98052",
    "countryOrRegion": "USA"
  },
  "geoCoordinates": {
    "latitude": 47.640568390488625,
    "longitude": -122.1293731033802
  },
  "phone": "000-000-0000",
  "emailAddress": "cf3235@contoso.com",
  "nickname": "Conf Room",
  "label": "35",
  "capacity": "50",
  "building": "32",
  "floorNumber": 3,
  "isManaged": true,
  "isWheelchairAccessible": false,
  "bookingType": "standard",
  "tags": [
    "bean bags",
    "nice view"
  ],
  "audioDeviceName": null,
  "videoDeviceName": null,
  "displayDevice": "surface hub"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get place",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
