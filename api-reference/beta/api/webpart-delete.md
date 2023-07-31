---
title: "Delete webPart"
description: "Delete a webPart object."
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# Delete webPart

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [webPart](../resources/webpart.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.Read.All, Sites.ReadWrite.All         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.Read.All, Sites.ReadWrite.All         |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
DELETE /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/webParts/{webPartId}
DELETE /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/verticalSection/webparts/{webPartIndex}
DELETE /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}/columns/{horizontalSectionColumnId}/webparts/{webPartIndex}
```
## Request headers

| Name       | Value | Description
|:-----------|:------|:--------------------------------------------------------
|Authorization|Bearer {token}.| Required|
| _if-match_ | etag  | If this request header is included and the eTag provided does not match the current tag on the item, a `412 Precondition Failed` response is returned and the item will not be deleted.

## Request body

Do not supply a request body with this method.

## Response

If successful, this method returns a `204 No Content`. It does not return anything in the response body.

## Example

### Request

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "delete-webpart", "scopes": "sites.readwrite.all" } -->

```http
DELETE https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/webParts/{webPartId}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-webpart-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-webpart-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

<!--
{
  "type": "#page.annotation",
  "description": "Delete a webpart object.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "WebParts/Delete",
  "suppressions": []
}
-->
