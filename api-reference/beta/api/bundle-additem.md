---
author: "JeremyKelley"
title: "Add item to a bundle"
description: "Add item to a bundle of driveItems."
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Add item to a bundle

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json. Required.|

## Request body

In the request body, supply a JSON representation of a [driveItem][] object.

## Response

If successful, this method returns a `204 No Content` response code.

For information about error responses, see [Microsoft Graph error responses and resource types][error-response].

## Example

### Request

The following is an example of a request that adds an existing item to the specified bundle.


# [HTTP](#tab/http)
<!-- {"blockType": "request", "name": "add-to-bundle", "isCollection": true, "@odata.type": "microsoft.graph.driveItem", "tags": "onedrive.only" } -->

```http
POST https://graph.microsoft.com/beta/drive/bundles/{bundle-id}/children
Content-Type: application/json

{
  "id": "123456!87"
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/add-to-bundle-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-to-bundle-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

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


