---
title: "List places"
description: "Retrieve a list of place objects."
ms.localizationpriority: medium
author: "vrod9429"
ms.prod: "outlook"
doc_type: "apiPageType"
---

# List places

Namespace: microsoft.graph


Get a collection of the specified type of [place](../resources/place.md) objects defined in the tenant. For example, you can get all the rooms, all the room lists, or the rooms in a specific room list in the tenant.

>**Note:** Rooms that are marked "Hidden from GAL" can't be retrieved through this endpoint.

A **place** object can be one of the following types:

* A [room](../resources/room.md) which includes rich properties such as an email address for the room, and accessibility, capacity, and device support.
* A [room list](../resources/roomlist.md) which includes an email address for the room list, and a navigation property to get the collection of room instances in the room list.

Both **room** and **roomList** are derived from the **place** object.

By default, this operation returns 100 places per page.

Compared with the [findRooms](/graph/api/user-findrooms) and [findRoomLists](/graph/api/user-findroomlists) functions, this operation returns a richer payload for rooms and room lists. See [details](../resources/place.md#using-the-places-api) for how they compare.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Place.Read.All |
| Delegated (personal Microsoft account) | Not supported |
| Application                            | Place.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

To get all the rooms in a tenant:

```http
GET /places/microsoft.graph.room
```

To get all the room lists in a tenant:

```http
GET /places/microsoft.graph.roomlist
```

To get all the rooms in the specified room list:

```http
GET /places/{room-list-emailaddress}/microsoft.graph.roomlist/rooms
```

>**Note**: To get rooms in a room list, you must specify the room list by its **emailAddress** property, not by its **id**.

## Optional query parameters
This method supports the following query parameters to help customize the response:
- `$filter`
- `$select`
- `$top`
- `$skip`
- `$count=true`

Use `$top` to customize the page size. The default page size is 100.

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [place](../resources/place.md) objects in the response body.

## Examples

### Example 1: List all the rooms defined in the tenant

#### Request

The following example shows how to get all the [room](../resources/room.md) objects in the tenant.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_all_rooms"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/places/microsoft.graph.room
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-all-rooms-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-all-rooms-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-all-rooms-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-all-rooms-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-all-rooms-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get_all_rooms",
  "truncated": true,
  "@odata.type": "microsoft.graph.room",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#places/microsoft.graph.room",
  "value": [
    {
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
        "latitude": 47.640568390488626,
        "longitude": -122.1293731033803
      },
      "phone": "000-000-0000",
      "nickname": "Conf Room",
      "label": "100",
      "capacity": 50,
      "building": "1",
      "floorNumber": 1,
      "isManaged": true,
      "isWheelChairAccessible": false,
      "bookingType": "standard",
      "tags": [
        "bean bags"
      ],
      "audioDeviceName": null,
      "videoDeviceName": null,
      "displayDevice": "surface hub"
    },
    {
      "id": "3162F1E1-C4C0-604B-51D8-91DA78970B97",
      "emailAddress": "cf200@contoso.com",
      "displayName": "Conf Room 200",
      "address": {
        "street": "4567 Main Street",
        "city": "Buffalo",
        "state": "NY",
        "postalCode": "98052",
        "countryOrRegion": "USA"
      },
      "geoCoordinates": {
        "latitude": 47.640568390488625,
        "longitude": -122.1293731033802
      },
      "phone": "000-000-0000",
      "nickname": "Conf Room",
      "label": "200",
      "capacity": 40,
      "building": "2",
      "floorNumber": 2,
      "isManaged": true,
      "isWheelChairAccessible": false,
      "bookingType": "standard",
      "tags": [
        "benches",
        "nice view"
      ],
      "audioDeviceName": null,
      "videoDeviceName": null,
      "displayDevice": "surface hub"
    }
  ]
}
```

### Example 2: List all the room lists defined in the tenant

#### Request

The following example shows how to get all the [roomList](../resources/roomlist.md) objects in the tenant.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_all_roomlists"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/places/microsoft.graph.roomlist
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-all-roomlists-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-all-roomlists-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-all-roomlists-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get_all_roomlists",
  "truncated": true,
  "@odata.type": "microsoft.graph.roomList",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#places/microsoft.graph.roomList",
  "value": [
    {
      "id": "DC404124-302A-92AA-F98D-7B4DEB0C1705",
      "displayName": "Building 1",
      "address": {
        "street": "4567 Main Street",
        "city": "Buffalo",
        "state": "NY",
        "postalCode": "98052",
        "countryOrRegion": "USA"
      },
      "geocoordinates": null,
      "phone": null,
      "emailAddress": "bldg1@contoso.com"
    },
    {
      "id": "DC404124-302A-92AA-F98D-7B4DEB0C1706",
      "displayName": "Building 2",
      "address": {
        "street": "4567 Main Street",
        "city": "Buffalo",
        "state": "NY",
        "postalCode": "98052",
        "countryOrRegion": "USA"
      },
      "geocoordinates": null,
      "phone": null,
      "emailAddress": "bldg2@contoso.com"
    }
  ]
}
```

### Example 3: List rooms contained in a room list

#### Request

The following example shows how to get a list of [room](../resources/room.md) objects contained in a **roomList**.


<!-- {
  "blockType": "request",
  "name": "get_rooms_in_roomlist",
  "sampleKeys": ["Building2Rooms@M365x214355.onmicrosoft.com"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/places/Building2Rooms@M365x214355.onmicrosoft.com/microsoft.graph.roomlist/rooms
```


#### Response

The following is an example of the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get_rooms_in_roomlist",
  "truncated": true,
  "@odata.type": "microsoft.graph.room",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#places('Building2Rooms%40M365x214355.onmicrosoft.com')/microsoft.graph.roomList/rooms",
    "value": [
        {
            "id": "f4119db7-9a33-4bfe-a387-4444b9e7fd54",
            "displayName": "Conf Room Rainier",
            "address": null,
            "geoCoordinates": null,
            "phone": "",
            "nickname": "Conf Room Rainier",
            "emailAddress": "Rainier@M365x214355.onmicrosoft.com",
            "building": null,
            "floorNumber": null,
            "floorLabel": null,
            "label": null,
            "capacity": null,
            "bookingType": "standard",
            "audioDeviceName": null,
            "videoDeviceName": null,
            "displayDeviceName": null,
            "isWheelChairAccessible": false,
            "tags": []
        },
        {
            "id": "42385a28-1a16-4043-8d84-07615656c4e3",
            "displayName": "Conf Room Hood",
            "address": null,
            "geoCoordinates": null,
            "phone": "",
            "nickname": "Conf Room Hood",
            "emailAddress": "Hood@M365x214355.onmicrosoft.com",
            "building": null,
            "floorNumber": null,
            "floorLabel": null,
            "label": null,
            "capacity": null,
            "bookingType": "standard",
            "audioDeviceName": null,
            "videoDeviceName": null,
            "displayDeviceName": null,
            "isWheelChairAccessible": false,
            "tags": []
        },
        {
            "id": "850ee91e-a154-4d87-928e-da04c788fd90",
            "displayName": "Conf Room Baker",
            "address": null,
            "geoCoordinates": null,
            "phone": "",
            "nickname": "Conf Room Baker",
            "emailAddress": "Baker@M365x214355.onmicrosoft.com",
            "building": null,
            "floorNumber": null,
            "floorLabel": null,
            "label": null,
            "capacity": null,
            "bookingType": "standard",
            "audioDeviceName": null,
            "videoDeviceName": null,
            "displayDeviceName": null,
            "isWheelChairAccessible": false,
            "tags": []
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
  ]
}-->
