---
title: "List mailboxRestoreArtifacts"
description: "Get a list of the mailboxRestoreArtifact objects that are associated with an exchangeRestoreSession."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 11/10/2024
---

# List mailboxRestoreArtifacts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) objects that are associated with an [exchangeRestoreSession](../resources/exchangerestoresession.md) in a tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "exchangerestoresession_list_mailboxrestoreartifacts" } -->
[!INCLUDE [permissions-table](../includes/permissions/exchangerestoresession-list-mailboxrestoreartifacts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/exchangeRestoreSessions/{exchangeRestoreSessionId}/mailboxRestoreArtifacts
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) objects in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "mailboxrestoreartifact_list"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/exchangeRestoreSessions/845457dc-4bb2-4815-bef3-8628ebd1952e/mailboxRestoreArtifacts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/mailboxrestoreartifact-list-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/mailboxrestoreartifact-list-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/mailboxrestoreartifact-list-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/mailboxrestoreartifact-list-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/mailboxrestoreartifact-list-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/mailboxrestoreartifact-list-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/mailboxrestoreartifact-list-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.mailboxRestoreArtifact)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.nextLink": "/solutions/backupRestore/exchangeRestoreSessions/845457dc-4bb2-4815-bef3-8628ebd1952e/mailboxRestoreArtifacts?$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
  "value": [
    {
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18c",
      "destinationType": "inPlace",
      "status": "succeeded",
      "startDateTime": "2023-12-04T12:18:55.2117521Z",
      "completionDateTime": "2023-12-04T13:22:12.7209691Z",
      "restoredFolderId": "0bdb38aa-5ad4-43ae-b63d-54426c97caa3",
      "restoredFolderName": "testmailbox101",
      "restoredItemCount": 5,
      "restorePoint": {
          "id": "ffd2687a-f507-4a82-9dff-2fa78cfdaa41_1801645000_12_2",
          "protectionDateTime": "2023-12-04T00:00:00Z",
          "expirationDateTime": "2023-12-18T00:00:00Z"
      }
    },
    {
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18d",
      "destinationType": "new",
      "status": "succeeded",
      "startDateTime": "2024-02-10T12:18:55.2117521Z",
      "completionDateTime": "2024-02-10T13:22:12.7209691Z",
      "restoredFolderId": "f8bb7c43-dabd-4300-a56a-510f093bc537",
      "restoredFolderName": "testmailbox102",
      "restoredItemCount": 10,
      "restorePoint": {
          "id": "86ba0fa7-db56-4c70-bf47-62adafefc0ee_1801645000_12_2",
          "protectionDateTime": "2024-02-10T00:00:00Z",
          "expirationDateTime": "2024-02-24T00:00:00Z"
      }
    }
  ]
}
```

