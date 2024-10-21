---
author: Yadong1106
description: "Return the metadata for a page template in the templates folder in a site."
title: Get pageTemplate
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
---

# Get pageTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Return the metadata for a [pageTemplate](../resources/pagetemplate.md) in the templates folder in a [site](../resources/site.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "pageTemplate_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/pagetemplate-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/{site-id}/pageTemplates/{page-template-id}/microsoft.graph.pageTemplate
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

You can use the `$expand=canvasLayout` query parameter to include the content of an item when you retrieve its metadata if the item has a **canvasLayout** relationship.


## Request headers

| Name         | Description |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required. |
| Accept |application/json;odata.metadata=none. Optional. Removes all OData metadata from the response. We recommend including this header when the response is used in another request. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` and a [pageTemplate](../resources/pagetemplate.md) object in the response body.


## Examples

### Example 1: Get a page template in the templates folder of a site

The following example shows how to get a page template in the templates folder of a SharePoint site.

#### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "get-pageTemplate_1", "scopes": "sites.read.all", "tags": "service.sharepoint" } -->

```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pageTemplates/f6ed8c43-9923-4c6c-ba09-9c32b8f10aeb/microsoft.graph.pageTemplate
```

#### Response

The following example shows the response.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.pageTemplate", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "microsoft.graph.pageTemplate",
  "description": "Here's the page description",
  "id": "65e59907-59d5-44ff-a038-7c0bf3034567",
  "name": "Home.aspx",
  "webUrl": "https://contoso.sharepoint.com/SitePages/Templates/Home.aspx",
  "title": "Organization Home",
  "thumbnailWebUrl": "https://cdn.contoso.osi.office.net/m365content/publish/005292d6-9dcc-4fc5-b50b-b2d0383a411b/image.jpg",
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

### Example 2: Get a page template using select

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_pageTemplate_2"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pageTemplates/df69e386-6c58-4df2-afc0-ab6327d5b202/microsoft.graph.pageTemplate?$select=id,name
```

#### Response

The following example shows the response.

<!-- { 
  "blockType": "response", 
  "@odata.type": "microsoft.graph.pageTemplate", 
  "truncated": true 
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.etag": "\"{F45354CB-D634-45DF-8B88-2B4E96A1DC45},8\"",
  "id": "f45354cb-d634-45df-8b88-2b4e96a1dc45",
  "name": "Electronic Convertible.aspx"
}
```

### Example 3: Get a page template with canvas content by using expand

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_pageTemplate_3"
}
-->
```http
GET https://graph.microsoft.com/beta/sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pageTemplates/df69e386-6c58-4df2-afc0-ab6327d5b202/microsoft.graph.pageTemplate?$expand=canvasLayout
```

#### Response

The following example shows the response.

<!-- { 
  "blockType": "response", 
  "@odata.type": "microsoft.graph.pageTemplate", 
  "truncated": true 
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "description": "Reiciendis placeat dolores.",
  "eTag": "\"{F45354CB-D634-45DF-8B88-2B4E96A1DC45},8\"",
  "id": "f45354cb-d634-45df-8b88-2b4e96a1dc45",
  "lastModifiedDateTime": "2023-04-16T10:01:41Z",
  "name": "autotest Electronic Convertible.aspx",
  "webUrl": "https://contoso.sharepoint.com/SitePages/Templates/Home.aspx",
  "title": "autotest Electronic Convertible",
  "pageLayout": "article",
  "thumbnailWebUrl": "https://media.contoso.odsp.cdn.office.net/sitepagethumbnail.png",
  "promotionKind": "page",
  "showComments": false,
  "showRecommendedPages": true,
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
  "parentReference": {
    "listId": "468fc883-e278-4773-ba09-91351a1e42ed",
    "siteId": "45bb2a3b-0a4e-46f4-8c68-749c3fea75d3"
  },
  "contentType": {
    "id": "0x0101009D1CB255DA76424F860D91F20E6C4118009E6554A5E299E84FB2E07731DD6C6D4A",
    "name": "Site Page"
  },
  "publishingState": {
    "level": "draft",
    "versionId": "0.4"
  },
  "reactions": {},
  "canvasLayout": {
    "horizontalSections": [
      {
        "layout": "threeColumns",
        "id": "1",
        "emphasis": "neutral",
        "columns": [
          {
            "id": "1",
            "width": 4,
            "webparts": [
              {
                "@odata.type": "#oneDrive.textWebPart",
                "id": "f6d0ef70-c977-45e4-ae4b-4676a30d5aab",
                "innerHtml": "<h1>sample content</h1>"
              }
            ]
          },
          {
            "id": "2",
            "width": 4,
            "webparts": [
              {
                "@odata.type": "#oneDrive.textWebPart",
                "id": "99f59f91-c853-433e-9e75-ad7a32e46106",
                "innerHtml": "<h1>sample content</h1>"
              }
            ]
          },
          {
            "id": "3",
            "width": 4,
            "webparts": [
              {
                "@odata.type": "#oneDrive.textWebPart",
                "id": "48998492-9633-48b8-a7e9-d293533b4fa6",
                "innerHtml": "<h1>sample content</h1>"
              }
            ]
          }
        ]
      }
    ]
  }
}
```


<!--
{
  "type": "#pageTemplate.annotation",
  "description": "Get a page template in a site",
  "keywords": "",
  "section": "documentation",
  "tocPath": "pageTemplates/Get",
  "suppressions": [
  ]
}
-->
