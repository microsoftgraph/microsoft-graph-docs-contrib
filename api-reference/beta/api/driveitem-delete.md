---
author: spgraph-docs-team
description: "Delete a DriveItem by using its ID or path."
ms.date: 09/10/2017
title: Delete a file or folder
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.topic: reference
---
# Delete a DriveItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [DriveItem](../resources/driveitem.md) by using its ID or path.
Deleting items using this method moves the items to the recycle bin instead of permanently deleting the item.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-delete-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /drives/{drive-id}/items/{item-id}
DELETE /groups/{group-id}/drive/items/{item-id}
DELETE /me/drive/items/{item-id}
DELETE /sites/{siteId}/drive/items/{itemId}
DELETE /users/{userId}/drive/items/{itemId}
```

## Optional request headers

| Name          | Type   | Description                                                                                                                                                                                       |
|:--------------|:-------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| if-match      | String | If this request header is included and the eTag (or cTag) provided doesn't match the current tag on the item, a `412 Precondition Failed` response is returned and the item isn't deleted. |

## Example

The following example shows how to call this API.

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "delete-drive-item", "scopes": "files.readwrite" } -->

```http
DELETE https://graph.microsoft.com/beta/me/drive/items/{item-id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-drive-item-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-drive-item-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-drive-item-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-drive-item-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-drive-item-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-drive-item-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-drive-item-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-drive-item-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Response

The following example shows the response. 
If successful, this call returns a `204 No Content` response to indicate that resource was deleted and there was nothing to return.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

### Error responses

See [Error responses][error-response] for more info about how errors are returned.

[error-response]: /graph/errors

<!--
{
  "type": "#page.annotation",
  "description": "Delete a DriveItem from a drive",
  "keywords": "delete,existing item,onedrive",
  "section": "documentation",
  "tocPath": "Items/Delete",
  "suppressions": [
  ]
}
-->


