---
title: "fileStorageContainer: unlock"
description: "Unlock a fileStorageContainer for users and application-only identities to allow the addition, updating, and deletion of content."
author: "javieralvarezchiang"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 10/04/2024
---

# fileStorageContainer: unlock

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unlock a [fileStorageContainer](../resources/filestoragecontainer.md) for users and application-only identities to allow the addition, updating, and deletion of content.

This action updates the value of the **lockState** property.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

When delegated permissions are used, only members in the `owner` role can call this method.

<!-- { "blockType": "permissions", "name": "filestoragecontainer_unlock" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-unlock-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

```http
POST /storage/fileStorage/containers/{containerId}/unlock
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
The following example shows how to unlock a **fileStorageContainer**.

```http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/unlock
```

### Response
The following example shows the response.

```http
HTTP/1.1 204 No Content
```

