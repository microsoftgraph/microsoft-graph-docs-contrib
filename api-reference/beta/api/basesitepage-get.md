---
author: rahmit
description: "Returns the metadata for a sitePage in the site pages list in a site."
ms.date: 03/15/2018
title: Get baseSitePage
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Get baseSitePage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns the metadata for a [baseSitePage][] in the site pages [list][] in a [site][].

[baseSitePage]: ../resources/baseSitePage.md
[list]: ../resources/list.md
[site]: ../resources/site.md

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.Read.All, Sites.ReadWrite.All         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.Read.All, Sites.ReadWrite.All         |

## HTTP request

```http
GET /sites/{site-id}/pages/{page-id}
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderBy`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. 

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Example

### Request

<!--
{
	"blockType": "request",
	"name": "get-page",
	"scopes": "sites.read.all",
	"tags": "service.sharepoint"
}
-->

```msgraph-interactive
GET /sites/{site-id}/pages/{page-id}
```

### Response

<!--
{
    "blockType": "response",
    "@odata.type": "microsoft.graph.baseSitePage",
    "truncated": true,
    "isCollection":true
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.type": "#microsoft.graph.sitePage",
    "@odata.etag": "\"{F45354CB-D634-45DF-8B88-2B4E96A1DC45},8\"",
    "description": "Reiciendis placeat dolores.Mollitia veniam tempora tempora quidem voluptatum.Quos animi maiores facilis.Dolores officiis consequatur provident beatae deleniti accusamus magni quam tenetur.",
    "eTag": "\"{F45354CB-D634-45DF-8B88-2B4E96A1DC45},8\"",
    "id": "f45354cb-d634-45df-8b88-2b4e96a1dc45",
    "lastModifiedDateTime": "2023-04-16T10:01:41Z",
    "name": "Electronic Convertible.aspx",
    "webUrl": "SitePages/Electronic Convertible.aspx",
    "title": "Electronic Convertible",
    "pageLayout": "article",
    "thumbnailWebUrl": "https://media.akamai.odsp.cdn.office.net/_layouts/15/images/sitepagethumbnail.png",
    "promotionKind": "page",
    "showComments": false,
    "showRecommendedPages": true,
    "contentType": {
        "id": "0x0101009D1CB255DA76424F860D91F20E6C4118009E6554A5E299E84FB2E07731DD6C6D4A",
        "name": "Site Page"
    },
    "createdBy": {
        "user": {
            "displayName": "admin_contoso",
            "email": "admin@contoso.onmicrosoft.com"
        }
    },
    "lastModifiedBy": {
        "user": {
            "displayName": "admin_contoso",
            "email": "admin@contoso.onmicrosoft.com"
        }
    },
    "parentReference": {
        "siteId": "45bb2a3b-0a4e-46f4-8c68-749c3fea75d3"
    },
    "publishingState": {
        "level": "draft",
        "versionId": "0.4"
    },
    "reactions": {}
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Get a page in a site",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Pages/Get",
  "suppressions": [
  ]
}
-->
