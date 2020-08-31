---
author: swapnil1993
ms.author: swapnil1993
ms.date: 08/08/2020
title: "ContentType create"
description: "Create a Content type in a site"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sharepoint"
---

# Create a Content type in a site

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [contentType][] in a [site][].

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All    |
|Delegated (personal Microsoft account) |Not Supported    |
|Application | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All |


## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /sites/{site-id}/contentTypes

```
## Request body

In the request body, supply a JSON representation of the [contentType][] resource to create.


## Example

Here is an example of how to create a new generic contentType.

## Request

<!-- { "blockType": "request", "name": "create-contentType", "scopes": "sites.readwrite.all" } -->

```http
POST /sites/{site-id}/contentTypes
Content-Type: application/json

{
    "name": "docSet",
    "description": "custom docset",
    "parentReference": {
        name: "Document Set",
        id: "0x0120D520"
    },
    "group": "Document Set Content Types" 
}
```

## Response
If successful, this method returns a [contentType][] in the response body for the created contentType.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.contentType", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "0x01002A2479FF33DD4BC3B1533A012B653717",
  "name": "docSet",
  "group":"Document Set Content Types",
  "description" : "custom docset",
  "base": {
        "name": "Document Set",
        "id": "0x0120D520"
   }
}
```


[contentType]: ../resources/contentType.md
[site]: ../resources/site.md

<!--
{
  "type": "#page.annotation",
  "description": "Create a Content type in a site",
  "keywords": "content type",
  "section": "documentation",
  "tocPath": "sites/Create ContentType",
  "suppressions": [
  ]
}
-->
