---
author: rahmit
ms.author: rahmit
ms.date: 05/07/2018
title: Delete a page from a SharePoint site
---
# Delete page from the SitePages list of a site

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Removes a [sitePage][] from the Site Pages [list][] in a [site][].

[sitePage]: ../resources/sitePage.md
[list]: ../resources/list.md
[site]: ../resources/site.md

## Permissions

To delete an item, the user must have granted the application write access to the item to be deleted.

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

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

## Optional request headers

| Name       | Value | Description
|:-----------|:------|:--------------------------------------------------------
| _if-match_ | etag  | If this request header is included and the eTag provided does not match the current tag on the item, a `412 Precondition Failed` response is returned and the item will not be deleted.

## Request body

Do not supply a request body with this method.
<!-- TODO: should we provide a URL to recover/undelete the file, if one exists? -->

## Example

<!-- { "blockType": "request", "name": "delete-page", "scopes": "files.readwrite sites.readwrite.all" } -->

```http
DELETE /sites/{site-id}/pages/{page-id}
```

## Response

If successful, this call returns a `204 No Content` response to indicate that resource was deleted and there was nothing to return.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

<!-- {
  "type": "#page.annotation",
  "description": "Delete a page in the SitePages list in a site.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Pages/Delete"
} -->
