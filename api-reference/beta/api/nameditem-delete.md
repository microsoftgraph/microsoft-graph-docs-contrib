---
title: "Delete namedItem"
description: Delete a workbookNamedItem object
author: isvargasmsft
ms.localizationpriority: medium
ms.prod: workbooks-and-charts
doc_type: apiPageType
---

# Delete namedItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [workbookNamedItem](../resources/workbooknameditem.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Files.ReadWrite.Selected, Files.ReadWrite.AppFolder, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All    |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All    |
|Application | Files.ReadWrite.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All   |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /me/drive/items/{id}/workbook/names/{name}
DELETE /me/drive/root:/{item-path}:/workbook/names/{name}
DELETE /me/drive/items/{id}/workbook/worksheets/{id|name}/names/{name}
DELETE /me/drive/root:/{item-path}:/workbook/worksheets/{id|name}/names/{name}
```

## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |
| Workbook-Session-ID  | Workbook session ID that determines if changes are persisted or not. Optional.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content`. It does not return anything in the response body.


## Example
### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_nameditem"
}-->

```http
DELETE https://graph.microsoft.com/beta/me/drive/items/{itemID}/workbook/names/{name}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-nameditem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-nameditem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-nameditem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-nameditem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-nameditem-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "isEmpty": true
} -->
```http
HTTP/1.1 204 No Content
```
