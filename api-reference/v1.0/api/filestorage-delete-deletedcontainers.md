---
title: "Remove deleted fileStorageContainer"
description: "Remove a deleted fileStorageContainer object."
author: "harmoneddie"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 11/14/2024
---

# Remove deleted fileStorageContainer

Namespace: microsoft.graph

Permanently remove a [fileStorageContainer](../resources/filestoragecontainer.md) from the deleted container collection. Removing a file storage container with this API permanently removes it from the deleted container collection. Therefore, it can't be restored later. 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestorage-delete-deletedcontainers-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-delete-deletedcontainers-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /storage/fileStorage/deletedContainers/{containerId}
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
  "name": "remove_deleted_filestoragecontainer"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/storage/fileStorage/deletedContainers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z
```
---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
}
-->
``` http
HTTP/1.1 204 No Content
```

