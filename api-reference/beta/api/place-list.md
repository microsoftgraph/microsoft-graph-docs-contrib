---
title: "List place objects"
description: "Get a collection of the specified type of place objects defined in a tenant."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# List place objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of the specified type of [place](../resources/place.md) objects defined in a tenant.

You can do the following for a given tenant:
- [List all buildings](#example-1-list-all-buildings-defined-in-the-tenant).
- [List all floors](#example-2-list-all-floors-defined-in-the-tenant).
- [List all sections](#example-3-list-all-sections-defined-in-the-tenant).
- [List all desks](#example-4-list-all-desks-defined-in-the-tenant).
- [List all rooms](#example-5-list-all-rooms-defined-in-the-tenant).
- [List all workspaces](#example-6-list-all-workspaces-defined-in-the-tenant).
- [List all room lists](#example-7-list-all-room-lists-defined-in-the-tenant).
- [List rooms in a specific room list](#example-8-list-rooms-contained-in-a-room-list).
- [List workspaces in a specific room list](#example-9-list-workspaces-contained-in-a-room-list).

By default, this operation returns up to 100 rooms, workspaces, and room lists per page, and 1,000 buildings, floors, sections, and desks per page.

Compared with the [findRooms](../api/user-findrooms.md) and [findRoomLists](../api/user-findroomlists.md) functions, this operation returns a richer payload for rooms and room lists. For details about how they compare, see [Using the places API](../resources/places-api-overview.md#using-the-places-api).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "place_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/place-list-permissions.md)]

## HTTP request

To get all the places of a specific type in a tenant:

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /places/{placeType}
```

> **Note:**
> `{placeType}` can be any supported place type such as `microsoft.graph.desk`.

To get all rooms in the specified room list:

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /places/{room-list-emailaddress}/microsoft.graph.roomlist/rooms
```

To get all workspaces in the specified room list:

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /places/{room-list-emailaddress}/microsoft.graph.roomlist/workspaces
```

>**Note:**
> To get rooms or workspaces in a room list, you must specify the room list by its **emailAddress** property, not by its **id**. 

## Optional query parameters

This method supports the following query parameters to help customize the response:
- `$select`
- `$top`
- `$skip`

Use `$top` to customize the page size. The default page size is 100 for rooms, workspaces, and room lists, and 1,000 for others.

The following query parameters are only supported for [room](../resources/room.md), [workspace](../resources/workspace.md), and [roomList](../resources/roomlist.md):
- `$filter`
- `$count=true`

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [place](../resources/place.md) objects in the response body.

## Examples

### Example 1: List all buildings defined in the tenant

The following example shows how to get all the [building](../resources/building.md) objects in the tenant.

>**Note**: The **resourceLinks** property of the [building](../resources/building.md) resource might cause performance issues when you list buildings. You can mitigate this issue by excluding the property using the `$select` query parameter.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_all_buildings"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/places/microsoft.graph.building
```

#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "get_all_buildings",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.building)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "e18a8e21-0494-4296-a5bc-f848dba2740d",
      "placeId": "e18a8e21-0494-4296-a5bc-f848dba2740d",
      "displayName": "MRS",
      "phone": "8801733457",
      "isWheelChairAccessible": true,
      "label": "this is a building not open to all",
      "hasWiFi": false,
      "geoCoordinates": {
        "latitude": 31.2513263,
        "longitude": 121.3912291,
        "accuracy": null,
        "altitude": null,
        "altitudeAccuracy": null
      },
      "resourceLinks": []
    }
  ]
}
```

### Example 2: List all floors defined in the tenant

The following example shows how to get all the [floor](../resources/floor.md) objects in the tenant.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_all_floors"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/places/microsoft.graph.floor
```

#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "get_all_floors",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.floor)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "c64205d0-1a2d-4cfe-9012-3f5d668d28ea",
      "placeId": "c64205d0-1a2d-4cfe-9012-3f5d668d28ea",
      "displayName": "Floor A",
      "parentId": "be7b53f1-7c63-4533-91d4-52c3ca856afb",
      "isWheelChairAccessible": false,
      "sortOrder": 1
    }
  ]
}
```

### Example 3: List all sections defined in the tenant

The following example shows how to get all the [section](../resources/section.md) objects in the tenant.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_all_sections"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/places/microsoft.graph.section
```

#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "get_all_sections",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.section)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "3e7160bb-75da-4456-ab3c-5ee061f4611a",
      "placeId": "3e7160bb-75da-4456-ab3c-5ee061f4611a",
      "displayName": "section_1",
      "parentId": "e30d4c71-95bf-4576-be4f-b6b7a8d2eeb7"
    }
  ]
}
```

### Example 4: List all desks defined in the tenant

The following example shows how to get all the [desk](../resources/desk.md) objects in the tenant.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_all_desks"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/places/microsoft.graph.desk
```

#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "get_all_desks",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.desk)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "530f7900-8063-4daf-9cc1-168cb3ac26e9",
      "placeId": "530f7900-8063-4daf-9cc1-168cb3ac26e9",
      "displayName": "desk 5",
      "parentId": "ca163ae1-14a3-4e2a-8a97-5f82d672186f",
      "isWheelChairAccessible": true,
      "mode": {
        "@odata.type": "#microsoft.graph.offlinePlaceMode",
        "reason": "New"
      }
    }
  ]
}
```

### Example 5: List all rooms defined in the tenant

The following example shows how to get all the [room](../resources/room.md) objects in the tenant.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_all_rooms"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/places/microsoft.graph.room
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

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-all-rooms-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-all-rooms-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "get_all_rooms",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.room)"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#places/microsoft.graph.room",
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
      "isWheelChairAccessible": false,
      "bookingType": "standard",
      "tags": [
        "bean bags"
      ],
      "audioDeviceName": null,
      "videoDeviceName": null,
      "displayDeviceName": "surface hub",
      "placeId": "080ed1a0-7b54-4995-85a5-eeec751786f5"
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
      "isWheelChairAccessible": false,
      "bookingType": "standard",
      "tags": [
        "benches",
        "nice view"
      ],
      "audioDeviceName": null,
      "videoDeviceName": null,
      "displayDeviceName": "surface hub",
      "placeId": "282c6d10-f8d4-441e-9f7f-edd2e554f61d"
    }
  ]
}
```

