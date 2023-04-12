---
author: sangle7
description: "Returns the metadata for a sitePage in the site pages list in a site."
ms.date: 03/15/2018
title: Get a page in a site
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Get a page in the site pages list of a site

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns the metadata for a [sitePage][] in the site pages [list][] in a [site][].

[sitePage]: ../resources/sitepage.md
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

## Example

### Example 1: Get a page in the site pages list of a site
#### Request

# [HTTP](#tab/http)

<!-- { "blockType": "request", "name": "get-page", "scopes": "sites.read.all", "tags": "service.sharepoint" } -->

```msgraph-interactive
GET /sites/{site-id}/pages/{page-id}
```

# [C#](#tab/csharp)

[!INCLUDE [sample-code](../includes/snippets/csharp/get-page-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)

[!INCLUDE [sample-code](../includes/snippets/javascript/get-page-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)

[!INCLUDE [sample-code](../includes/snippets/java/get-page-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)

[!INCLUDE [sample-code](../includes/snippets/go/get-page-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)

[!INCLUDE [sample-code](../includes/snippets/powershell/get-page-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)

[!INCLUDE [sample-code](../includes/snippets/php/get-page-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.sitePage", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "microsoft.graph.sitePage",
  "description": "Here's the page description",
  "id": "65e59907-59d5-44ff-a038-7c0bf3098c01",
  "name": "Home.aspx",
  "webUrl": "SitePages/Home.aspx",
  "title": "Organization Home",
  "thumbnailWebUrl": "https://cdn.hubblecontent.osi.office.net/m365content/publish/00210d24-bba0-42e6-9a31-1d452a95dd75/thumbnails/large.jpg?file=163352059.jpg",
  "promotionKind": "page",
  "pageLayout": "home",
  "showComments": true,
  "showRecommendedPages": false,
  "createdBy": {
    "user": {
        "displayName": "Rahul Mittal",
        "email": "rahmit@contoso.com"
    }
  },
  "lastModifiedBy": {
    "user": {
        "displayName": "Rahul Mittal",
        "email": "rahmit@contoso.com"
    }
  },
  "publishingState": {
    "level": "published",
    "versionId": "1.0"
  },
  "reactions": {
    "commentCount": 1
  }
}
```

### Example 2: Get a page using select and expand
#### Request

With `select` and `expand` statements, you can retrieve sitePage metadata and page content in a single request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sitePage"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}?select=id,title&expand=webparts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-sitepage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-sitepage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-sitepage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-sitepage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-sitepage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-sitepage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.sitePage", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "microsoft.graph.sitePage",
  "id": "65e59907-59d5-44ff-a038-7c0bf3098c01",
  "title": "Organization Home",
  "webparts":[{
      "@odata.type": "#microsoft.graph.textWebPart",
      "id": "d79d70af-27ea-4208-8dce-23c3bf678664",
      "innerHtml": "<h2>How do you get started?</h2>"
    },
    {
      "@odata.type": "#microsoft.graph.textWebPart",
      "id": "6346d908-f20d-4528-902f-3c2a9c8c2442",
      "webPartType": "d1d91016-032f-456d-98a4-721247c305e8",
      "data": {
        "dataVersion": "1.9",
        "description": "Show an image on your page",
        "title": "Image",
        "properties": {
          "imageSourceType": 2,
          "altText": "",
          "overlayText": "",
          "siteid": "0264cabe-6b92-450a-b162-b0c3d54fe5e8",
          "webid": "f3989670-cd37-4514-8ccb-0f7c2cbe5314",
          "listid": "bdb41041-eb06-474e-ac29-87093386bb14",
          "uniqueid": "d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb",
          "imgWidth": 4288,
          "imgHeight": 2848,
          "fixAspectRatio": false,
          "captionText": "",
          "alignment": "Center"
        },
        "serverProcessedContent": {
          "imageSources": [
            {
              "key": "imageSource",
              "value": "/_LAYOUTS/IMAGES/VISUALTEMPLATEIMAGE1.JPG"
            }
          ],
          "customMetadata": [
            {
              "key": "imageSource",
              "value": {
                "siteid": "0264cabe-6b92-450a-b162-b0c3d54fe5e8",
                "webid": "f3989670-cd37-4514-8ccb-0f7c2cbe5314",
                "listid": "bdb41041-eb06-474e-ac29-87093386bb14",
                "uniqueid": "d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb",
                "width": "4288",
                "height": "2848"
              }
            }
          ]
        }
      }
    }]
}
```

### Example 3: Get a page with page content

To access the page with page content, append the `?expand=canvasLayout` query string.

```http
GET /sites/{site-id}/pages/{page-id}?expand=canvasLayout
```

<!--
{
  "type": "#page.annotation",
  "description": "Get a page in a site",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Pages/Enumerate",
  "suppressions": [
  ]
}
-->
