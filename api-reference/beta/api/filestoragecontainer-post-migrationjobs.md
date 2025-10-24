---
title: "Create sharePointMigrationJob"
description: "Create a new sharePointMigrationJob object that is scheduled to run at a later time to migrate content from an intermediary storage to the target fileStorageContainer."
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Create sharePointMigrationJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [sharePointMigrationJob](../resources/sharepointmigrationjob.md) object that is scheduled to run at a later time to migrate content from an intermediary storage to the target [fileStorageContainer](../resources/filestoragecontainer.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_post_migrationjobs" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-post-migrationjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /storage/fileStorage/containers/{fileStorageContainerId}/migrationJobs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [sharePointMigrationContainerInfo](../resources/sharepointmigrationcontainerinfo.md) object.

You can specify the following properties when you create a **sharePointMigrationContainerInfo** object.

|Property|Type|Description|
|:---|:---|:---|
|containerInfo|[sharePointMigrationContainerInfo](../resources/sharepointmigrationcontainerinfo.md)| The intermediate storage to temporarily store the file content and metadata. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [sharePointMigrationJob](../resources/sharepointmigrationjob.md) object in the response body.

## Examples

### Request

The following example shows how to create a **sharePointMigrationJob** that runs on the **fileStorageContainer** identified by the container ID `b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z`.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_migrationjob_from_filestoragecontainer"
}
-->
```http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/migrationJobs
Content-Type: application/json

{
  "containerInfo": {
    "dataContainerUri": "https://spoxxx.blob.core.windows.net/data?sp=rw&sig=",
    "metadataContainerUri": "https://spoxxx.blob.core.windows.net/metadata?sp=rw&sig=",
    "encryptionKey": "base64 encoded key for AES-256-CBC encryption"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-migrationjob-from-filestoragecontainer-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-migrationjob-from-filestoragecontainer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-migrationjob-from-filestoragecontainer-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-migrationjob-from-filestoragecontainer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-migrationjob-from-filestoragecontainer-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-migrationjob-from-filestoragecontainer-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointMigrationJob"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "31090ce2-3b99-fa40-7ec5-46ebeeb5900b"
}
```
