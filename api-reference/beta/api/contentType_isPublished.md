---
author: swapnil1993
ms.author: swapnil1993
ms.date: 08/29/2020
title: "ContentType isPublished"
description: "Check publishing status of a site content type"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sharepoint"
---
# Check publishing status of a site content type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Check publishing status of a site [contentType][]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.FullControl.All    |
|Delegated (personal Microsoft account) | Not Supported   |
|Application | Sites.FullControl.All |

## HTTP request

<!-- { "blockType": "request" } -->

```http
GET /sites/{siteId}/contentTypes/{contentTypeId}/isPublished
```

**Note:** The siteId should belong to a content type hub site.

## Example

## Request
```http
GET /sites/{siteId}/contentTypes/{contentTypeId}/isPublished
```
## Response
<!-- { "blockType": "response", "@type": "string"} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": true 
}
```

[contentType]: ../resources/contentType.md