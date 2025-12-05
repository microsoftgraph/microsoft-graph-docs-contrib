---
title: "Create place"
description: "Create a new place object."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Create place

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [place](../resources/place.md) object.

You can also use this method to create the following child object types: [building](../resources/building.md), [floor](../resources/floor.md), [section](../resources/section.md), [room](../resources/room.md), [workspace](../resources/workspace.md), or [desk](../resources/desk.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "place_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/place-post-permissions.md)]

>**Note**: Exchange Admin role is requied to create places.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /places
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
|Content-Type |application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [place](../resources/place.md) object.

For a list of all properties that are available when you create a **place** object, see the [place](../resources/place.md) resource.

## Response

If successful, this method returns a `201 Created` response code and a [place](../resources/place.md) object in the response body.

## Examples

### Example 1: Create a building

The following example shows how to create a new **building** object.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_building"
}-->
```http
POST https://graph.microsoft.com/beta/places
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.building",
  "displayName": "B001"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-building-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-building-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-building-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-building-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-building-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-building-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.building"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.building",
  "id": "767a31a7-6987-41c9-b829-ab351b8aab53",
  "placeId": "767a31a7-6987-41c9-b829-ab351b8aab53",
  "displayName": "B001"
}
```

### Example 2: Create a floor

The following example shows how to create a new **floor** object.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_floor"
}-->
```http
POST https://graph.microsoft.com/beta/places
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.floor",
  "displayName": "F1",
  "parentId": "767a31a7-6987-41c9-b829-ab351b8aab53"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-floor-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-floor-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-floor-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-floor-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-floor-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-floor-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.floor"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.floor",
  "id": "46ef7aed-5d94-4fd4-ae03-b333bc7a6955",
  "placeId": "46ef7aed-5d94-4fd4-ae03-b333bc7a6955",
  "displayName": "F1",
  "parentId": "767a31a7-6987-41c9-b829-ab351b8aab53",
  "tags": [],
  "isWheelChairAccessible": false
}
```

### Example 3: Create a section

The following example shows how to create a new **section** object.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_section"
}-->
```http
POST https://graph.microsoft.com/beta/places
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.section",
  "displayName": "S1",
  "parentId": "46ef7aed-5d94-4fd4-ae03-b333bc7a6955"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-section-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-section-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-section-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-section-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-section-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-section-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.section"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.section",
  "id": "1ad0f725-6885-49c5-9a47-3b22a1f9409d",
  "placeId": "1ad0f725-6885-49c5-9a47-3b22a1f9409d",
  "displayName": "S1",
  "parentId": "46ef7aed-5d94-4fd4-ae03-b333bc7a6955",
  "tags": [],
  "isWheelChairAccessible": false
}
```

### Example 4: Create a desk

The following example shows how to create a new **desk** object.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_desk"
}-->
```http
POST https://graph.microsoft.com/beta/places
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.desk",
  "displayName": "D1",
  "parentId": "1ad0f725-6885-49c5-9a47-3b22a1f9409d"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-desk-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-desk-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-desk-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-desk-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-desk-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-desk-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.desk"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.desk",
  "id": "fc25d4dc-817a-45bc-a72d-2616cd7566ac",
  "placeId": "fc25d4dc-817a-45bc-a72d-2616cd7566ac",
  "displayName": "D1",
  "parentId": "1ad0f725-6885-49c5-9a47-3b22a1f9409d",
  "tags": [],
  "isWheelChairAccessible": false,
  "mode": {
    "@odata.type": "#microsoft.graph.unavailablePlaceMode",
    "reason": "New"
  }
}
```

### Example 5: Create a room

The following example shows how to create a new **room** object.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_room"
}-->
```http
POST https://graph.microsoft.com/beta/places
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.room",
  "displayName": "Conf Room 4/3.3G11",
  "parentId": "46ef7aed-5d94-4fd4-ae03-b333bc7a6955",
  "bookingType": "standard"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-room-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-room-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-room-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-room-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-room-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-room-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.room"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.room",
  "id": "0be387a4-d53b-410f-9daf-f4fa07e5b05a",
  "placeId": "4923e5a8-453e-4edf-b272-9c33757d4fb3",
  "displayName": "Conf Room 4/3.3G11",
  "parentId": "46ef7aed-5d94-4fd4-ae03-b333bc7a6955",
  "isWheelChairAccessible": false,
  "emailAddress": "confroom433G115497308f1755150217899@contoso.com",
  "bookingType": "standard"
}
```

### Example 6: Create a workspace

The following example shows how to create a new **workspace** object.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_workspace"
}-->
```http
POST https://graph.microsoft.com/beta/places
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.workspace",
  "parentId": "f7de7265-e420-47b4-9d49-28d728716241",
  "displayName": "testSpace001",
  "tags": ["test"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-workspace-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-workspace-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-workspace-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-workspace-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-workspace-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-workspace-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workspace"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.workspace",
  "id": "49c2fcfb-163a-4e00-a42b-0615d6789e72",
  "placeId": "d90144aa-8cc4-4d49-97f2-9c365e38ed7e",
  "displayName": "testSpace001",
  "parentId": "f7de7265-e420-47b4-9d49-28d728716241",
  "tags": [
    "test"
  ],
  "emailAddress": "testSpace0015d9988631755150528582@contoso.com",
  "nickname": "testSpace001",
  "mode": {
    "@odata.type": "#microsoft.graph.unavailablePlaceMode",
    "reason": "New"
  }
}
```

