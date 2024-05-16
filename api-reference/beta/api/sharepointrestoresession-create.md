---
title: "Create sharePointRestoreSession"
description: "Create a new SharePoint Restore Session."
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# Create sharePointRestoreSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [sharePointRestoreSession](../resources/sharepointrestoresession.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointrestoresession-create-permissions"
}
-->
<!-- [!INCLUDE [permissions-table](../includes/permissions/sharepointrestoresession-create-permissions.md)] -->

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
POST /solutions/backupRestore/sharePointRestoreSessions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [sharePointRestoreSession](../resources/sharepointrestoresession.md).

You can specify the following properties when creating a **sharePointRestoreSession**.

|Property|Type|Description|
 |:---|:---|:---|
 |siteRestoreArtifacts|[siteRestoreArtifact](../resources/siterestoreartifact.md) collection|Collection of [siteRestoreArtifact](../resources/siterestoreartifact.md)|
<!--|status|[restoreSessionStatus](../resources/sharepointrestoresession.md#restoresessionstatus-values)|Status of the restore session. It is an aggregated status of restore artifacts.The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|
|createdDateTime|DateTimeOffset|DateTimeOffset|The time of completion of the restore session. Inherited from [microsoft.graph.restoreSessionBase](../resources/restoresessionbase.md). Optional.|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|The identity of person who created the restore session. Inherited from [microsoft.graph.restoreSessionBase](../resources/restoresessionbase.md). Optional.|
|completedDateTime|DateTimeOffset|The time of creation of the restore session. Inherited from [microsoft.graph.restoreSessionBase](../resources/restoresessionbase.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this restore session. Inherited from [microsoft.graph.restoreSessionBase](../resources/restoresessionbase.md). Optional.|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|Identity of the person who last modified this restore session. Inherited from [microsoft.graph.restoreSessionBase](../resources/restoresessionbase.md). Optional.|
|error|[microsoft.graph.publicError](../resources/publicerror.md)|Error details will be populated here, if the restore session fails or completed with error. Inherited from [microsoft.graph.restoreSessionBase](../resources/restoresessionbase.md). Optional.| -->



## Response

If successful, this method returns a `201 Created` response code and a [sharePointRestoreSession](../resources/sharepointrestoresession.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sharepointrestoresession_create"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/sharePointRestoreSessions
Content-Type: application/json
{
  "siteRestoreArtifacts": [
    {
      "restorePoint": { "@odata.id": "1f1fccc3-a642-4f61-bf49-f37b9a888279" },
      "destinationType": "inPlace"
    },
    {
      "restorePoint": { "@odata.id": "1f1fccc3-a642-4f61-bf49-f37b9a888280" },
      "destinationType": "inPlace"
    }
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointRestoreSession"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": " /solutions/backupRestore/$metadata#restoreSessions/$entity",
  "@odata.id": "/solutions/backupRestore/sharepointRestoreSessions(61633878-8321-4950-bfaf-ed285bdd1461)",
  "@odata.type": "#microsoft.graph.sharepointRestoreSession",
  "id": "61633878-8321-4950-bfaf-ed285bdd1461",
  "status": "activating",
  "createdBy": {
    "application": {
      "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "displayName": "Microsoft Enhanced Restore"
    },
    "user": {
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "ABC"
    }
  },
  "createdDateTime": "2015-06-19T12-01-03.45Z",
  "lastModifiedBy": {
    "application": {
      "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "displayName": "Microsoft Enhanced Restore"
    },
    "user": {
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "DEF"
    }
  },
  "lastModifiedDateTime": "2015-06-19T12-01-03.45Z"
}
```

