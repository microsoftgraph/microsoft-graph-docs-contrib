---
author: "Yadong1106"
description: "Delete a page template from the templates folder in a site."
title: "Delete sitePageTemplate"
ms.localizationpriority: medium
doc_type: apiPageType
---
# Delete SitePageTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [sitePageTemplate](../resources/sitepagetemplate.md) from the templates folder in a [site](../resources/site.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

>**Note:** To delete an item, the user must grant the application write access to the item to be deleted.

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /sites/{site-id}/pageTemplates/microsoft.graph.sitePageTemplate/{page-template-id}
```

## Request headers

| Name       | Description
|:-----------|:----------------------------------------
|Authorization|Bearer {token} Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| _if-match_ | etag. If this request header is included and the eTag provided doesn't match the current tag on the item, a `412 Precondition Failed` response is returned and the item isn't deleted.|

## Request body

Don't supply a request body with this method.

## Response

If successful, this method returns a `204 No Content`. It doesn't return anything in the response body.

## Example

<!-- { "blockType": "request", "name": "delete-page-template", "scopes": "files.readwrite sites.readwrite.all" } -->

### Request

The following example shows a request.

```http
DELETE /sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pageTemplates/microsoft.graph.sitePageTemplate/7bf14f9b-8764-4e54-bc5a-ee7d83dd09f7
```
### Response

The following example shows the response.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

<!--
{
  "type": "#sitePageTemplate.annotation",
  "description": "Delete a page template in the templates folder in a site.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "SitePageTemplates/Delete",
  "suppressions": []
}
-->
