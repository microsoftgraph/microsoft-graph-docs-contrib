---
title: "Delete buildingMap"
description: "Delete the map of a specific building."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Delete buildingMap

Namespace: microsoft.graph

Delete the [map](../resources/buildingmap.md) of a specific building.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "buildingmap_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/buildingmap-delete-permissions.md)]

> [!NOTE]
> The Exchange Admin role is required to delete a **buildingMap**.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /places/{buildingPlaceId}/microsoft.graph.building/map
```
> **Note:** `{buildingPlaceId}` is the unique **placeId** of the [building](../resources/building.md) linked to this map in Places.

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
  "name": "delete_buildingmap"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/places/30ca79af-ecb7-46c2-a14b-afe264a91543/microsoft.graph.building/map
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

