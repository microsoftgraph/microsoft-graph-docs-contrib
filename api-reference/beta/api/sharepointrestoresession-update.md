---
title: "Update sharePointRestoreSession"
description: "Update the properties of a SharePoint Restore Session."
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Update sharePointRestoreSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [sharePointRestoreSession](../resources/sharepointrestoresession.md).
To remove, specify the @removed annotation in the request body for the respective Restore Point Artifact together with the Id of the [siteRestoreArtifact](../resources/siterestoreartifact.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointrestoresession-update-permissions"
}
-->
<!-- [!INCLUDE [permissions-table](../includes/permissions/sharepointrestoresession-update-permissions.md)] -->

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
PATCH /solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|siteRestoreArtifacts|[siteRestoreArtifact](../resources/siterestoreartifact.md) collection|Collection of [siteRestoreArtifact](../resources/siterestoreartifact.md)|
<!-- |id|String|The unique identifier of the restore session updated|
|status|[restoreSessionStatus](../resource/restoresessionbase.md#restoreSessionStatus-values)|Status of the restore session. It is an aggregated status of restore artifacts.The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|
|completedDateTime|DateTimeOffset|The time of creation of the restore session.|
|createdBy|identitySet|The identity of person who created the restore session.|
|createdDateTime|DateTimeOffset|The time of completion of the restore session.|
|error|publicError|Error details will be populated here, if the restore session fails or completed with error.|
|lastModifiedBy|identitySet|Identity of the person who last modified this restore session.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this restore session.| -->



## Response

If successful, this method returns a `200 OK` response code and an updated [sharePointRestoreSession](../resources/sharepointrestoresession.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sharepointrestoresession_update"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}
Content-Type: application/json

{
  "siteRestoreArtifacts@delta": [
    {
      "restorePoint": { "@odata.id": "1b014d8c-71fe-4d00-a01a-31850bc5b32c" }, //Create a new site restore artifact and add it under the Restore Session.
      "destinationType": "new"
    },
    {
      "restorePoint": { "@odata.id": "2b014d8c-71fe-4d00-a01a-31850bc5b32" },
      "destinationType": "new"
    },
    {
      "restorePoint": { "@odata.id": "3b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "new"
    },
    {
      "restorePoint": { "@odata.id": "4b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "new"
    },
    {
      "@removed": {
        "reason": "changed"
      },
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18a"
    },
    {
      "@removed": {
        "reason": "changed"
      },
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18b"
    },
    {
      "@removed": {
        "reason": "changed"
      },
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18c"
    }
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "siteRestoreArtifacts@delta": [
    {
      "id": "89014d8c-71fe-4d00-a01a-31850bc5b32c",
      "restorePoint": { "@odata.id": "1b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "new",
      "status": "added",
      "createdDateTime": "2015-06-19T12-01-03.45Z"
    },
    {
      "id": "67014d8c-71fe-4d00-a01a-31850bc5b32c",
      "restorePoint": { "@odata.id": "2b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "new",
      "status": "added",
      "createdDateTime": "2015-06-19T12-01-03.45Z"
    },
    {
      "id": "56014d8c-71fe-4d00-a01a-31850bc5b32c",
      "restorePoint": { "@odata.id": "3b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "new",
      "status": "added",
      "createdDateTime": "2015-06-19T12-01-03.45Z"
    },
    {
      "id": "32014d8c-71fe-4d00-a01a-31850bc5b32c",
      "restorePoint": { "@odata.id": "4b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "new",
      "status": "added",
      "createdDateTime": "2015-06-19T12-01-03.45Z"
    },
    {
      "id": "99954f18-c8ec-4b62-85bf-cdf3b70b140e",
      "restorePoint": { "@odata.id": "7b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "new",
      "status": "added",
      "createdDateTime": "2015-06-19T12-01-03.45Z"
    },
    {
      //Error scenario
      "@contentId": "3467e382-71a9-4c07-bef7-bda97e09c0d2", // To add context and more traceability.
      "@Core.DataModificationException": {
        "info": {
          "code": "Invalid",
          "message": "The identifier to be removed from the Restore Session does not exist"
        },
        "failedOperation": "remove",
        "responseCode": 409
      },
      "id": "4267e382-71a9-4c07-bef7-bda97e09c0d2"
    }
  ]
}
```

