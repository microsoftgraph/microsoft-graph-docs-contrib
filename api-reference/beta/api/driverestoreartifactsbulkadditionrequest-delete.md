---
title: "Delete driveRestoreArtifactsBulkAdditionRequest"
description: "Delete a driveRestoreArtifactsBulkAdditionRequest object associated with a oneDriveForBusinessRestoreSession."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 12/11/2024
---

# Delete driveRestoreArtifactsBulkAdditionRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object associated with a [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md)

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "driverestoreartifactsbulkadditionrequest-delete"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/driverestoreartifactsbulkadditionrequest-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /solutions/backupRestore/oneDriveForBusinessRestoreSessions/{oneDriveForBusinessRestoreSessionId}/driveRestoreArtifactsBulkAdditionRequests/{driveRestoreArtifactsBulkAdditionRequestId}
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

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_driverestoreartifactsbulkadditionrequest"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessRestoreSessions/d8078599-3b3c-468d-b6ff-adf161a42760/driveRestoreArtifactsBulkAdditionRequests/4437afcf-e520-463c-90a7-ca96401d8039
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

