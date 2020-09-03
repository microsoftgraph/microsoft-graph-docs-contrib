---
author: swapnil1993
ms.author: swapnil1993
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

<!-- { "blockType": "ignored" } -->

```http
GET /sites/{siteId}/contentTypes/{contentTypeId}/isPublished
```

**Note:** The siteId should belong to a content type hub site.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Function parameters
Do not supply a request body for this method.

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "contenttype_ispublished"
}
-->
```http
GET /sites/{siteId}/contentTypes/{contentTypeId}/isPublished
```
### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Boolean"
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": true 
}
```

[contentType]: ../resources/contentType.md