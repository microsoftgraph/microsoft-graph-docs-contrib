---
author: swapnil1993
ms.author: swapnil1993
title: "ContentType Unpublish"
description: "Unpublish a site content type"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sharepoint"
---
# Unpublish a site content type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Unpublish a site [contentType][]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.FullControl.All    |
|Delegated (personal Microsoft account) | Sites.FullControl.All    |
|Application | Sites.FullControl.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/{siteId}/contentTypes/{contentTypeId}/unpublish
```

**Note:** The siteId should belong to a content type hub site.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this call returns a `204 No Content` response.

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "contenttype_unpublish"
}
-->
```http
GET /sites/{siteId}/contentTypes/{contentTypeId}/unpublish
```

### Response

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

[contentType]: ../resources/contentType.md