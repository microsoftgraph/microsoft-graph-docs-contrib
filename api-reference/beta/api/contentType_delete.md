---
author: swapnil1993
ms.author: swapnil1993
ms.date: 08/28/2020
title: "ContentType delete"
description: "Delete content type from a SharePoint list or Site"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sharepoint"
---
# Delete a content type from a site or a list

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Removes a [content type][contentType] from a [list][] or a [site][].


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /sites/{site-id}/contentTypes/{contentType-id}
DELETE /sites/{site-id}/lists/{list-id}/contentTypes/{contentType-id}
```

## Request body

Do not supply a request body with this method.

## Example

<!-- { "blockType": "request", "name": "delete-contentType", "scopes": "sites.readwrite.all" } -->

```http
DELETE /sites/{site-id}/contentTypes/{contentType-id}
```

## Response

If successful, this call returns a `204 No Content` response to indicate that resource was deleted and there was nothing to return.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

[list]: ../resources/list.md
[contentType]: ../resources/contentType.md
[site]: ../resources/site.md


<!--
{
  "type": "#page.annotation",
  "description": "Delete content type from a SharePoint list or Site",
  "keywords": "content type",
  "section": "documentation",
  "tocPath": "sites/Delete ContentType",
  "suppressions": [
  ]
}
-->