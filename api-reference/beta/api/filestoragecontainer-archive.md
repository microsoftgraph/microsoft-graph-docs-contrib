---
title: "fileStorageContainer: archive"
description: "Archive an active fileStorageContainer."
author: "guptasandeep"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# title: "fileStorageContainer: archive"

Archive an active [fileStorageContainer](../resources/filestoragecontainer.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_archive" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-archive-permissions.md)]

## HTTP request

```http
POST /storageContainers/{containerId}/archive
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "archive_fileStorageContainer"
}
-->
```http
POST https://graph.microsoft.com/beta/storageContainers/{containerId}/archive
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
