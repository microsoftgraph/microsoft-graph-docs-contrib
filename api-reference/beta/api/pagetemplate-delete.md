---
author: "Yadong1106"
description: "Delete a page template from the templates folder in a site."
title: "Delete pageTemplate"
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageTemplateType
---
# Delete page template

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [pageTemplate][] from the templates folder in a [site][].

[pageTemplate]: ../resources/pagetemplate.md
[site]: ../resources/site.md

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

>**Note:** To delete an item, the user must have granted the application write access to the item to be deleted.

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /sites/{site-id}/pagetemplates/{page-template-id}
```

## Request headers

| Name       | Value | Description
|:-----------|:------|:--------------------------------------------------------
|Authorization|Bearer {token}.| Required|
| _if-match_ | etag  | If this request header is included and the eTag provided does not match the current tag on the item, a `412 Precondition Failed` response is returned and the item will not be deleted.

## Request body

Do not supply a request body with this method.

## Response

If successful, this method returns a `204 No Content`. It does not return anything in the response body.

## Example

<!-- { "blockType": "request", "name": "delete-page-template", "scopes": "files.readwrite sites.readwrite.all" } -->

### Request

The following is an example of the request.

```http
DELETE /sites/{site-id}/pagetemplates/{page-template-id}
```
### Response

The following is an example of the response.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

<!--
{
  "type": "#pagetemplate.annotation",
  "description": "Delete a page template in the templates folder in a site.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "PageTemplates/Delete",
  "suppressions": []
}
-->
