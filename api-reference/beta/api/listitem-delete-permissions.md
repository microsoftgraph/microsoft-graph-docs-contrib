---
title: "Delete permission on a listItem"
description: "Delete a permission object on a list item."
author: "patrick-rodgers"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 06/17/2024
---

# Delete permission on a listItem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [permission](../resources/permission.md) object on a [list item](../resources/listitem.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "listitem_delete_permission" } -->
[!INCLUDE [permissions-table](../includes/permissions/listitem-delete-permission-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /sites/{site-id}/lists/{list-id}/items/{item-id}/{permissionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_permission_2"
}
-->

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- {
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "ListItems/Permissions/Delete listitem permission"
} -->
