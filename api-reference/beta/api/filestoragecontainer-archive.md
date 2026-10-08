---
title: "fileStorageContainer: archive"
description: "Archive an active fileStorageContainer."
author: "singhman-msft"
ms.date: 11/15/2024
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# fileStorageContainer: archive

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Archive an active [fileStorageContainer](../resources/filestoragecontainer.md).

This action updates the [archivalDetails](../resources/sitearchivaldetails.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_archive" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-archive-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

> [!NOTE]
> When delegated permissions are used, only members who are assigned the `PrincipalOwner` or `Owner` role can call this method.

## HTTP request

```http
POST /storage/fileStorage/containers/{containerId}/archive
```

## Request body

Don't supply a request body for this method.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "archive_fileStorageContainer",
  "sampleKeys": ["b!d2XNj_LW80yZbxDjj4Uj4E1ZFa6_76xEroXu_lX_DFE59ZD-2EcGRZlA0R8Vm3f0"]
}
-->
```http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!d2XNj_LW80yZbxDjj4Uj4E1ZFa6_76xEroXu_lX_DFE59ZD-2EcGRZlA0R8Vm3f0/archive
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/archive-filestoragecontainer-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/archive-filestoragecontainer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/archive-filestoragecontainer-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/archive-filestoragecontainer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/archive-filestoragecontainer-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/archive-filestoragecontainer-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
