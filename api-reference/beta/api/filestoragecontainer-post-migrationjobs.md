---
title: "Create migrationJob"
description: "Create a new migrationJob object."
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Create migrationJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)] local to a [fileStorageContainer](../resources/filestoragecontainer.md). The migration is queued for later processing in a separate timer job.

Create a new [migrationJob](../resources/migrationjob.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainer-post-migrationjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-post-migrationjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storage/fileStorage/containers/{fileStorageContainerId}/migrationJobs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [migrationJob](../resources/migrationjob.md) object.

You can specify the following properties when creating a **migrationJob**.

|Property|Type|Description|
|:---|:---|:---|
|containerInfo|[migrationContainerInfo](../resources/migrationcontainerinfo.md)| The intermediate storage to temporarily store the file content and metadata. Required.|

## Response

If successful, this method returns a `201 Created` response code and job ID in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_migrationjob_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/{fileStorageContainerId}/migrationJobs
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.migrationJob",
  "containerInfo": {
    "@odata.type": "microsoft.graph.migrationContainerInfo",
    "dataContainerUri": "https://spoxxx.blob.core.windows.net/data?sp=rw&sig=",
    "metadataContainerUri": "https://spoxxx.blob.core.windows.net/metadata?sp=rw&sig=",
    "encryptionKey": "base64 encoded key for AES-256-CBC encryption"
  }
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.migrationJob",
  "id": "31090ce2-3b99-fa40-7ec5-46ebeeb5900b",
  "containerInfo": {
    "@odata.type": "microsoft.graph.migrationContainerInfo"
  }
}
```
