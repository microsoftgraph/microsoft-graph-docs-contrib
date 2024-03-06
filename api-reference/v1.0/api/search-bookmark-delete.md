---
title: "Delete bookmark"
description: "Delete a bookmark object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: apiPageType
---

# Delete bookmark

Namespace: microsoft.graph.search

Delete a [bookmark](../resources/search-bookmark.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| SearchConfiguration.Read.All, SearchConfiguration.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| SearchConfiguration.Read.All, SearchConfiguration.ReadWrite.All |

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
