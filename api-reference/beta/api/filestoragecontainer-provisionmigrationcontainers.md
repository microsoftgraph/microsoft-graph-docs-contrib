---
title: "fileStorageContainer: provisionMigrationContainers"
description: "Provision sharePointMigrationContainerInfo"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# fileStorageContainer: provisionMigrationContainers

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provision SharePoint-managed Azure Blob Containers as temporary storage for migration content and metadata.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainer-list-migrationjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-provisionmigrationcontainers-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storage/fileStorage/containers/{fileStorageContainerId}/provisionMigrationContainers
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [sharePointMigrationContainerInfo](../resources/sharepointmigrationcontainerinfo.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.provisionmigrationcontainers"
}
-->
``` http
POST /storage/fileStorage/containers/{fileStorageContainerId}/provisionMigrationContainers
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointMigrationContainerInfo"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.migrationContainerInfo",
  "dataContainerUri": "https://spoxxx.blob.core.windows.net/data?sp=rw&sig=",
  "metadataContainerUri": "https://spoxxx.blob.core.windows.net/metadata?sp=rw&sig=",
  "encryptionKey": "AES-256-CBC encryption key"
}
```