### Example 6: List all workspaces defined in the tenant

The following example shows how to get all the [workspace](../resources/workspace.md) objects in the tenant.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_all_workspaces"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/places/microsoft.graph.workspace
```

#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get_all_workspaces",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.workspace)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#places/microsoft.graph.workspace",
  "value": [
    {
      "id": "3162F1E1-C4C0-604B-51D8-91DA78989EB1",
      "emailAddress": "ws100@contoso.com",
      "displayName": "Workspace 100",
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
      "nickname": "Workspace",
      "label": "100",
      "capacity": 50,
      "building": "1",
      "floorNumber": 1,
      "isWheelChairAccessible": false,
      "tags": [
        "bean bags"
      ],
      "placeId": "357e8ddc-8af5-4c7c-bc38-ddb3bcfec0d9"
    },
    {
      "id": "3162F1E1-C4C0-604B-51D8-91DA78970B97",
      "emailAddress": "ws200@contoso.com",
      "displayName": "Workspace 200",
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
      "nickname": "Workspace",
      "label": "200",
      "capacity": 40,
      "building": "2",
      "floorNumber": 2,
      "isWheelChairAccessible": false,
      "tags": [
        "benches",
        "nice view"
      ],
      "placeId": "ca4e4ca8-4e92-4a83-afe4-5104c0ca1de3"
    }
  ]
}
```

### Example 7: List all room lists defined in the tenant

The following example shows how to get all the [roomList](../resources/roomlist.md) objects in the tenant.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_all_roomlists"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/places/microsoft.graph.roomlist
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-all-roomlists-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-all-roomlists-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-all-roomlists-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-all-roomlists-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-all-roomlists-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-all-roomlists-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-all-roomlists-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "get_all_roomlists",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.roomList)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#places/microsoft.graph.roomList",
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
      "geoCoordinates": null,
      "phone": null,
      "emailAddress": "bldg1@contoso.com",
      "placeId": "406bd1b2-237c-4710-bda2-8b7900d61b27"
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
      "geoCoordinates": null,
      "phone": null,
      "emailAddress": "bldg2@contoso.com",
      "placeId": "25709e2a-4c17-49ab-b591-1daf8d9b786d"
    }
  ]
}
```

### Example 8: List rooms contained in a room list

The following example shows how to get a list of [room](../resources/room.md) objects contained in a **roomList**. 

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_rooms_in_roomlist",
  "sampleKeys": ["bldg2@contoso.com"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/places/bldg2@contoso.com/microsoft.graph.roomlist/rooms
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-rooms-in-roomlist-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-rooms-in-roomlist-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-rooms-in-roomlist-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-rooms-in-roomlist-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-rooms-in-roomlist-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-rooms-in-roomlist-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-rooms-in-roomlist-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get_rooms_in_roomlist",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.room)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#places('bldg2%40contoso.com')/microsoft.graph.roomList/rooms",
  "value": [
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
      "isWheelChairAccessible": false,
      "bookingType": "standard",
      "tags": [
        "benches",
        "nice view"
      ],
      "audioDeviceName": null,
      "videoDeviceName": null,
      "displayDeviceName": "surface hub",
      "placeId": "62cfc8cb-fc2b-4783-aeea-f9ce0f8e2904"
    }
  ]
}
```

### Example 9: List workspaces contained in a room list

The following example shows how to get a list of [workspace](../resources/workspace.md) objects contained in a **roomList**. 

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_workspaces_in_roomlist",
  "sampleKeys": ["bldg2@contoso.com"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/places/bldg2@contoso.com/microsoft.graph.roomlist/workspaces
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-workspaces-in-roomlist-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-workspaces-in-roomlist-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-workspaces-in-roomlist-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-workspaces-in-roomlist-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-workspaces-in-roomlist-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-workspaces-in-roomlist-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-workspaces-in-roomlist-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note**: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "get_workspaces_in_roomlist",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.workspace)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#places('bldg2%40contoso.com')/microsoft.graph.roomList/workspaces",
  "value": [
    {
      "id": "3162F1E1-C4C0-604B-51D8-91DA78970B97",
      "emailAddress": "ws200@contoso.com",
      "displayName": "Workspace 200",
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
      "nickname": "Workspace",
      "label": "200",
      "capacity": 40,
      "building": "2",
      "floorNumber": 2,
      "isWheelChairAccessible": false,
      "tags": [
        "benches",
        "nice view"
      ],
      "placeId": "ca4e4ca8-4e92-4a83-afe4-5104c0ca1de3"
    }
  ]
}
```

