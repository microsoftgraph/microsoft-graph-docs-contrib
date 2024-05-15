---
title: "List driveRestoreArtifact"
description: "Get a list of the driveRestoreArtifact and their properties for an oneDriveForBusinessRestoreSession for the tenant"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# List driveRestoreArtifact

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all the [driveRestoreArtifact](../resources/driverestoreartifact.md) for an [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md) for the tenant.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onedriveforbusinessrestoresession-list-driverestoreartifacts-permissions"
}
-->
<!-- [!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessrestoresession-list-driverestoreartifacts-permissions.md)] -->

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|BackupRestore-Restore.Read.All|BackupRestore-Restore.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|BackupRestore-Restore.Read.All|BackupRestore-Restore.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/oneDriveForBusinessRestoreSessions/{oneDriveForBusinessRestoreSessionId}/driveRestoreArtifacts
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [driveRestoreArtifact](../resources/driverestoreartifact.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_driverestoreartifact"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessRestoreSessions/{oneDriveForBusinessRestoreSessionId}/driveRestoreArtifacts
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.backupRestore.driveRestoreArtifact)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.backupRestore.driveRestoreArtifact",
      "id": "a558944c-e98a-ae56-cc8e-dc6aaf63fd09",
      "destinationType": "String",
      "status": "String",
      "startDateTime": "String (timestamp)",
      "completionDateTime": "String (timestamp)",
      "error": {
        "@odata.type": "microsoft.graph.publicError"
      },
      "restoredSiteId": "String",
      "restoredSiteName": "String",
      "restoredSiteWebUrl": "String"
    }
  ]
}
```

