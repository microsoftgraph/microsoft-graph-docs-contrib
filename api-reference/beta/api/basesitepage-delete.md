---
author: rahmit
description: "Removes a sitePage from the site pages list in a site."
ms.date: 05/07/2018
title: Delete a page from a SharePoint site
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---
# Delete baseSitePage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Removes a [baseSitePage][] from the site pages [list][] in a [site][].

[baseSitePage]: ../resources/basesitepage.md
[list]: ../resources/list.md
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
DELETE /sites/{site-id}/pages/{page-id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
| _if-match_ | etag  | If this request header is included and the eTag provided does not match the current tag on the item, a `412 Precondition Failed` response is returned and the item will not be deleted.

## Request body

Do not supply a request body with this method.

## Response

If successful, this method returns a `204 No Content`. It does not return anything in the response body.

## Example

<!-- { "blockType": "request", "name": "delete-page", "scopes": "files.readwrite sites.readwrite.all" } -->

##### Request

```http
DELETE /sites/{site-id}/pages/{page-id}
```
##### Response

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

<!--
{
  "type": "#page.annotation",
  "description": "Delete a page in the SitePages list in a site.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Pages/Delete",
  "suppressions": []
}
-->


