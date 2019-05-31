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

Retrieve a list of [place](../resources/place.md) objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Places.Read.All |
| Delegated (personal Microsoft account) | Places.Read.All |
| Application                            | Places.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /places
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData Query Parameters](/graph/query-parameters)

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [place](../resources/place.md) objects in the response body.

## Examples

### Example 1: List all places

#### Request

The following is an example of the request.
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
        "latitude": "47.640568390488625",
        "longitude": "-122.1293731033802"
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

The following is an example of retrieving a list of [roomList](../resources/roomlist.md) objects.
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

The following is an example of retrieving a list of [room](../resources/room.md) objects contained in a roomList.
<!-- {
  "blockType": "request",
  "name": "get_rooms"
}-->

```http
GET https://graph.microsoft.com/beta/places/microsoft.graph.roomlist('{id-of-roomlist}')/rooms
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
        "latitude": "47.640568390488625",
        "longitude": "-122.1293731033802"
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
  "tocPath": ""
}-->
