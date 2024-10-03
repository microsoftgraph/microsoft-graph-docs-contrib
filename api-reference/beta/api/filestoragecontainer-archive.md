---
title: "Archive fileStorageContainer"
description: "Archive a fileStorageContainer."
author: "guptasandeep"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Archive fileStorageContainer

Archive a [fileStorageContainer](../resources/filestoragecontainer.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- this will be auto generated -->

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

If successful, this action returns a `204 No Content` response code.

## Examples

The following example shows a request.

```http
POST https://graph.microsoft.com/beta/storageContainers/{containerId}/archive
```

## Response

The following example shows the response.

```http
HTTP/1.1 204 No Content
```