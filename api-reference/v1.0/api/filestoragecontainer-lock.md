---
title: "fileStorageContainer: lock"
description: "Lock a fileStorageContainer."
author: "harmoneddie"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 11/14/2024
---

# fileStorageContainer: lock

Namespace: microsoft.graph

Lock a [fileStorageContainer](../resources/filestoragecontainer.md) to prevent modifications to its contents.

This action updates the [lockState](../resources/enums.md#sitelockstate-values).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_lock" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-lock-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

> [!NOTE]
> When delegated permissions are used, only members who are assigned the `owner` role can call this method.

## HTTP request

``` http
POST /storage/fileStorage/containers/{containerId}/lock
```

## Request body
In the request body, you can optionally include a JSON representation of the **lockState** property.

```json
{
    "lockState": "lockedReadOnly"
}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows how to lock a fileStorageContainer.

``` http
POST https://graph.microsoft.com/v1.0/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/lock

{
    "lockState": "lockedReadOnly"
}
```

### Response
The following example shows the response.

``` http
HTTP/1.1 204 No Content
```

