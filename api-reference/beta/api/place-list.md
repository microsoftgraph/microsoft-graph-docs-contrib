---
title: "List places"
description: "Retrieve a list of place objects."
localization_priority: Normal
author: "vrod9429"
ms.prod: "outlook"
doc_type: "apiPageType"
---

# List places

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of all the [place](../resources/place.md) objects or the specified type of **place** object defined in the tenant.

A **place** object can be one of the following types:

* A [room](../resources/room.md) which includes rich properties such as an email address for the room, and accessibility, capacity, and device support. 
* A [room list](../resources/roomlist.md) which includes an email address for the room list, and a navigation property to get the collection of room instances in the room list. 

Both **room** and **roomList** are derived from the **place** object.

You can get only rooms, only room lists, or only rooms in a specific room list in the tenant.

Compared with the [findRooms](../api/user-findrooms.md) and [findRoomLists](../api/user-findroomlists.md) functions, this operation returns a richer payload for rooms and room lists. See [details](../resources/place.md#using-the-places-api) for how they compare.

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
GET /places
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [place](../resources/place.md) objects in the response body.

## Examples

### Example 1: List all the places defined in the tenant

#### Request

The following example shows how to get all the [place](../resources/place.md) objects in the tenant, including rooms and room lists.
<!-- {
  "blockType": "request",
  "name": "get_places"
}-->

```http
GET https://graph.microsoft.com/beta/places
```

#### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.place",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "microsoft.graph.room",
      "id": "3162F1E1-C4C0-604B-51D8-91DA78970B97",
      "emailAddress": "cf3235@contoso.com",
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
    },
    {
      "@odata.type": "microsoft.graph.roomlist",
      "id": "DC404124-302A-92AA-F98D-7B4DEB0C1705",
      "displayName": "Building 32",
      "address": {
        "street": "123 Contoso Way",
        "city": "Redmond",
        "state": "WA",
        "postalCode": "98052",
        "countryOrRegion": "USA"
      },
      "geocoordinates": null,
      "phone": null,
      "emailAddress": "bldg32@contoso.com"
    }
  ]
}
```

### Example 2: List places of a specific type

#### Request

The following example shows how to get all the [roomList](../resources/roomlist.md) objects in the tenant.
<!-- {
  "blockType": "request",
  "name": "get_places"
}-->

```http
GET https://graph.microsoft.com/beta/places/microsoft.graph.roomlist
```

#### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.place",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "microsoft.graph.roomlist",
      "id": "DC404124-302A-92AA-F98D-7B4DEB0C1705",
      "displayName": "Building 32",
      "address": {
        "street": "123 Contoso Way",
        "city": "Redmond",
        "state": "WA",
        "postalCode": "98052",
        "countryOrRegion": "USA"
      },
      "geocoordinates": null,
      "phone": null,
      "emailAddress": "bldg32@contoso.com"
    }
  ]
}
```

### Example 3: List rooms contained in a room list

#### Request

The following example shows how to get a list of [room](../resources/room.md) objects contained in a **roomList**.
<!-- {
  "blockType": "request",
  "name": "get_rooms"
}-->

```http
GET https://graph.microsoft.com/beta/places/microsoft.graph.roomlist('id-of-roomlist')/rooms
```

#### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.place",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "microsoft.graph.room",
      "id": "3162F1E1-C4C0-604B-51D8-91DA78970B97",
      "emailAddress": "cf3235@contoso.com",
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
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List places",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: Malformed function params 'id-of-roomlist'"
  ]
}-->
