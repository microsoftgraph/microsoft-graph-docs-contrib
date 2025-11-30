---
title: "Get mailboxRestoreArtifactsBulkAdditionRequest"
description: "Get a mailboxRestoreArtifactsBulkAdditionRequest object by its ID, associated with an exchangeRestoreSession."
author: "nupur-munda"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 05/20/2025
---

# Get mailboxRestoreArtifactsBulkAdditionRequest

Namespace: microsoft.graph

Get a [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object by its **id**, associated with an [exchangeRestoreSession](../resources/exchangerestoresession.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailboxrestoreartifactsbulkadditionrequest-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailboxrestoreartifactsbulkadditionrequest-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/exchangeRestoreSessions/{exchangeRestoreSessionId}/mailboxRestoreArtifactsBulkAdditionRequests/{mailboxRestoreArtifactsBulkAdditionRequestId}
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

If successful, this method returns a `200 OK` response code and a [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_mailboxrestoreartifactsbulkadditionrequest"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/backupRestore/exchangeRestoreSessions/dc3a3fc8-eb4b-45eb-9ca6-4955696344b8/mailboxRestoreArtifactsBulkAdditionRequests/b4318e3a-3eae-4ce5-87f3-bad51e1527c4
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-mailboxrestoreartifactsbulkadditionrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-mailboxrestoreartifactsbulkadditionrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-mailboxrestoreartifactsbulkadditionrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-mailboxrestoreartifactsbulkadditionrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-mailboxrestoreartifactsbulkadditionrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-mailboxrestoreartifactsbulkadditionrequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-mailboxrestoreartifactsbulkadditionrequest-python-snippets.md)]
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
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.mailboxRestoreArtifactsBulkAdditionRequest",
  "mailboxes": [],
  "id": "b4318e3a-3eae-4ce5-87f3-bad51e1527c4",
  "destinationType": "new",
  "tags": "fastRestore",
  "restorePointPreference": "latest",
  "displayName": "EXO-BulkRestoreArtifacts",
  "status": "active",
  "createdDateTime": "2024-12-03T13:17:19.8862272Z",
  "lastModifiedDateTime": "2024-12-03T13:17:19.8862272Z",
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
