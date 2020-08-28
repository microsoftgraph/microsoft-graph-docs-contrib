
---
author: swshriva
ms.author: swshriva
ms.date: 08/29/2020
title: Check publishing status of a site content type
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
GET/sites/{siteId}/contentTypes/{contentTypeId}/isPublished
```

**Note:** The siteId should belong to a content type hub site.

## Example

```http
GET /sites/{siteId}/contentTypes/{contentTypeId}/oneDrive.isPublished
Content-Type: application/json
```
## Response
<!-- { "blockType": "response", "@type": "microsoft.graph.contentType", "isCollection": true, "truncated": true } -->

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": true 
}
```

[contentType]: ../resources/contentType.md