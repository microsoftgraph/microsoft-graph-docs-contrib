---
title: "Delete sharePointMigrationJob"
description: "Delete an existing sharePointMigrationJob object."
author: "wenzhou"
ms.date: 11/07/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Delete sharePointMigrationJob

Namespace: microsoft.graph

Delete an existing [sharePointMigrationJob](../resources/sharepointmigrationjob.md) object from a [fileStorageContainer](../resources/filestoragecontainer.md).

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainer-delete-migrationjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointmigrationjob-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /storage/fileStorage/containers/{fileStorageContainerId}/migrationJobs/{sharePointMigrationJobId}
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

The following example shows a request to delete a **sharePointMigrationJob** object identified by the job ID `7b04bfdd-5f8c-4bd9-97fa-a166a7922c61` that runs on the **fileStorageContainer** object identified by the container ID `b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z`.

<!-- {
  "blockType": "request",
  "name": "delete_sharepointmigrationjob"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/migrationJobs/7b04bfdd-5f8c-4bd9-97fa-a166a7922c61
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
