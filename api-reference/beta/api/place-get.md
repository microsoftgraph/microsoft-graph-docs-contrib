---
title: "Get place"
description: "Retrieve the properties and relationships of a place object."
ms.localizationpriority: medium
author: "vrod9429"
ms.prod: "outlook"
doc_type: "apiPageType"
---

# Get place

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Get the properties and relationships of a [place](../resources/place.md) object specified by either its ID or email address. 

The **place** object can be one of the following types:

* A [room](../resources/room.md), which includes rich properties such as an email address for the room, and accessibility, capacity, and device support. 
* A [workspace](../resources/workspace.md), which includes properties such as an email address for the workspace, and accessibility and capacity. 
* A [room list](../resources/roomlist.md), which includes an email address for the room list, and a navigation property to get the collection of **room** instances in that room list.

The **room**, **workspace**, and **roomList** resources are derived from the **place** object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "place_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/place-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /places/{id}
```

## Optional query parameters
Use `$select` to get specific **place** properties.

For more information about OData query options, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [place](../resources/place.md) object in the response body.

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
### Example 3: Get a room list
#### Request

The following example specifies the **emailAddress** of a **roomList** to get its properties.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["bldg1@contoso.com"],
  "name": "get_roomlist"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/places/bldg1@contoso.com
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-roomlist-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get_roomlist",
  "truncated": true,
  "@odata.type": "microsoft.graph.roomList"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#places/$entity",
  "@odata.type": "#microsoft.graph.roomList",
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


