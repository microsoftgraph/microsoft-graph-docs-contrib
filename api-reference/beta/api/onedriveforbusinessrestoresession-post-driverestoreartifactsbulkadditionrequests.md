---
title: "Create driveRestoreArtifactsBulkAdditionRequest"
description: "Create a driveRestoreArtifactsBulkAdditionRequest object associated with a oneDriveForBusinessRestoreSession."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 12/11/2024
---

# Create driveRestoreArtifactsBulkAdditionRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object associated with a [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md).

The initial status upon creation of the restore session is `active`. When all the drives are added to the corresponding OneDrive restore session and the restore session is activated, the status becomes `completed`. If any failures are encountered during resource resolution, the status of the restore session becomes `completedWithErrors`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onedriveforbusinessrestoresession-post-driverestoreartifactsbulkadditionrequests-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessrestoresession-post-driverestoreartifactsbulkadditionrequests-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/oneDriveForBusinessRestoreSessions/{oneDriveForBusinessRestoreSessionId}/driveRestoreArtifactsBulkAdditionRequests
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object in the response body.

## Examples

### Request

The following example shows a request that adds a list of drives to the specified Onedrive for work or school restore session in a bulk operation.
<!-- {
  "blockType": "request",
  "name": "create_driverestoreartifactsbulkadditionrequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessRestoreSessions/493635f0-b8c0-4c7f-bcb7-b20c85d97efe/driveRestoreArtifactsBulkAdditionRequests
Content-Type: application/json

{
  "displayName": "ODB-BulkRestoreArtifacts",
  "drives": [
    "contoso1@micorosft.com",
    "consotos2@microsoft.com",
    "contoso3@microsoft.com"
  ],
  "directoryObjectIds": [],
  "protectionUnitIds": [],
  "protectionTimePeriod": {
    "startDateTime": "2021-01-01T00:00:00Z",
    "endDateTime": "2021-01-08T00:00:00Z"
  },
  "destinationType": "new",
  "tags": "fastRestore",
  "restorePointPreference": "latest"
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveRestoreArtifactsBulkAdditionRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "/solutions/backupRestore/$metadata#siteRestoreArtifactsBulkAdditionRequest/$entity",
  "id": "9cf59538-5289-4024-9fa4-9c6c2b39aaa6",
  "destinationType": "new",
  "tags": "fastRestore",
  "restorePointPreference": "latest",
  "displayName": "ODB-BulkRestoreArtifacts",
  "status": "active",
  "createdDateTime": "2024-12-03T13:09:46.3725247Z",
  "lastModifiedDateTime": "2024-12-03T13:09:46.3725247Z",
  "drives": [],
  "protectionTimePeriod": {
    "startDateTime": "2024-11-26T00:00:00Z",
    "endDateTime": "2024-12-03T00:00:00Z"
  },
  "createdBy": {
    "user": {
      "identity": "fb70be35-8c8e-4c8a-b55d-f8cd95c5e23a"
    }
  },
  "lastModifiedBy": {
    "user": {
      "identity": "fb70be35-8c8e-4c8a-b55d-f8cd95c5e23a"
    }
  }
}
```

