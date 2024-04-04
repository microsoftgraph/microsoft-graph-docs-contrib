---
author: mahgoyal
ms.date: 06/28/2023
title: Permanently delete a file or folder
ms.localizationpriority: medium
ms.subservice: "sharepoint"
description: "Permanently delete a driveItem by using its ID."
doc_type: apiPageType
ms.topic: reference
---
# driveItem: permanentDelete

Namespace: microsoft.graph

Permanently delete a [driveItem](../resources/driveitem.md) by using its ID.
If you delete items using this method, they're permanently removed and won't be sent to the recycle bin. Therefore, they can't be restored afterward.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_permanentdelete" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-permanentdelete-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /drives/{drive-id}/items/{item-id}/permanentDelete
```

## Request headers
| Name       | Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept  | application/json |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It doesn't return anything in the response body.

## Example

The following example shows how to call this API.

<!-- { "blockType": "request", "name": "permanentDelete-item", "scopes": "files.readwrite", "target": "action" } -->

### Request

```http
POST https://graph.microsoft.com/beta/drives/{drive-id}/items/{item-id}/permanentDelete
```

### Response

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

### Error responses

For details about how errors are returned, see [Error Responses][error-response].

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Permanently delete a DriveItem from a drive",
  "keywords": "permanently delete,existing item,onedrive",
  "section": "documentation",
  "tocPath": "Items/Permanently delete a driveItem",
  "suppressions": [
  ]
} -->
