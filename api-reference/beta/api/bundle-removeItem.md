---
author: JeremyKelley
ms.author: jeremyke
title: Remove item from a bundle
localization_priority: Normal
ms.prod: "sharepoint"
---

# Remove items from a bundle in OneDrive

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove an item from a bundle's children collection.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All    |

## HTTP request

```http
DELETE /drive/bundles/{bundle-id}/children/{item-id}
```

### Example

<!-- {"blockType": "request", "name": "remove-from-bundle" } -->

```http
DELETE /drive/bundles/{bundle-id}/children/{item-id}
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
  "description": "Remove an item from a bundle.",
  "keywords": "",
  "section": "documentation"
} -->
