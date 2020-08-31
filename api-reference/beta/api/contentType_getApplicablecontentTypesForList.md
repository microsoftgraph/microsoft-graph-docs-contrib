---
author: swapnil1993
ms.author: swapnil1993
ms.date: 08/19/2020
title: "ContentType GetApplicableContentTypesForList"
description: "Get site content types that can be added to a list"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sharepoint"
---
# Get site content types that can be added to a list
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Returns [site][] [contentTypes][contentType] that can be added to a list

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All    |
|Delegated (personal Microsoft account) | Not Supported    |
|Application | Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/{siteId}/getApplicableContentTypesForList(listId='listId')
```

## Function Parameters

|Parameter|Type|Required|Description|
|-|-|-|-|
|listId| string | Yes| GUID of the list for which the applicable content types need to be fetched |

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

To list only custom content types use $filter=isBuiltin eq false

## Example

## Request
<!-- { "blockType": "request", "scopes": "sites.read.all" } -->

```http
GET /sites/{siteId}/getApplicableContentTypesForList(listId='listId')
```

## Response

<!-- { "blockType": "response", "@type": "microsoft.graph.contentType", "isCollection": true, "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
    {
        "id":"0x",
        "description":"",
        "group":"_Hidden",
        "hidden":false,
        "name":"System",
        "base": {
            "name": "System",
            "id": "0x"
        }
    },
    {
        "id":"0x00A7470EADF4194E2E9ED1031B61DA0884",
        "name": "docSet",
        "description": "custom docset",
        "hidden":false,
        "base": {
            "name": "Document Set",
            "id": "0x0120D520"
        },
        "group": "Custom Content Types"
    }
  ]
}
```

[contentType]: ../resources/contentType.md
[site]: ../resources/site.md