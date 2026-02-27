---
title: "Get place"
description: "Read the properties of a place object specified by its ID."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Get place

Namespace: microsoft.graph

Read the properties of a [place](../resources/place.md) object specified by its ID.

The **place** object can be one of the following types:

* A [building](../resources/building.md), which includes rich properties such as resource links and has a wireless network.
* A [floor](../resources/floor.md), which includes rich properties such as sort order.
* A [section](../resources/section.md).
* A [desk](../resources/desk.md), which includes rich properties such as mailbox details and mode.
* A [room](../resources/room.md), which includes rich properties such as an email address for the room, and accessibility, capacity, and device support. 
* A [workspace](../resources/workspace.md), which includes properties such as an email address for the workspace, and accessibility and capacity. 
* A [roomList](../resources/roomlist.md), which includes an email address for the room list, and a navigation property to get the collection of **room** instances in that room list.

The listed resources are derived from the **place** object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "place_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/place-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{id}
```

## Optional query parameters

This method supports the `$select` query parameter to help get specific properties. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [place](../resources/place.md) object in the response body.

## Examples

### Example 1: Get a building
The following example shows a request to get a [building](../resources/building.md). 
#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_building"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/places/ca147fcf-ae27-43bb-9d91-f11e626e58bf
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
  "@odata.type": "#microsoft.graph.building",
  "id": "ca147fcf-ae27-43bb-9d91-f11e626e58bf",
  "placeId": "ca147fcf-ae27-43bb-9d91-f11e626e58bf",
  "displayName": "B06",
  "phone": "+1 (425) 615 8888 Ext 06",
  "isWheelChairAccessible": true,
  "label": "This is a building for demo",
  "hasWiFi": true,
  "geoCoordinates": {
    "latitude": 47.644125,
    "longitude": -122.122411,
    "accuracy": null,
    "altitude": null,
    "altitudeAccuracy": null
  },
  "resourceLinks": [
    {
      "name": "Microsoft Web",
      "linkType": "url",
      "value": "www.microsoft.com"
    }
  ]
}
```

### Example 2: Get a floor
The following example shows a request to get a [floor](../resources/floor.md).
#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_floor"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/places/49558ad4-6ede-46d7-8254-3ca9f90fc4e2
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
  "@odata.type": "#microsoft.graph.floor",
  "id": "49558ad4-6ede-46d7-8254-3ca9f90fc4e2",
  "placeId": "49558ad4-6ede-46d7-8254-3ca9f90fc4e2",
  "displayName": "3",
  "parentId": "ca147fcf-ae27-43bb-9d91-f11e626e58bf",
  "sortOrder": 3
}
```

### Example 3: Get a section
The following example shows a request to get a [section](../resources/section.md).
#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "place_get_section"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/places/ca163ae1-14a3-4e2a-8a97-5f82d672186f
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
  "@odata.type": "#microsoft.graph.section",
  "id": "ca163ae1-14a3-4e2a-8a97-5f82d672186f",
  "placeId": "ca163ae1-14a3-4e2a-8a97-5f82d672186f",
  "displayName": "Mode Section 1",
  "parentId": "49558ad4-6ede-46d7-8254-3ca9f90fc4e2"
}
```

### Example 4: Get a desk
The following example shows a request to get a [desk](../resources/desk.md).
#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_desk"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/places/df7dd4ef-04c4-41dd-816e-35475f4dd546
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
  "@odata.type": "#microsoft.graph.desk",
  "id": "df7dd4ef-04c4-41dd-816e-35475f4dd546",
  "placeId": "df7dd4ef-04c4-41dd-816e-35475f4dd546",
  "displayName": "Desk6",
  "parentId": "ca163ae1-14a3-4e2a-8a97-5f82d672186f",
  "mode": { "@odata.type": "#microsoft.graph.dropInPlaceMode" }
}
```

### Example 5: Get a room
The following example shows a request to get a [room](../resources/room.md).
#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_room"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/places/0be387a4-d53b-410f-9daf-f4fa07e5b05a
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
  "@odata.type": "#microsoft.graph.room",
  "id": "0be387a4-d53b-410f-9daf-f4fa07e5b05a",
  "placeId": "4923e5a8-453e-4edf-b272-9c33757d4fb3",
  "displayName": "TestRoom-123",
  "parentId": "88d25c73-e9c2-4284-86d7-2cf5685b67b9",
  "isWheelChairAccessible": true,
  "emailAddress": "TestRoom-123@contoso.com",
  "nickname": "TestRoomZihan-123",
  "bookingType": "standard",
  "isTeamsEnabled": true
}
```

### Example 6: Get a workspace
The following example shows a request to get a [workspace](../resources/workspace.md).
#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_workspace"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/places/ec10ce32-2065-40ba-aa2f-ecd5ea175420
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
  "@odata.type": "#microsoft.graph.workspace",
  "id": "ec10ce32-2065-40ba-aa2f-ecd5ea175420",
  "placeId": "8abb4849-b6a0-4c45-baab-92a6b63227a5",
  "displayName": "deskpool 003",
  "parentId": "46e0d2ec-d026-4e1d-861d-80ede4470f67",
  "emailAddress": "deskpool0039052bd811752731134695@contoso.com",
  "nickname": "deskpool 003",
  "capacity": 10
}
```

### Example 7: Get a room list
The following example shows a request to get a [roomList](../resources/roomlist.md).
#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_roomlist"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/places/bldg1@contoso.com
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
  "@odata.type": "#microsoft.graph.roomList",
  "id": "dc404124-302a-92aa-f98d-7b4deb0c1705",
  "displayName": "Building 1",
  "address": {
    "street": "4567 Main Street",
    "city": "Buffalo",
    "state": "NY",
    "postalCode": "98052",
    "countryOrRegion": "USA"
  },
  "emailAddress": "bldg1@contoso.com",
  "placeId": "406bd1b2-237c-4710-bda2-8b7900d61b27"
}
```

