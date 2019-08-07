---
author: JeremyKelley
description: "Restore a driveItem that has been deleted and is currently in the recycle bin."
ms.date: 08/06/2019
title: Restore a driveItem
localization_priority: Normal
ms.prod: ""
doc_type: apiPageType
---
# Restore a DriveItem

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a [driveItem](../resources/driveitem.md) that has been deleted and is currently in the recycle bin.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.    |
|Delegated (personal Microsoft account) | Files.ReadWrite.All    |
|Application | Files.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /drives/{drive-id}/items/{item-id}/restore
POST /me/drive/items/{item-id}/restore
POST /users/{user-id}/drive/items/{item-id}/restore
```

### Request body

In the request body, you may provide a JSON object with the following parameters.


| Name            | Value                                          | Description                                                                                                 |
|:----------------|:-----------------------------------------------|:------------------------------------------------------------------------------------------------------------|
| parentReference | [ItemReference](../resources/itemreference.md) | Optional. Reference to the parent item the deleted item will be restored to.                                         |
| name            | string                                         | Optional. The new name for the restored item. If this isn't provided, the same name will be used as the original.    |

## Example

This example restores a deleted item identified by `{item-id}`.

<!-- { "blockType": "request", "name": "restore-item", "scopes": "files.readwrite", "target": "action" } -->

```http
POST /me/drive/items/{item-id}/restore
Content-Type: application/json

{
  "name": "new-item-name.txt",
  "parentReference": {
    "id": "{new-parent-folder-id}"
  }
}
```

## Response

This method returns a [DriveItem](../resources/driveitem.md) for the item being restored.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "1312abc!1231",
  "name": "new-item-name.txt",
  "size": 19121,
  "lastModifiedDateTime": "2017-12-12T10:40:59Z"
}
```

### Remarks

This functionality is currently only available for OneDrive Personal.

<!-- {
  "type": "#page.annotation",
  "description": "Restore an item.",
  "keywords": "retore item",
  "section": "documentation",
  "tocPath": "Items/Restore"
} -->