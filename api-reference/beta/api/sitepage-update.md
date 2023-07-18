---
title: "Update sitePage"
description: "Update the properties of a sitePage object."
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# Update sitePage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [sitePage](../resources/sitepage.md) object.

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
PATCH /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

> **Notes:** : To ensure successful parsing of the request body, the `@odata.type=#microsoft.graph.sitePage` must be included in the request body.

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

These fields and be used in update requests.

| Property             | Type                                         | Description                                                                                                                                                                                                        |
| :------------------- | :------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| description                | String                                       | Description of the site page. Optional.                                                                                                                                                                                  |
| thumbnailWebUrl                | String                                       | Url of the site page's thumbnail image. Optional.                                                                                                                                                                                  |
| title                | String                                       | Title of the site page. Optional.                                                                                                                                                                                  |
| showComments         | Boolean                                      | Boolean to determine whether or not to show comments at the bottom of the page. Optional.                                                                                                                          |
| showRecommendedPages | Boolean                                      | Boolean to determine whether or not to show recommended pages at the bottom of the page. Optional.                                                                                                                 |
| promotionKind            | [PagePromotionType](../resources/sitepage.md#pagepromotiontype-values)      | Promotion kind of the SharePoint page. Optional. Only support promote a page (e.g from `page` to `newsPost`). Demote is not supported.                                                                                                                                                                      |
| titleArea            | [titleArea](../resources/titlearea.md)       | Title area on the site page. Optional.                                                                                                                                                                       |
| canvasLayout         | [canvasLayout](../resources/canvaslayout.md) | The layout of the content in a page, including horizontal sections and vertical section. A content of the entire page layout needs to be provided, the update function does not support partial updates. Optional. |

## Response

If successful, this method returns a `200 OK` response code and an updated [sitePage](../resources/sitepage.md) object in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_sitepage"
}
-->

```http
PATCH https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sitePage",
  "title": "sample",
  "showComments": true,
  "showRecommendedPages": false
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-sitepage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.sitePage",
  "truncated": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sitePage",
  "id": "0dd6ddd6-45bd-4acd-b683-de0e6e7231b7",
  "name": "sample.aspx",
  "webUrl": "SitePages/sample.aspx",
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
