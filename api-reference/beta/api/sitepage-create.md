---
author: sangle7
description: "Create a new sitePage in the site pages list in a site."
ms.date: 05/07/2018
title: Create a new page in a SharePoint site
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Create a page in the site pages list of a site

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [sitePage][] in the site pages [list][] in a [site][].

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.ReadWrite.All                         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.ReadWrite.All                         |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /sites/{site-id}/pages
```

## Request body

In the request body, supply a JSON representation of the [sitePage](../resources/sitepage.md) resource to create.

> **Note:** If you're using the response from the [Get sitepage](../api/sitepage-get.md) operation to create a **sitePage**, we recommend that you add the HTTP header `Accept: application/json;odata.metadata=none`. This will remove all OData metadata from the response. You can also manually remove all OData metadata.

## Example

The following example shows how to create a new page.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "create-page", "scopes": "sites.readwrite.all" } -->

```http
POST /sites/{site-id}/pages
Content-Type: application/json

{
  "name": "test.aspx",
  "title": "test",
  "pageLayout": "article",
  "showComments": true,
  "showRecommendedPages": false,
  "titleArea": {
    "enableGradientEffect": true,
    "imageWebUrl": "/_LAYOUTS/IMAGES/VISUALTEMPLATETITLEIMAGE.JPG",
    "layout": "colorBlock",
    "showAuthor": true,
    "showPublishedDate": false,
    "showTextBlockAboveTitle": false,
    "textAboveTitle": "TEXT ABOVE TITLE",
    "textAlignment": "left",
    "imageSourceType": 2,
    "title": "sample1"
  },
  "canvasLayout": {
    "horizontalSections": [
      {
        "layout": "oneThirdRightColumn",
        "id": "1",
        "emphasis": "none",
        "columns": [
          {
            "id": "1",
            "width": 8,
            "webparts": [
              {
                "id": "6f9230af-2a98-4952-b205-9ede4f9ef548",
                "innerHtml": "<p><b>Hello!</b></p>"
              }
            ]
          },
          {
            "id": "2",
            "width": 4,
            "webparts": [
              {
                "id": "73d07dde-3474-4545-badb-f28ba239e0e1",
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
              }
            ]
          }
        ]
      }
    ]
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-page-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-page-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-page-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-page-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-page-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


## Response

If successful, this method returns a [sitePage][] in the response body for the created page.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.sitePage", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.type": "microsoft.graph.sitePage",
    "id": "0dd6ddd6-45bd-4acd-b683-de0e6e7231b7",
    "name": "test.aspx",
    "webUrl": "SitePages/test.aspx",
    "title": "test",
    "pageLayout": "article",
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
      "level": "checkout",
      "versionId": "0.1",
      "checkedOutBy": {
        "user": {
          "displayName": "Rahul Mittal",
          "email": "rahmit@contoso.com"
        }
      }
    },
    "titleArea": {
        "enableGradientEffect": true,
        "imageWebUrl": "/_LAYOUTS/IMAGES/VISUALTEMPLATETITLEIMAGE.JPG",
        "layout": "colorBlock",
        "showAuthor": true,
        "showPublishedDate": false,
        "showTextBlockAboveTitle": false,
        "textAboveTitle": "TEXT ABOVE TITLE",
        "textAlignment": "left",
        "title": "sample4",
        "imageSourceType": 2
    }
}
```

**Note:** The response object is truncated for clarity. Default properties will be returned from the actual call.

[list]: ../resources/list.md
[listitem]: ../resources/listitem.md
[site]: ../resources/site.md
[sitepage]: ../resources/sitepage.md

<!--
{
  "type": "#page.annotation",
  "description": "Create a sitePage in the SitePages list in a site.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Pages/Create",
  "suppressions": []
}
-->
