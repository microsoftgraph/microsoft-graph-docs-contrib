---
author: swapnil1993
ms.author: swapnil1993
ms.date: 08/28/2020
title: "ContentType Column delete"
description: "Delete a column from a content type"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sharepoint"
---
# Delete a column from a content type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Removes a [column][columndefinition] from a [list][] or a [site][] [content type][contentType].


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
DELETE /sites/{site-id}/contentTypes/{contentType-id}/columns/{column-id}
DELETE /sites/{site-id}/lists/{list-id}/contentTypes/{contentType-id}/columns/{column-id}
```

## Request body

Do not supply a request body with this method.

## Example

<!-- { "blockType": "request", "name": "delete-column", "scopes": "sites.readwrite.all" } -->

```http
DELETE /sites/{site-id}/contentTypes/{contentType-id}/columns/{column-id}
```

## Response

If successful, this call returns a `204 No Content` response to indicate that resource was deleted and there was nothing to return.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

[list]: ../resources/list.md
[columndefinition]: ../resources/columndefinition.md
[contentType]: ../resources/contentType.md
[site]: ../resources/site.md