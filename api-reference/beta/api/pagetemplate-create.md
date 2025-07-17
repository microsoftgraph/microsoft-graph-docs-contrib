---
author: Yadong1106
description: "Create a new page template in the templates folder in a site."
title: Create pageTemplate
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
ms.date: 10/24/2024
---

# Create pageTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [pageTemplate](../resources/pageTemplate.md) in the templates folder in a [site](../resources/site.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "pageTemplate_create" } -->
[!INCLUDE [permissions-table](../includes/permissions/pagetemplate-create-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /sites/{site-id}/pageTemplates/microsoft.graph.pageTemplate
```
## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [pageTemplate](../resources/pageTemplate.md) resource to create.

> **Notes:** :
> - You must include `@odata.type=#microsoft.graph.pageTemplate` in the request body. The `@odata.type=#microsoft.graph.pageTemplate` is a property in the HTTP request body for the Microsoft Graph API that specifies the page template type for SharePoint.
> - If you're using the response from the [Get pageTemplate](../api/pageTemplate-get.md) operation to create a **page template**, we recommend that you add the HTTP header `Accept: application/json;odata.metadata=none` to remove all OData metadata from the response. You can also manually remove all OData metadata.

## Response

If successful, this method returns a `201 Created` HTTP response and the created [pageTemplate](../resources/pageTemplate.md) object.

## Example

The following example shows how to create a new page template.

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "create-pageTemplate", "scopes": "sites.readwrite.all" } -->


```http
POST /sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pageTemplates/microsoft.graph.pageTemplate
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.pageTemplate",
  "name": "test.aspx",
  "title": "test",
  "pageLayout": "article",
  "showComments": true,
  "showRecommendedPages": false,
  "titleArea": {
    "enableGradientEffect": true,
    "imageWebUrl": "https://media.contoso.odsp.cdn.office.net/sitepagethumbnail.png",
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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-pagetemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response that contains a [pageTemplate](../resources/pagetemplate.md) object for the created page template.

> **Note:** The response might be shortened for readability.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.pageTemplate", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.type": "microsoft.graph.pageTemplate",
    "id": "0dd6ddd6-45bd-4acd-b683-de0e6e726371",
    "name": "test.aspx",
    "webUrl": "https://contoso.sharepoint.com/SitePages/Templates/test.aspx",
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
        "imageWebUrl": "https://cdn.contoso.osi.office.net/m365content/publish/005292d6-9dcc-4fc5-b50b-b2d0383a411b/image.jpg",
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


<!--
{
  "type": "#pageTemplate.annotation",
  "description": "Create a page template in the templates folder in a site.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "PageTemplates/Create",
  "suppressions": []
}
-->
