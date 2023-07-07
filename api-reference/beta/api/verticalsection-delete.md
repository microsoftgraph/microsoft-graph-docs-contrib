---
title: 'Delete verticalSection'
description: 'Delete a vertical section from a page.'
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# Delete verticalSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a [verticalSection](../resources/verticalSection.md) from a [sitePage](../resources/sitepage.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

>**Note:** To delete an item, the user must have granted the application write access to the item to be deleted.

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /sites/{site-id}/pages/{page-id}/canvasLayout/verticalSection
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer \{token\}. Required. |

## Request body

Do not supply a request body with this method.

## Response

If successful, this call returns a `204 No Content`. It does not return anything in the response body.

If the vertical section is not found, this method returns `404 Not Found`.

## Example

<!-- { "blockType": "request", "name": "delete-verticalSection", "scopes": "sites.readwrite.all" } -->

### Request

```http
DELETE /sites/{site-id}/pages/{page-id}/canvasLayout/verticalSection
```
### Response

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```