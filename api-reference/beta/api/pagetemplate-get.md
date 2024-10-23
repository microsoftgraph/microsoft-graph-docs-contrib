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
GET /sites/{site-id}/pageTemplates/microsoft.graph.pageTemplate/{page-template-id}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

You can use the `$expand=canvasLayout` query parameter to include the content of an item when you retrieve the metadata of an item if the item has a **canvasLayout** relationship.


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

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get-pageTemplate", "scopes": "sites.read.all", "tags": "service.sharepoint" } -->

```msgraph-interactive
GET /sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pageTemplates/microsoft.graph.pageTemplate/f6ed8c43-9923-4c6c-ba09-9c32b8f10aeb
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-pagetemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "webUrl": "https://a830edad9050849rahmit.sharepoint.com/SitePages/Templates/Home.aspx",
  "title": "Organization Home",
  "thumbnailWebUrl": "https://cdn.hubblecontent.osi.office.net/m365content/publish/00210d24-bba0-42e6-9a31-1d452a95dd75/thumbnails/large.jpg?file=163352059.jpg",
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
