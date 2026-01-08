---
author: Yadong1106
description: "Get the collection of pageTemplate objects from the page templates in a site. All page templates in the site are returned."
title: List pageTemplate
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
ms.date: 10/24/2024
---

# List pageTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the collection of [pageTemplate](../resources/pagetemplate.md) objects in a site [site](../resources/site.md). All page templates in the site are returned (with pagination), sorted alphabetically by `name` in ascending order.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "pagetemplate_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/pagetemplate-list-permissions.md)]
## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/{site-id}/pageTemplates/microsoft.graph.pageTemplate
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. 

## Request headers

|Name|Description|
|:---|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200` and a list of [pageTemplate](../resources/pagetemplate.md) object in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!--{
	"blockType": "request",
	"name": "get-pageTemplates",
	"scopes": "sites.read.all",
	"tags": "service.sharepoint"
}
-->

```msgraph-interactive
GET /sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pageTemplates/microsoft.graph.pageTemplate
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-pagetemplates-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-pagetemplates-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-pagetemplates-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-pagetemplates-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-pagetemplates-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-pagetemplates-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!--
{
    "blockType": "response",
    "@odata.type": "microsoft.graph.pageTemplate",
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
            "webUrl": "https://contoso.sharepoint.com/SitePages/Templates/sample.aspx",
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
                "imageWebUrl": "https://cdn.contoso.osi.office.net/m365content/publish/005292d6-9dcc-4fc5-b50b-b2d0383a411b/image.jpg",
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
            "webUrl": "https://contoso.sharepoint.com/SitePages/Templates/Home.aspx",
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
                "imageWebUrl": "https://cdn.contoso.osi.office.net/m365content/publish/005292d6-9dcc-4fc5-b50b-b2d0383a411b/image.jpg",
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
  "type": "#pageTemplate.annotation",
  "description": "Enumerate the list of page templates in a site",
  "keywords": "",
  "section": "documentation",
  "tocPath": "PageTemplates/Enumerate",
  "suppressions": [
  ]
}
-->
