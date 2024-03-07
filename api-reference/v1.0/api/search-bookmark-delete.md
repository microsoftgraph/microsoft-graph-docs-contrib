---
title: "Delete bookmark"
description: "Delete a bookmark object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: apiPageType
---

# Delete bookmark

Namespace: microsoft.graph.search

Delete a [bookmark](../resources/search-bookmark.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "search_bookmark_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/search-bookmark-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /search/bookmarks/{bookmarksId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_bookmark"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/search/bookmarks/733b26d5-af76-4eea-ac69-1a0ce8716897
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
