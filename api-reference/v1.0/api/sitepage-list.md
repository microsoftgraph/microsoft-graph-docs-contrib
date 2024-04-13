---
author: sangle7
description: "Get the collection of sitePage objects from the site pages [list] in a site. All pages in the site are returned (with pagination)."
ms.date: 03/15/2018
title: List SitePage
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# List SitePage

Namespace: microsoft.graph

Get the collection of [sitePage][] objects from the site pages [list][] in a site [site][]. All pages in the site are returned (with pagination). Sort alphabetically by `name` in ascending order.

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

<!-- { "blockType": "ignored" } -->

```http
GET /sites/{site-id}/pages/microsoft.graph.sitePage
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderBy`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. 

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200` and a list of [sitePage](../resources/sitepage.md) object in the response body.

## Example

### Request

The following example shows a request.

<!--{
	"blockType": "request",
	"name": "get-pages",
	"scopes": "sites.read.all",
	"tags": "service.sharepoint"
}
-->

```http
GET /sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pages/microsoft.graph.sitePage
```

---

### Response

The following example shows the response.

<!--
{
    "blockType": "response",
    "@odata.type": "microsoft.graph.sitePage",
    "truncated": true,
    "isCollection":true
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "08f48aa6-02e3-407c-bbcb-ff61cec653fa",
            "name": "sample.aspx",
            "webUrl": "https://contoso.sharepoint.com/SitePages/sample.aspx",
            "title": "sample",
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
                "versionId": "1.1",
                "checkedOutBy": {
                    "user": {
                        "displayName": "Rahul Mittal",
                        "email": "rahmit@contoso.com"
                    }
                }
            },
            "reactions": {
                "commentCount": 4,
                "likeCount": 2
            },
            "titleArea": {
                "enableGradientEffect": true,
                "imageWebUrl": "https://cdn.hubblecontent.osi.office.net/m365content/publish/005292d6-9dcc-4fc5-b50b-b2d0383a411b/image.jpg",
                "layout": "imageAndTitle",
                "showAuthor": false,
                "showPublishedDate": false,
                "showTextBlockAboveTitle": false,
                "textAboveTitle": "",
                "textAlignment": "left",
                "imageSourceType": 2,
                "title": "sample"
            }
        },
        {
            "id": "7d87eee1-7c77-46b5-b2c4-ad6e4e432a8e",
            "name": "Home.aspx",
            "webUrl": "https://contoso.sharepoint.com/SitePages/Home.aspx",
            "title": "Home",
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
                "level": "checkout",
                "versionId": "1.1",
                "checkedOutBy": {
                    "user": {
                        "displayName": "Rahul Mittal",
                        "email": "rahmit@contoso.com"
                    }
                }
            },
            "reactions": {
                "commentCount": 1
            },
            "titleArea": {
                "enableGradientEffect": true,
                "imageWebUrl": "https://cdn.hubblecontent.osi.office.net/m365content/publish/005292d6-9dcc-4fc5-b50b-b2d0383a411b/image.jpg",
                "layout": "imageAndTitle",
                "showAuthor": true,
                "showPublishedDate": false,
                "showTextBlockAboveTitle": false,
                "textAboveTitle": "Text Above Title",
                "textAlignment": "left",
                "imageSourceType": 2,
                "title": "Home",
                "hasTitleBeenCommitted": true
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
