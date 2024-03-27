---
title: "Update Page Template"
description: "Update the properties of a pageTemplate object."
author: Yadong1106
ms.localizationpriority: medium
doc_type: apiPageType
---

# Update page template

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [pageTemplate](../resources/pagetemplate.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.ReadWrite.All                         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.ReadWrite.All                         |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
PATCH /sites/{sitesId}/pageTemplates/{pageTemplateId}
```

## Request headers

|Name|Description|
|:---|:----------|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

> **Notes:** : To ensure successful parsing of the request body, the `@odata.type=#microsoft.graph.pageTemplate` must be included in the request body.

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

These fields and be used in update requests.

|Property|Type|Description|
|:-------|:---|:----------|
|description|String|The description of the page template. Optional.|
|thumbnailWebUrl|String|The URL of the page template's thumbnail image. Optional.|
|title|String|The title of the page template. Optional.|
|titleArea|[titleArea](../resources/titlearea.md)|The title area on the page template. Optional.|
|canvasLayout|[canvasLayout](../resources/canvaslayout.md)|The layout of the content in a page template, including horizontal sections and vertical section. The content of the entire page layout must be provided, because the update function doesn't support partial updates. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [pageTemplate](../resources/pagetemplate.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_pageTemplate"
}
-->

```http
PATCH /sites/{sitesId}/pageTemplates/{pageTemplateId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.pageTemplate",
  "title": "sample",
  "showRecommendedPages": false
}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.pageTemplate",
  "truncated": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.pageTemplate",
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

