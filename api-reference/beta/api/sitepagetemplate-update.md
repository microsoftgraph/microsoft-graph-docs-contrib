---
title: "Update Page Template"
description: "Update the properties of a sitePageTemplate object."
author: Yadong1106
ms.localizationpriority: medium
doc_type: apiPageType
---

# Update SitePageTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [sitePageTemplate](../resources/sitepagetemplate.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:--------------|:------------------------------------------|
|Delegated (work or school account)|Sites.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Sites.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
PATCH /sites/{sitesId}/pageTemplates/microsoft.graph.sitePageTemplate/{page-template-id}
```

## Request headers

|Name|Description|
|:---|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

> **Notes:** : You must include `@odata.type=#microsoft.graph.sitePageTemplate` in the request body. The `@odata.type=#microsoft.graph.sitePageTemplate` is a property in the HTTP request body for the Microsoft Graph API, specifying the page template type for SharePoint.

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

These fields can be used in update requests.

|Property|Type|Description|
|:-------|:---|:----------|
|description|String|The description of the page template. Optional.|
|thumbnailWebUrl|String|The URL of the page template's thumbnail image. Optional.|
|title|String|The title of the page template. Optional.|
|titleArea|[titleArea](../resources/titlearea.md)|The title area on the page template. Optional.|
|canvasLayout|[canvasLayout](../resources/canvaslayout.md)|The layout of the content in a page template, including horizontal sections and vertical section. The content of the entire page layout must be provided, because the update function doesn't support partial updates. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [sitePageTemplate](../resources/sitepagetemplate.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_sitePageTemplate"
}
-->

```http
PATCH /sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pageTemplates/microsoft.graph.sitePageTemplate/8fbff3f5-0e5d-49e7-89c7-2b042b3bfaa6
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sitePageTemplate",
  "title": "sample",
  "showRecommendedPages": false
}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.sitePageTemplate",
  "truncated": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sitePageTemplate",
  "id": "0dd6ddd6-45bd-4acd-b683-de0e6e7231b7",
  "name": "sample.aspx",
  "webUrl": "https://a830edad9050849yd.sharepoint.com/SitePages/Templates/sample.aspx",
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
    "title": "sample",
    "imageSourceType": 2
  }
}
```

