---
title: "Create mailboxRestoreArtifactsBulkAdditionRequest"
description: "Create a new mailboxRestoreArtifactsBulkAdditionRequest object for an Exchange Restore Session."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Create mailboxRestoreArtifactsBulkAdditionRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxRestoreArtifactsBulkAdditionRequest.md) object associated with an [exchangeRestoreSession](../resources/exchangerestoresession.md)

The initial status upon creation of restore session is `active`. Once all the `mailboxes` are added into the corresponding Exchange restore session and the restore session is activated, the status becomes `completed`.
If there is any failures encountered while resource resolution, the status of restore session becomes `completedWithErrors`.
## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "exchangerestoresession-post-mailboxrestoreartifactsbulkadditionrequests-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/exchangerestoresession-post-mailboxrestoreartifactsbulkadditionrequests-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/exchangeRestoreSessions/{exchangeRestoreSessionId}/mailboxRestoreArtifactsBulkAdditionRequests
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object.
```json
{
  "displayName": "Usermailbox-BulkRestoreArtifacts",
  "mailboxes": [
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

## Response

If successful, this method returns a `201 Created` response code and a [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_mailboxrestoreartifactsbulkadditionrequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/exchangeRestoreSessions/dc3a3fc8-eb4b-45eb-9ca6-4955696344b8/mailboxRestoreArtifactsBulkAdditionRequests
Content-Type: application/json
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxRestoreArtifactsBulkAdditionRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "b4318e3a-3eae-4ce5-87f3-bad51e1527c4",
    "destinationType": "new",
    "tags": "fastRestore",
    "restorePointPreference": "latest",
    "displayName": "EXO-BulkRestoreArtifacts",
    "status": "active",
    "createdDateTime": "2024-12-03T13:17:19.8862272Z",
    "lastModifiedDateTime": "2024-12-03T13:17:19.8862272Z",
    "mailboxes": [],
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

