---
title: "Get place"
description: "Read the properties and relationships of a place object."
author: "vrod9429"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Get place

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of a [place](../resources/place.md) object. Also used to read the properties of child object types, which can be a [building](../resources/building.md), [floor](../resources/floor.md), [section](../resources/section.md), [room](../resources/room.md), [workspace](../resources/workspace.md), or [desk](../resources/desk.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{placesId}
```

## Optional query parameters

- Use `$select` to get specific **place** properties.

- This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [place](../resources/place.md) object in the response body.

## Examples

### Example 1: Get a room
#### Request

The following example specifies the **id** of a **room** to get its properties.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["3162F1E1-C4C0-604B-51D8-91DA78989EB1"],
  "name": "get_room"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/places/3162F1E1-C4C0-604B-51D8-91DA78989EB1
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-room-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get_room",
  "truncated": true,
  "@odata.type": "microsoft.graph.room"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

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
    "placeId": "62cfc8cb-fc2b-4783-aeea-f9ce0f8e2904"
}
```
### Example 2: Get a workspace
#### Request

The following example specifies the **id** of a **workspace** to get its properties.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["3162F1E1-C4C0-604B-51D8-91DA78989EB1"],
  "name": "get_workspace"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/places/3162F1E1-C4C0-604B-51D8-91DA78989EB1
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-workspace-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get_workspace",
  "truncated": true,
  "@odata.type": "microsoft.graph.workspace"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#places/$entity",
    "@odata.type": "#microsoft.graph.workspace",
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
}
```

### Example 3

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_place"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/{placesId}
```

#### Response

If successful, this method returns a 200 OK response code and a **place** object or the list of places in the response.

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
  "value": {
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
}
```

