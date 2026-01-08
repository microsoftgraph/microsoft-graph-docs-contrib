---
title: "fileStorageContainer: restore"
description: "Restore deleted fileStorageContainer from the deleted container collection."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 05/20/2024
---

# fileStorageContainer: restore

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a deleted [fileStorageContainer](../resources/filestoragecontainer.md) from the deleted container collection.  

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_restore" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-restore-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /storage/fileStorage/deletedContainers/{containerId}/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [fileStorageContainer](../resources/filestoragecontainer.md) in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.restore"
}
-->
```http
POST https://graph.microsoft.com/beta/storage/fileStorage/deletedContainers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/restore
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/filestoragecontainerthisrestore-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/filestoragecontainerthisrestore-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/filestoragecontainerthisrestore-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/filestoragecontainerthisrestore-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/filestoragecontainerthisrestore-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/filestoragecontainerthisrestore-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainer"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.fileStorageContainer",
  "id": "b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z",
  "displayName": "My Application Storage Container",
  "containerTypeId": "91710488-5756-407f-9046-fbe5f0b4de73",
  "createdDateTime": "2021-11-24T15:41:52.347Z",
  "deletedDateTime": "2022-08-11T12:35:16.300Z"
}
```

