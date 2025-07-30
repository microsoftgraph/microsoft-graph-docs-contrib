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

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-post-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
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

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.building"
} -->

``` http
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

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.floor"
} -->
``` http
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

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.section"
} -->
``` http
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

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.desk"
} -->
``` http
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
    "@odata.type": "#microsoft.graph.offlinePlaceMode",
    "reason": "New"
  }
}
```

### Example 5: Create a room

The following example shows how to create a new **room** object.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_room"
}-->
```http
POST https://graph.microsoft.com/beta/places
Content-type: application/json


```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.room"
} -->
``` http
HTTP/1.1 201 Created
Content-Type: application/json


```

### Example 6: Create a workspace

The following example shows how to create a new **workspace** object.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_workspace"
}-->
```http
POST https://graph.microsoft.com/beta/places
Content-Type: application/json


```

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


```

