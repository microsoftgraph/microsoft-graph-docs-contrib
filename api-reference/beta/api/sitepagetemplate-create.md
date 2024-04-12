---
author: Yadong1106
description: "Create a new page template in the templates folder in a site."
ms.date: 05/07/2018
title: Create sitePageTemplate
ms.localizationpriority: medium
doc_type: apiPageType
---

# Create SitePageTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [sitePageTemplate](../resources/sitepagetemplate.md) in the templates folder in a [site](../resources/site.md).

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
POST /sites/{site-id}/pageTemplates/microsoft.graph.sitePageTemplate
```
## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [sitePageTemplate](../resources/sitepagetemplate.md) resource to create.

> **Notes:** :
> 1. You must include `@odata.type=#microsoft.graph.sitePageTemplate` in the request body. The `@odata.type=#microsoft.graph.sitePageTemplate` is a property in the HTTP request body for the Microsoft Graph API, specifying the page template type for SharePoint.
> 2. If you're using the response from the [Get sitePageTemplate](../api/sitepagetemplate-get.md) operation to create a **page template**, we recommend that you add the HTTP header `Accept: application/json;odata.metadata=none` to remove all OData metadata from the response. You can also manually remove all OData metadata.
## Response

If successful, this method returns a `201` and the created [sitePageTemplate](../resources/sitepagetemplate.md) object.

## Example

The following example shows how to create a new page template.

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "create-pageTemplate", "scopes": "sites.readwrite.all" } -->


```http
POST /sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pageTemplates/microsoft.graph.sitePageTemplate
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sitePageTemplate",
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

### Response

The following example shows the response.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.sitePageTemplate", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.type": "microsoft.graph.sitePageTemplate",
    "id": "0dd6ddd6-45bd-4acd-b683-de0e6e726371",
    "name": "test.aspx",
    "webUrl": "https://a830edad9050849yd.sharepoint.com/SitePages/Templates/test.aspx",
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

**Note:** The response object is truncated for clarity. Default properties are returned from the actual call.

<!--
{
  "type": "#sitePageTemplate.annotation",
  "description": "Create a page template in the templates folder in a site.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "SitePageTemplates/Create",
  "suppressions": []
}
-->
