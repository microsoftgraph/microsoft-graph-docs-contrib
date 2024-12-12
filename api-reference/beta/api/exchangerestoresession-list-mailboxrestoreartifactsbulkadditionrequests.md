---
title: "List mailboxRestoreArtifactsBulkAdditionRequests"
description: "Get a list of the maiboxRestoreArtifactsBulkAdditionRequest in an Exchange Restore Session"
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 12/11/2024
---

# List mailboxRestoreArtifactsBulkAdditionRequests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [maiboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) objects associated with a [exchangeRestoreSession](../resources/exchangerestoresession.md).
The `mailboxes` fields are deliberately omitted from the response body in order to limit the response size.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "exchangerestoresession-list-mailboxrestoreartifactsbulkadditionrequests-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/exchangerestoresession-list-mailboxrestoreartifactsbulkadditionrequests-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/exchangeRestoreSessions/{exchangeRestoreSessionId}/mailboxRestoreArtifactsBulkAdditionRequests
```

## Optional query parameters

This method doesn't support the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_mailboxrestoreartifactsbulkadditionrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/exchangeRestoreSessions/dc3a3fc8-eb4b-45eb-9ca6-4955696344b8/mailboxRestoreArtifactsBulkAdditionRequests
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.mailboxRestoreArtifactsBulkAdditionRequest",
   "value": [
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
    ]   
}
```

