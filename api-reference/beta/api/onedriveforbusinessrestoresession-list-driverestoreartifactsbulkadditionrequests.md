---
title: "List driveRestoreArtifactsBulkAdditionRequests"
description: "Get a list of the driveRestoreArtifactsBulkAdditionRequest in a OnedriveForBusiness Restore Session."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 12/11/2024
---

# List driveRestoreArtifactsBulkAdditionRequests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) objects associated with a [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md).
The `drives` fields are deliberately omitted from the response body in order to limit the response size.
## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onedriveforbusinessrestoresession-list-driverestoreartifactsbulkadditionrequests-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessrestoresession-list-driverestoreartifactsbulkadditionrequests-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/oneDriveForBusinessRestoreSessions/{oneDriveForBusinessRestoreSessionId}/driveRestoreArtifactsBulkAdditionRequests
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_driverestoreartifactsbulkadditionrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessRestoreSessions/493635f0-b8c0-4c7f-bcb7-b20c85d97efe/driveRestoreArtifactsBulkAdditionRequests
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.driveRestoreArtifactsBulkAdditionRequest",
      "value": [
        {
          "id": "4437afcf-e520-463c-90a7-ca96401d8039",
            "drives": [],
            "directoryObjectIds": [],
            "protectionUnitIds": [],
            "protectionTimePeriod": {
                "startDateTime": "2021-01-01T00:00:00Z",
                "endDateTime": "2021-01-08T00:00:00Z"
            },
            "destinationType": "new",
            "tags": "fastRestore",
             "restorePointPreference": "latest",
             "displayName": "UserDrive-BulkRestoreArtifacts",
            "status": "CompletedWithErrors",
            "createdDateTime": "2023-09-29T10:36:44.4021389+00:00",
            "createdBy": "",
            "lastModifiedDateTime": "2023-09-29T10:36:44.4021389+00:00",
            "lastModifiedBy": "",
            "error": {
                "code": "BulkRestoreArtifactsNotResolved",
                "message": "Errors while resolving restore artifacts",
                "details": [
                    {
                        "code": "UserNotBackedup",
                        "message": "Email address 'user0@contoso.com' has not been backed up",
                        "target": "user0@contoso.com"
                    }
                ]
            }
        }
      ]
}
```

