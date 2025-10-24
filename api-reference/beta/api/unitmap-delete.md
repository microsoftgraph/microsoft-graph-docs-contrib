---
title: "Delete unitMap"
description: "Delete a unitMap object."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Delete unitMap

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [unitMap](../resources/unitmap.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "unitmap_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/unitmap-delete-permissions.md)]

> [!NOTE]
> The Exchange Admin role is required to delete a **unitMap**.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /places/{buildingPlaceId}/microsoft.graph.building/map/levels/{levelImdfID}/units/{unitImdfID}
```
> **Note:**
> * `{buildingPlaceId}` is the **placeId** of a [building](../resources/building.md) with which this [unit](../resources/unitmap.md) is associated.
> * `{levelImdfId}` is the **id** of the level in the IMDF file.
> * `{unitImdfID}` is the **id** of the unit in the IMDF file.

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
  "name": "delete_unitmap"
}
-->
```http
DELETE https://graph.microsoft.com/beta/places/151e85a7-c0b8-4519-997e-1a0858255704/microsoft.graph.building/map/levels/81e9fd76-b34a-45f6-a6dc-1f172f01e849/units/9e0cdcd1-7b86-4f50-839d-d8e4a5ac9237
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

