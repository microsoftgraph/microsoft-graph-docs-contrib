---
author: JeremyKelley
ms.author: jeremyke
title: Add item to a bundle
localization_priority: Normal
ms.prod: "sharepoint"
---

# Add item to a bundle in OneDrive

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add an additional item from a drive to a [bundle][].

[bundle]: ../resources/bundle.md

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.                             |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All   |
|Application          | Not supported.                                           |

## HTTP request

```http
POST /drive/bundles/{bundle-id}/children
```

### Request body

The request body includes the identifier for an item that should be added to the bundle's children collection.

### Example

This request will add an existing item to the specified bundle.

<!-- {"blockType": "request", "name": "add-to-bundle", "isCollection": true, "@odata.type": "microsoft.graph.driveItem", "tags": "onedrive.only" } -->

```http
POST /drive/bundles/{bundle-id}/children
Content-Type: application/json

{
  "id": "123456!87"
}
```

### Response

If successful, the response is `204 No Content`.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

### Error responses

Read the [Error Responses][error-response] topic for more information about how errors are returned.

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Add items to an existing bundle.",
  "keywords": "",
  "section": "documentation"
} -->
