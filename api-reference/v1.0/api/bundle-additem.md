---
author: JeremyKelley
title: Add item to a bundle
description: Add item to a bundle of driveItems
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Add item to a bundle

Namespace: microsoft.graph

Add an additional [driveItem][] from a drive to a [bundle][].

[bundle]: ../resources/bundle.md
[driveItem]: ../resources/driveItem.md

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

## Request headers

| Name          | Description  |
|:------------- |:------------ |
| Authorization | Bearer \{token\}. Required. |

## Request body

The request body includes the identifier for an item that should be added to the bundle's children collection.

## Response

If successful, the response is `204 No Content`.

For information about error responses, see [Error responses][error-response].

## Example

### Request

This request will add an existing item to the specified bundle.

<!-- {"blockType": "request", "name": "add-to-bundle", "isCollection": true, "@odata.type": "microsoft.graph.driveItem", "tags": "onedrive.only" } -->

```http
POST https://graph.microsoft.com/beta/drive/bundles/{bundle-id}/children
Content-Type: application/json

{
  "id": "123456!87"
}
```

### Response

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Add items to an existing bundle.",
  "keywords": "",
  "section": "documentation"
} -->


