---
author: swapnil1993
ms.author: swapnil1993
ms.date: 07/30/2020
title: "ContentType Get"
description: "Get a content type in a site or list"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sharepoint"
---
# Get a content type in a site or list

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns the metadata for a [content type][contentType] in a [site][] or [list][].

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All |

## HTTP request

```http
GET /sites/{site-id}/contentTypes/{contentType-id}

GET /sites/{site-id}/lists/{list-id}/contentTypes/{contentType-id}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Example

#### Request

<!-- { "blockType": "request", "name": "get-contentType", "scopes": "sites.read.all" } -->

```http
GET /sites/{site-id}/contentTypes/{contentType-id}
```

#### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.contentType", "truncated": true} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id":"0x0120D520",
  "description":"Create a document set when you want to manage multiple documents as a single work product.",
  "group":"Document Set Content Types",
  "hidden":false,
  "name":"Document Set",
  "base": {
        "name": "Document Set",
        "id": "0x0120D520"
   }
}
```

#### Request

<!-- { "blockType": "request", "name": "get-contentType", "scopes": "sites.read.all" } -->

```http
GET /sites/{site-id}/contentTypes/{contentType-id}?expand=columns(select=name)
```

#### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.contentType", "truncated": true } -->

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "id":"0x0120D520",
  "description":"Create a document set when you want to manage multiple documents as a single work product.",
  "group":"Document Set Content Types",
  "hidden":false,
  "name":"Document Set",
  "base": {
        "name": "Document Set",
        "id": "0x0120D520"
   }
}
```

[contentType]: ../resources/contentType.md
[site]: ../resources/site.md
[list]: ../resources/list.md