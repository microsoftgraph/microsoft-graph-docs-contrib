---
author: "JeremyKelley"
title: "Remove item from bundle"
description: "Remove item from a bundle of driveItems."
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Remove item from bundle

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove an item from a [bundle][].

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.                             |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All   |
|Application          | Not supported.                                           |

## HTTP request

```http
DELETE /drive/bundles/{bundle-id}/children/{item-id}
```

## Request headers

| Name          | Description  |
|:------------- |:------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

For information about error responses, see [Microsoft Graph error responses and resource types][error-response].

## Example

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {"blockType": "request", "name": "remove-from-bundle" } -->

```http
DELETE https://graph.microsoft.com/beta/drive/bundles/{bundle-id}/children/{item-id}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/remove-from-bundle-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/remove-from-bundle-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```


[bundle]: ../resources/bundle.md
[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Remove an item from a bundle.",
  "keywords": "",
  "section": "documentation"
} -->


