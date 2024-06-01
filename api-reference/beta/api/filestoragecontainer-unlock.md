---
title: "Unlock fileStorageContainer"
description: "Unlock a fileStorageContainer."
author: "javieralvarezchiang"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Unlock fileStorageContainer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unlock a [fileStorageContainer](../resources/filestoragecontainer.md) by updating the [lockState](../resources/enums.md#siteLockState-values). Only members in the `owner` role can call this method.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|FileStorageContainer.Selected|Not available.|

## HTTP request

``` http
POST /storageContainers/{containerId}/unlock
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows how to unlock a fileStorageContainer.

``` http
POST https://graph.microsoft.com/beta/storageContainers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/unlock
```

### Response
The following example shows the response.

``` http
HTTP/1.1 204 No Content
```

