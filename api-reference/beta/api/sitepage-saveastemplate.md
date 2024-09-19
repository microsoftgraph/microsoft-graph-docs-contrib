---
author: Yadong1106
description: "Save the current page as a template."
title: "sitePage: saveAsTemplate"
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
---

# sitePage: saveAsTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Save a [sitePage](../resources/sitepage.md) as a [pageTemplate](../resources/pagetemplate.md) in a [site](../resources/site.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

 <!-- { "blockType": "permissions", "name": "sitepage_saveAsTemplate" } -->
[!INCLUDE [permissions-table](../includes/permissions/sitepage-saveastemplate-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /sites/{siteId}/pages/{pageId}/microsoft.graph.sitePage/saveAsTemplate
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the [saveAsTemplate](../resources/saveastemplate.md) to use in the request payload.

## Response

If successful, this method returns a `201 Created` HTTP response and the created [pageTemplate](../resources/pagetemplate.md) object.

## Example

The following example shows how to save a site page as a template page.

### Request

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "saveAsTemplate", "scopes": "sites.readwrite.all" } -->

```http
POST /sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pages/f6ed8c43-9923-4c6c-ba09-9c32b8f10aeb/microsoft.graph.sitePage/saveAsTemplate
Content-Type: application/json

{
  "title": "SampleTitle",
  "name": "SampleTemplate.aspx"
}

```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/saveastemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object might be shortened for readability.
 
<!-- { "blockType": "response", "@odata.type": "microsoft.graph.pageTemplate", "truncated": true } -->
 
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.type": "microsoft.graph.pageTemplate",
    "id": "0dd6ddd6-45bd-4acd-b683-de0e6e726371",
    "name": "SampleTemplate.aspx",
    "webUrl": "https://contoso.sharepoint.com/SitePages/Templates/Sample.aspx",
    "title": "SampleTitle",
    "pageLayout": "article",
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
