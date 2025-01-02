---
author: Yadong1106
description: "Create a new page from a page template."
title: "sitePage: createFromTemplate"
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
ms.date: 10/24/2024
---
 
# sitePage: createFromTemplate
 
Namespace: microsoft.graph
 
[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
 
Create a new [sitePage](../resources/sitepage.md) from a [pageTemplate](../resources/pagetemplate.md) in a [site](../resources/site.md).
 
## Permissions
 
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sitepage_createfromtemplate" } -->
[!INCLUDE [permissions-table](../includes/permissions/sitepage-createfromtemplate-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /sites/{site-id}/pages/createFromTemplate
```
## Request headers

| Name | Description |
| :----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [crateFromPageTemplateRequest](../resources/createfromtemplate.md) to use in the request payload.

## Response

If successful, this method returns a `201 Created` and the created [sitePage](../resources/baseSitePage.md) object.

## Example

The following example shows how to create a new page from the page template.

### Request

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "createFromTemplate", "scopes": "sites.readwrite.all" } -->

```http
POST /sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pages/sitepage/createFromTemplate
Content-Type: application/json

{
    "title": "Sample",
    "name": "Sample.aspx",
    "templateId": "f6ed8c43-9923-4c6c-ba09-9c32b8f10aeb"
}

```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/createfromtemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object might be shortened for readability.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.sitePage", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.type": "microsoft.graph.sitePage",
    "id": "0dd6ddd6-45bd-4acd-b683-de0e6e7231b7",
    "name": "Sample.aspx",
    "webUrl": "https://contoso.sharepoint.com/SitePages/Sample.aspx",
    "title": "Sample",
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
        "imageSourceType": 2
    }
}

```

<!--
{
  "type": "#sitePage.annotation",
  "description": "Create a new page form a page template.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "SitePages/CreateFromTemplate",
  "suppressions": []
}
-->
