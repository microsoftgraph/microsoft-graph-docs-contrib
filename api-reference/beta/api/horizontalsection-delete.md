---
title: 'Delete horizontalSection'
description: 'Delete a horizontal section from a page.'
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# Delete horizontalSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a [horizontalSection](../resources/horizontalSection.md) from a [sitePage](../resources/sitepage.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "horizontalsection_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/horizontalsection-delete-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Do not supply a request body with this method.

## Response

If successful, this call returns a `204 No Content` response to indicate that the resource was deleted and there was nothing to return.

If the target horizontal section is not found, this method returns `404 Not Found`.

## Example

<!-- { "blockType": "request", "name": "delete-horizontalSection", "scopes": "files.readwrite sites.readwrite.all" } -->

### Request

<!-- { "blockType": "ignored" } -->

``` http
DELETE https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}
```

ve
### Response

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```
