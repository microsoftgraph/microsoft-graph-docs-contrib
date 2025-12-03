---
title: "Delete place"
description: "Delete a place object."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Delete place

Namespace: microsoft.graph

Delete a [place](../resources/place.md) object.

You can also use this method to delete the following child object types: [building](../resources/building.md), [floor](../resources/floor.md), [section](../resources/section.md), or [desk](../resources/desk.md).

> **Note:**
> [room](../resources/room.md), [roomList](../resources/roomlist.md), and [workspace](../resources/workspace.md) can't be deleted.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-delete-permissions.md)]

>**Note**: Exchange Admin role is requied to delete places.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /places/{id}
```

> **Note:**
> You can use **id** (the unique identifier of the place).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_place"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/places/5e19bbf6-067c-4a92-9685-1f01545f02e4
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

