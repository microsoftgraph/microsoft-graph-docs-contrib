---
title: "Update exchangeRestoreSession"
description: "Update the properties of an Exchange restore session."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 09/10/2024
---

# Update exchangeRestoreSession

Namespace: microsoft.graph

Update the properties of an [exchangeRestoreSession](../resources/exchangerestoresession.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "exchangerestoresession_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/exchangerestoresession-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/backupRestore/exchangeRestoreSessions/{exchangeRestoreSessionId}
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
|mailboxRestoreArtifacts|[mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) collection|A collection of [mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) objects. Required.|

To remove an **exchangeRestoreSession**, specify the @removed annotation in the request body for the restore point artifact with the ID of the [mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md).

## Response

If successful, this method returns a `200 OK` response code and an updated [exchangeRestoreSession](../resources/exchangerestoresession.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "exchangerestoresession_update"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/solutions/backupRestore/exchangeRestoreSessions/2b814d8c-71fd-4d00-a01a-31850bc5b32c
Content-Type: application/json

{
  "mailboxRestoreArtifacts@delta": [
    {
      "restorePoint": { "id": "1b014d8c-71fe-4d00-a01a-31850bc5b32c" }, //Create a new mailbox restore artifact and add it under the Restore Session.
      "destinationType": "inPlace"
    },
    {
      "restorePoint": { "id": "2b014d8c-71fe-4d00-a01a-31850bc5b32" },
      "destinationType": "inPlace"
    },
    {
      "restorePoint": { "id": "3b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "inPlace"
    },
    {
      "restorePoint": { "id": "4b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "inPlace"
    },
    {
      "@removed": {
        "reason": "changed"
      },
      "id": "99954f18-c8ec-4b62-85bf-cdf3b70b140e"
    },
    {
      "@removed": {
        "reason": "changed"
      },
      "id": "4267e382-71a9-4c07-bef7-bda97e09c0d2"
    },
    {
      "@removed": {
        "reason": "changed"
      },
      "id": "3667e382-71a9-4c07-bef7-bda97e09c0d2"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/exchangerestoresession-update-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/exchangerestoresession-update-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/exchangerestoresession-update-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/exchangerestoresession-update-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/exchangerestoresession-update-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/exchangerestoresession-update-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.exchangeRestoreSession"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "mailboxRestoreArtifacts@delta": [
    {
      "id": "89014d8c-71fe-4d00-a01a-31850bc5b32c",
      "restorePoint": { "id": "1b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "inPlace",
      "status": "added",
      "createdDateTime": "2015-06-19T12:01:03.45Z"
    },
    {
      "id": "67014d8c-71fe-4d00-a01a-31850bc5b32c",
      "restorePoint": { "id": "2b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "inPlace",
      "status": "added",
      "createdDateTime": "2015-06-19T12:01:03.45Z"
    },
    {
      "id": "56014d8c-71fe-4d00-a01a-31850bc5b32c",
      "restorePoint": { "id": "3b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "inPlace",
      "status": "added",
      "createdDateTime": "2015-06-19T12:01:03.45Z"
    },
    {
      "id": "32014d8c-71fe-4d00-a01a-31850bc5b32c",
      "restorePoint": { "id": "4b014d8c-71fe-4d00-a01a-31850bc5b32c" },
      "destinationType": "inPlace",
      "status": "added",
      "createdDateTime": "2015-06-19T12:01:03.45Z"
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

