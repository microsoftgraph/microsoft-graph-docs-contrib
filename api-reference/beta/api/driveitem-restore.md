---
title: "Restore a driveItem"
description: "Restore a driveItem that has been deleted and is currently in the recycle bin."
localization_priority: Normal
author: "JeremyKelley"
ms.prod: ""
ms.date: 08/06/2019
doc_type: "apiPageType"
---

# Restore a DriveItem

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a [driveItem](../resources/driveitem.md) that has been deleted and is currently in the recycle bin.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Files.ReadWrite.All |
| Application                            | Files.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/drive/items/{id}/restore
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter     | Type                                         | Description |
|:--------------|:---------------------------------------------|:------------|
|parentReference|[ItemReference](../resources/itemreference.md)| Optional. Reference to the parent item the deleted item will be restored to. |
|name           |String                                        | Optional. The new name for the restored item. If this isn't provided, the same name will be used as the original. |

## Response

If successful, this method returns `200, OK` response code and the restored [driveItem](../resources/driveitem.md) object in the response body.

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "restore-item",
  "scopes": "files.readwrite",
  "target": "action"
}-->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{id}/restore
Content-type: application/json

{
  "parentReference": {
    "id": "{new-parent-folder-id}",
  },
  "name": "{new-restored-item-name}"
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "id": "1312abc!1231",
  "name": "new-restored-item-name.txt",
  "size": 19121,
  "lastModifiedDateTime": "2017-12-12T10:40:59Z"
}
```

## Remarks

This functionality is currently only available for OneDrive Personal.

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Restore a DriveItem.",
  "keywords": "retore,item,driveitem",
  "section": "documentation",
  "tocPath": ""
}-->