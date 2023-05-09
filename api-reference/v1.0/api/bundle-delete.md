---
author: "JeremyKelley"
title: "Delete bundle"
description: "Delete a bundle of driveItems."
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Delete bundle

Namespace: microsoft.graph

Delete a [bundle][] of driveItems by using its **id**.
Note that deleting a bundle using this method permanently deletes the bundle and does not move it to the Recycle Bin.
It does not, however, remove the items that were referenced by the bundle.
They will remain in their parent folders.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.                             |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All   |
|Application          | Not supported.                                           |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /drive/items/{bundle-id}
```

## Request headers

| Name          | Description  |
|:------------- |:------------ |
| Authorization | Bearer {token}. Required. |
| if-match      | eTag. Optional. If this request header is included and the eTag (or cTag) provided does not match the current tag on the bundle, a `412 Precondition Failed` response is returned and the bundle will not be deleted.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

For information about error responses, see [Microsoft Graph error responses and resource types][error-response].

## Example

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "delete-bundle" } -->
```http
DELETE https://graph.microsoft.com/v1.0/drive/items/{bundle-id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-bundle-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-bundle-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-bundle-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-bundle-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-bundle-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-bundle-powershell-snippets.md)]
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
  "description": "Delete a bundle from OneDrive",
  "keywords": "delete,existing bundle,onedrive",
  "section": "documentation",
  "tocPath": "Bundles/Delete"
} -->


