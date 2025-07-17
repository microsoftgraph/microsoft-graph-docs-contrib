---
author: "rahmit"
description: "Get the collection of baseSitePage objects from the site pages list in a site."
title: "List baseSitePages"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 04/12/2024
---

# List baseSitePages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the collection of [baseSitePage][] objects from the site pages [list][] in a [site][]. All pages in the site are returned (with pagination). Sort alphabetically by **name** in ascending order.

> **Note:** The [baseSitePage][] specified is a parent type and does not have any instance. As a result, the returned data only consists of available subtypes that are provided as a list.

**The following table lists the available subtypes.**

| Entity name  | Description                |
| :----------- | :------------------------- |
| [sitePage][] | Represents a regular page. |

[baseSitePage]: ../resources/baseSitePage.md
[sitePage]: ../resources/sitePage.md
[list]: ../resources/list.md
[site]: ../resources/site.md

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "basesitepage_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/basesitepage-list-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```msgraph-interactive
GET /sites/{site-id}/pages
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [baseSitePage](../resources/basesitepage.md) objects in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)

<!--
{
  "blockType": "request",
  "name": "get-basesitepages",
  "scopes": "sites.read.all",
  "tags": "service.sharepoint"
}
-->

```msgraph-interactive
GET /sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pages
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-basesitepages-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-basesitepages-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-basesitepages-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-basesitepages-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-basesitepages-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-basesitepages-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-basesitepages-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-basesitepages-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!--
{
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.baseSitePage)",
  "truncated": true
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.sitePage",
      "@odata.etag": "\"{5FA48F95-2FDF-40E8-A28C-6D0D8345BCD2},8\"",
      "description": "Placeat porro perspiciatis maxime esse nobis illo.Voluptate vitae maxime totam consectetur fugit sit quos.Saepe ea veniam voluptate tempore quod deleniti necessitatibus repellat.",
      "eTag": "\"{5FA48F95-2FDF-40E8-A28C-6D0D8345BCD2},8\"",
      "id": "5fa48f95-2fdf-40e8-a28c-6d0d8345bcd2",
      "lastModifiedDateTime": "2023-04-16T08:37:51Z",
      "name": "Account holistic.aspx",
      "webUrl": "https://contoso.sharepoint.com/SitePages/Account holistic.aspx",
      "title": "CSS Global Lithuanian meter",
      "pageLayout": "article",
      "thumbnailWebUrl": "https://media.akamai.odsp.cdn.office.net/a830edad9050849vanaukyisx52.spgrid.com/_layouts/15/images/sitepagethumbnail.png",
      "promotionKind": "page",
      "showComments": false,
      "showRecommendedPages": false,
      "contentType": {
        "id": "0x0101009D1CB255DA76424F860D91F20E6C4118009E6554A5E299E84FB2E07731DD6C6D4A",
        "name": "Site Page"
      },
      "createdBy": {
        "user": {
          "displayName": "admin_contoso",
          "email": "admin@contoso.com"
        }
      },
      "lastModifiedBy": {
        "user": {
          "displayName": "admin_contoso",
          "email": "admin@contoso.com"
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
    },
    {
      "@odata.type": "#microsoft.graph.sitePage",
      "@odata.etag": "\"{DA0F67BE-977E-4D09-88AC-506A1002E678},5\"",
      "eTag": "\"{DA0F67BE-977E-4D09-88AC-506A1002E678},5\"",
      "id": "da0f67be-977e-4d09-88ac-506a1002e678",
      "lastModifiedDateTime": "2023-04-16T06:39:30Z",
      "name": "Analyst Fresh.aspx",
      "webUrl": "https://contoso.sharepoint.com/SitePages/Analyst Fresh.aspx",
      "title": "Lesotho Account Metal Analyst du",
      "pageLayout": "article",
      "thumbnailWebUrl": "https://media.akamai.odsp.cdn.office.net/a830edad9050849vanaukyisx52.spgrid.com/_layouts/15/images/sitepagethumbnail.png",
      "promotionKind": "page",
      "showComments": false,
      "showRecommendedPages": false,
      "contentType": {
        "id": "0x0101009D1CB255DA76424F860D91F20E6C4118009E6554A5E299E84FB2E07731DD6C6D4A",
        "name": "Site Page"
      },
      "createdBy": {
        "user": {
          "displayName": "admin_contoso",
          "email": "admin@contoso.com"
        }
      },
      "lastModifiedBy": {
        "user": {
          "displayName": "admin_contoso",
          "email": "admin@contoso.com"
        }
      },
      "parentReference": {
        "siteId": "45bb2a3b-0a4e-46f4-8c68-749c3fea75d3"
      },
      "publishingState": {
        "level": "draft",
        "versionId": "0.1"
      },
      "reactions": {},
      "titleArea": {
        "enableGradientEffect": false,
        "imageWebUrl": "https://loremflickr.com/640/480",
        "layout": "plain",
        "showAuthor": false,
        "showPublishedDate": false,
        "showTextBlockAboveTitle": false,
        "textAboveTitle": "generating ADP",
        "textAlignment": "center",
        "title": "strategic underneath protocol Buckinghamshire forecast",
        "authors@odata.type": "#Collection(String)",
        "authors": [],
        "authorByline@odata.type": "#Collection(String)",
        "authorByline": [],
        "imageSourceType": 4,
        "serverProcessedContent": {
          "htmlStrings": [],
          "searchablePlainTexts": [],
          "links": [],
          "imageSources": []
        }
      }
    }
  ]
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Enumerate the list of pages in a site",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Pages/Enumerate",
  "suppressions": [
  ]
}
-->
