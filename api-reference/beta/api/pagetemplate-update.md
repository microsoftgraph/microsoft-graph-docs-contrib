---
title: "Update pageTemplate"
description: "Update the properties of a pageTemplate object."
author: Yadong1106
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
---

# Update pageTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [pageTemplate](../resources/pagetemplate.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "pageTemplate_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/pagetemplate-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
PATCH /sites/{sitesId}/pageTemplates/microsoft.graph.pageTemplate/{page-template-id}
```

## Request headers

|Name|Description|
|:---|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

> **Note:**: You must include `@odata.type=#microsoft.graph.pageTemplate` in the request body. The `@odata.type=#microsoft.graph.pageTemplate` is a property in the HTTP request body for the Microsoft Graph API that specifies the page template type for SharePoint.

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_pageTemplate"
}
-->

```http
PATCH /sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pageTemplates/microsoft.graph.pageTemplate/8fbff3f5-0e5d-49e7-89c7-2b042b3bfaa6
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.pageTemplate",
  "title": "sample",
  "showRecommendedPages": false
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-pagetemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

