---
author: Yadong1106
description: "Returns the metadata for a page template in the templates folder in a site."
ms.date: 03/15/2018
title: Get page template
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageTemplateType
---

# Get page template

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns the metadata for a [pageTemplate][] in the templates folder in a [site][].

[pageTemplate]: ../resources/pagetemplate.md
[site]: ../resources/site.md

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.Read.All, Sites.ReadWrite.All         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.Read.All, Sites.ReadWrite.All         |


## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/{site-id}/pagetemplates/{page-template-id}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

You can use the `$expand=canvasLayout` query string parameter to include the content of an item when retrieving the metadata of an item if the item has a **=canvasLayout** relationship.


## Request headers

| Name       | Description |
|:---------------|:--------|
|Authorization|Bearer {token}. Required.|
| Content-Type  | application/json. Required. |
| Accept |application/json;odata.metadata=none. Optional. Removes all OData metadata from the response. We recommend including this header when the response will be used in another request. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200` and a [pageTemplate](../resources/pagetemplate.md) object in the response body.


## Examples

### Example 1: Get a page template in the templates folder of a site
#### Request

# [HTTP](#tab/http)

<!-- { "blockType": "request", "name": "get-page-template", "scopes": "sites.read.all", "tags": "service.sharepoint" } -->

```msgraph-interactive
GET /sites/{site-id}/pagetemplates/{page-template-id}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-pagetemplate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-pagetemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.pageTemplate", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "microsoft.graph.pageTemplate",
  "description": "Here's the page description",
  "id": "65e59907-59d5-44ff-a038-7c0bf3098c01",
  "name": "Home.aspx",
  "webUrl": "SitePages/Templates/Home.aspx",
  "title": "Organization Home",
  "thumbnailWebUrl": "https://cdn.hubblecontent.osi.office.net/m365content/publish/00210d24-bba0-42e6-9a31-1d452a95dd75/thumbnails/large.jpg?file=163352059.jpg",
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
  }
}
```

<!--
{
  "type": "#pagetemplate.annotation",
  "description": "Get a page template in a site",
  "keywords": "",
  "section": "documentation",
  "tocPath": "PageTemplates/Get",
  "suppressions": [
  ]
}
-->
