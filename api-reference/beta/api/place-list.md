---
title: "List place objects"
description: "Get a list of the specified type of place objects defined in the tenant that can be buildings, floors, sections, rooms, workspaces, or desks."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# List place objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the specified type of [place](../resources/place.md) objects defined in the tenant, which can be [buildings](../resources/building.md), [floors](../resources/floor.md), [sections](../resources/section.md), [rooms](../resources/room.md), [workspaces](../resources/workspace.md), or [desks](../resources/desk.md).

For example, you can get all the [places](../resources/place.md) within a [building](../resources/building.md) or get all the [places](../resources/place.md) on a [floor](../resources/floor.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-list-permissions.md)]

## HTTP request

For a list of places:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places
```

For a list of places of a specific type:

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /places/{placeType}
```

> **Note:**
> `{placeType}` can be any supported place type such as `microsoft.graph.desk`.

## Optional query parameters

This method supports the `$filter`, `$select`, `$top`, `$skip`, and `$count` [OData query parameters](/graph/query-parameters) to help customize the response. Use `$top` to customize the page size. The default page size is 100.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [place](../resources/place.md) objects in the response body.

## Examples

### Example 1: List all the rooms defined in the tenant

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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-all-rooms-cli-snippets.md)]
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
  "@odata.type": "microsoft.graph.room",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

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

### Example 2: List all the workspaces defined in the tenant

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
  "@odata.type": "microsoft.graph.workspace",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

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

### Example 3: List all the places defined in the tenant

The following example shows how to get all the [place](../resources/place.md) objects in the tenant.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_place"
}
-->
``` http
GET https://graph.microsoft.com/beta/places
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.place"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.place",
      "id": "7d752e23-0fb5-7333-be1b-a1ae3d19ac4b",
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
      "label": "String"
    }
  ]
}
```

