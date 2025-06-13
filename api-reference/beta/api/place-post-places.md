---
title: "Create place"
description: "Create a new place object."
author: "MSGraphDocsvTeam"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Create place

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [place](../resources/place.md) object.

Also used to create a child object type, which can be a [building](../resources/building.md), [floor](../resources/floor.md), [section](../resources/section.md), [room](../resources/room.md), [workspace](../resources/workspace.md), or [desk](../resources/desk.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-post-places-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-post-places-permissions.md)]

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

Go to [the place resource page](../resources/place.md) for a list of all properties that are available when creating a **place**.

## Response

If successful, this method returns a `201 Created` response code and a [place](../resources/place.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_place_from_places"
}
-->
``` http
POST https://graph.microsoft.com/beta/places
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.desk",
  "displayName": "D1",
  "parentId": "a6b276f3-1215-4614-b4ad-983f7f410416",
  "mode": {
    "@odata.type": "microsoft.graph.assignedPlaceMode",
    "assignedUserId": "79058544-bce5-4224-a754-726b15b8600b"
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.place"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetaheads_test_placescrud/$metadata#places/$entity",
    "@odata.type": "#microsoft.graph.desk",
    "id": "69b2309c-4ded-40b2-9e15-dd9841fcfd71",
    "placeId": "69b2309c-4ded-40b2-9e15-dd9841fcfd71",
    "displayName": "D1",
    "parentId": "a6b276f3-1215-4614-b4ad-983f7f410416",
    "mode": {
      "@odata.type": "microsoft.graph.assignedPlaceMode",
      "assignedUserId": "79058544-bce5-4224-a754-726b15b8600b"
    }
}
```

