---
author: sangle7
description: "Read the properties and relationships of a baseSitePage object."
ms.date: 03/15/2018
title: Get baseSitePage
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Get baseSitePage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the metadata for a [baseSitePage][] in the site pages [list][] in a [site][].

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

<!-- { "blockType": "ignored" } -->

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

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200` and a [baseSitePage](../resources/baseSitePage.md) object in the response body.

## Example

### Request

# [HTTP](#tab/http)

<!--{
	"blockType": "request",
	"name": "get-basesitepage",
	"scopes": "sites.read.all",
	"tags": "service.sharepoint"
}
-->

```msgraph-interactive
GET /sites/{site-id}/pages/{page-id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-basesitepage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-basesitepage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-basesitepage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-basesitepage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-basesitepage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-basesitepage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-basesitepage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note:** The response object shown here might be shortened for readability.

<!--
{
    "blockType": "response",
    "@odata.type": "microsoft.graph.baseSitePage",
    "truncated": true,
    "isCollection":false
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
