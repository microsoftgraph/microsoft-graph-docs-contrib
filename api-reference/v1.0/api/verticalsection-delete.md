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
DELETE /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/verticalSection
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer \{token\}. Required. |

## Request body

Don't supply a request body with this method.

## Response

If successful, this call returns a `204 No Content`. It doesn't return anything in the response body.

If the vertical section isn't found, this method returns `404 Not Found`.

## Example

### Request

The following example shows a request.

<!-- { "blockType": "ignored" } -->

```http
DELETE https://graph.microsoft.com/v1.0/sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pages/df69e386-6c58-4df2-afc0-ab6327d5b202/microsoft.graph.sitePage/canvasLayout/verticalSection
```
### Response

The following example shows the response.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```