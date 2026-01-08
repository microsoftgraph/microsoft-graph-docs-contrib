---
title: "Create mailboxRestoreArtifactsBulkAdditionRequest"
description: "Create a new mailboxRestoreArtifactsBulkAdditionRequest object associated with an exchangeRestoreSession."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 12/11/2024
---

# Create mailboxRestoreArtifactsBulkAdditionRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object associated with an [exchangeRestoreSession](../resources/exchangerestoresession.md).

The following steps describe how to create and manage an **exchangeRestoreSession** with bulk artifact additions:

1. Create a new [exchangeRestoreSession](../resources/exchangerestoresession.md) with empty payload.
1. Create a new [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object associated with an [exchangeRestoreSession](../resources/exchangerestoresession.md).
1. Get the status of the [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) for the Exchange restore session. The initial status upon creation is `active` and remains in this state until the [exchangeRestoreSession](../resources/exchangerestoresession.md) is activated.
1. Activate the [exchangeRestoreSession](../resources/exchangerestoresession.md) created in the first step.
1. Monitor the status of the [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md). When all the emails are added to the corresponding [exchangeRestoreSession](../resources/exchangerestoresession.md), the status of the [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) changes to `completed`. If any failures occur during resource resolution, the status changes to `completedWithErrors`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

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

You can specify the following properties when you create a **mailboxRestoreArtifactsBulkAdditionRequest** object.

|Property|Type|Description|
|:---|:---|:---|
|directoryObjectIds|String collection|The list of directory object IDs. Optional.|
|mailboxes|String collection|The list of email addresses. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request that adds a list of mailboxes to the specified Exchange restore session in a bulk operation.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_mailboxrestoreartifactsbulkadditionrequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/exchangeRestoreSessions/dc3a3fc8-eb4b-45eb-9ca6-4955696344b8/mailboxRestoreArtifactsBulkAdditionRequests
Content-Type: application/json

{
  "displayName": "Usermailbox-BulkRestoreArtifacts",
  "mailboxes": [
    "contoso1@micorosft.com",
    "consotos2@microsoft.com",
    "contoso3@microsoft.com"
  ],
  "protectionTimePeriod": {
    "startDateTime": "2021-01-01T00:00:00Z",
    "endDateTime": "2021-01-08T00:00:00Z"
  },
  "destinationType": "new",
  "tags": "fastRestore",
  "restorePointPreference": "latest"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-mailboxrestoreartifactsbulkadditionrequest-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-mailboxrestoreartifactsbulkadditionrequest-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-mailboxrestoreartifactsbulkadditionrequest-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-mailboxrestoreartifactsbulkadditionrequest-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-mailboxrestoreartifactsbulkadditionrequest-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-mailboxrestoreartifactsbulkadditionrequest-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-mailboxrestoreartifactsbulkadditionrequest-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

