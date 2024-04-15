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
DELETE /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/webParts/{webpart-id}
DELETE /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/verticalSection/webparts/{webpart-index}
DELETE /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontal-section-id}/columns/{horizontal-section-column-id}/webparts/{webpart-index}
```
## Request headers

| Name       | Value | Description
|:-----------|:------|:--------------------------------------------------------
|Authorization|Bearer {token}.| Required|
| _if-match_ | etag  | If this request header is included and the eTag provided does not match the current tag on the item, a `412 Precondition Failed` response is returned and the item will not be deleted.

## Request body

Don't supply a request body with this method.

## Response

If successful, this method returns a `204 No Content`. It does not return anything in the response body.

## Example

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "delete-webpart", "scopes": "sites.readwrite.all" } -->

```http
DELETE https://graph.microsoft.com/v1.0/sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pages/df69e386-6c58-4df2-afc0-ab6327d5b202/microsoft.graph.sitePage/webParts/29c08ca7-7f16-4c97-ba05-ea8d2850fc0e
```

---

### Response

The following example shows the response.

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
