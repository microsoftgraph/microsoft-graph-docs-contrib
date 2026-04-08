---
title: "fileStorageContainer: unarchive"
description: "Unarchive an archived fileStorageContainer."
author: "singhman-msft"
ms.date: 11/15/2024
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# fileStorageContainer: unarchive

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unarchive an archived [fileStorageContainer](../resources/filestoragecontainer.md).

This action updates the [archivalDetails](../resources/sitearchivaldetails.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_unarchive" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-unarchive-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

> [!NOTE]
> When delegated permissions are used, only members who are assigned the `PrincipalOwner` or `Owner` role can call this method.

## HTTP request

```http
POST /storage/fileStorage/containers/{containerId}/unarchive
```

## Request body

Don't supply a request body for this method.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `202 Accepted` response code. The response also contains a `Location` header, which contains the location of the container that is unarchived. To check the status of the unarchive operation, make a GET request to the location URL.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unarchive_fileStorageContainer",
  "sampleKeys": ["b!d2XNj_LW80yZbxDjj4Uj4E1ZFa6_76xEroXu_lX_DFE59ZD-2EcGRZlA0R8Vm3f0"]
}
-->
```http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!d2XNj_LW80yZbxDjj4Uj4E1ZFa6_76xEroXu_lX_DFE59ZD-2EcGRZlA0R8Vm3f0/unarchive
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/unarchive-filestoragecontainer-javascript-snippets.md)]
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
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/storage/fileStorage/containers/b!d2XNj_LW80yZbxDjj4Uj4E1ZFa6_76xEroXu_lX_DFE59ZD-2EcGRZlA0R8Vm3f0
```
