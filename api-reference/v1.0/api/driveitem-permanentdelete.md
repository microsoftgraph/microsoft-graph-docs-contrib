---
author: mahgoyal
ms.date: 06/28/2023
title: Permanently delete a file or folder
ms.localizationpriority: medium
ms.prod: "sharepoint"
description: "Permanently delete a driveItem by using its ID."
doc_type: apiPageType
---
# driveItem: permanentDelete

Namespace: microsoft.graph

Permanently delete a [driveItem](../resources/driveitem.md) by using its ID.
Note that if you delete items using this method, they will be permanently removed and won't be sent to the recycle bin. Therefore, they cannot be restored afterward.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All    |
|Application | Files.ReadWrite.All, Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /drives/{drive-id}/items/{item-id}/permanentDelete
```

## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;code&gt; *Required*|
| Accept  | application/json |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Example

The following example shows how to call this API.

<!-- { "blockType": "request", "name": "permanentDelete-item", "scopes": "files.readwrite", "target": "action" } -->

### Request

```http
POST /drives/{drive-id}/items/{item-id}/permanentDelete
```

### Response

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

### Error responses

For details about how errors are returned, see [Error Responses][error-response].

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Permanently delete a DriveItem from a drive",
  "keywords": "permanently delete,existing item,onedrive",
  "section": "documentation",
  "tocPath": "Items/Permanently delete a driveItem",
  "suppressions": [
  ]
} -->
