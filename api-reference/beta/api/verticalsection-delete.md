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

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "verticalsection_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/verticalsection-delete-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/verticalSection
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Do not supply a request body with this method.

## Response

If successful, this call returns a `204 No Content`. It doesn't return anything in the response body.

If the vertical section is not found, this method returns `404 Not Found`.

## Example

<!-- { "blockType": "request", "name": "delete-verticalSection", "scopes": "sites.readwrite.all" } -->

### Request

<!-- { "blockType": "ignored" } -->

```http
DELETE https://graph.microsoft.com/beta/sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/verticalSection
```
### Response

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```
