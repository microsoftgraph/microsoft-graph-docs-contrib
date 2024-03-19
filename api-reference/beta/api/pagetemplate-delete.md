---
author: "Yadong1106"
description: "Delete a page template from the templates folder in a site."
title: "Delete pageTemplate"
ms.localizationpriority: medium
doc_type: apiPageType
---
# Delete page template

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [pageTemplate](../resources/pagetemplate.md) from the templates folder in a [site](../resources/site.md).

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
DELETE /sites/{site-id}/pageTemplates/{pageTemplateId}
```

## Request headers

| Name       | Value | Description
|:-----------|:------|:--------------------------------------------------------
|Authorization|Bearer {token}.| Required|
| _if-match_ | etag  | If this request header is included and the eTag provided doesn't match the current tag on the item, a `412 Precondition Failed` response is returned and the item isn't deleted.

## Request body

Don't supply a request body with this method.

## Response

If successful, this method returns a `204 No Content`. It doesn't return anything in the response body.

## Example

<!-- { "blockType": "request", "name": "delete-page-template", "scopes": "files.readwrite sites.readwrite.all" } -->

### Request

The following example shows a request.

```http
DELETE /sites/{site-id}/pageTemplates/{pageTemplateId}
```
### Response

The following example shows the response.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

<!--
{
  "type": "#pageTemplate.annotation",
  "description": "Delete a page template in the templates folder in a site.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "PageTemplates/Delete",
  "suppressions": []
}
-->
