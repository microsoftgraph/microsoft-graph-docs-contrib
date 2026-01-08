---
title: "Create exchangeRestoreSession"
description: "Create a new Exchange restore session object."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 11/10/2024
---

# Create exchangeRestoreSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [exchangeRestoreSession](../resources/exchangerestoresession.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|BackupRestore-Restore.ReadWrite.All|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|BackupRestore-Restore.ReadWrite.All|Not available.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/exchangeRestoreSessions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [exchangeRestoreSession](../resources/exchangerestoresession.md).

You can specify the following properties when you create an **exchangeRestoreSession** object.

|Property|Type|Description|
|:---|:---|:---|
|granularMailboxRestoreArtifact|[granularMailboxRestoreArtifact](../resources/granularmailboxrestoreartifact.md) collection|Collection of [granularMailboxRestoreArtifact](../resources/granularmailboxrestoreartifact.md) objects.|
|mailboxRestoreArtifacts|[mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) collection|Collection of [mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) objects.|

## Response

If successful, this method returns a `201 Created` response code and an [exchangeRestoreSession](../resources/exchangerestoresession.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Example 1: Create exchangeRestoreSession with mailboxRestoreArtifacts

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "exchangerestoresession_create_mailboxrestoreartifacts"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/exchangeRestoreSessions
Content-Type: application/json

{
  "mailboxRestoreArtifacts": [
    {
      "restorePoint": { "id": "1f1fccc3-a642-4f61-bf49-f37b9a888279" },
      "destinationType": "inPlace"
    },
    {
      "restorePoint": { "id": "1f1fccc3-a642-4f61-bf49-f37b9a888280" },
      "destinationType": "inPlace"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/exchangerestoresession-create-mailboxrestoreartifacts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/exchangerestoresession-create-mailboxrestoreartifacts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/exchangerestoresession-create-mailboxrestoreartifacts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/exchangerestoresession-create-mailboxrestoreartifacts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/exchangerestoresession-create-mailboxrestoreartifacts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/exchangerestoresession-create-mailboxrestoreartifacts-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/exchangerestoresession-create-mailboxrestoreartifacts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.exchangeRestoreSession"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "/solutions/backupRestore/$metadata#exchangeRestoreSessions/$entity",
  "id": "959ba739-70b5-43c4-8c90-b2c22014f18b",
  "status": "draft",
  "restoreJobType": "standard",
  "restoreSessionArtifactCount": {
    "total": 2,
    "completed": 0,
    "inProgress": 0,
    "failed": 0
  },
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
  "createdDateTime": "2023-03-30T12:01:03.45Z",
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
  "lastModifiedDateTime": "2023-03-30T12:01:03.45Z",
  "error": null
}
```

### Example 2: Create exchangeRestoreSession with granularMailboxRestoreArtifact

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "exchangerestoresession_create_granularmailboxrestoreartifacts"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/exchangeRestoreSessions
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.exchangeRestoreSession",
  "granularMailboxRestoreArtifacts": [
    {
      "restorePoint": { "id": "1f1fccc3-a642-4f61-bf49-f37b9a888279" },
      "destinationType": "inPlace",
      "searchResponseId" : "M2UyZDAwMDAwMDMxMzkzYTMyNj"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/exchangerestoresession-create-granularmailboxrestoreartifacts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/exchangerestoresession-create-granularmailboxrestoreartifacts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/exchangerestoresession-create-granularmailboxrestoreartifacts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/exchangerestoresession-create-granularmailboxrestoreartifacts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/exchangerestoresession-create-granularmailboxrestoreartifacts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/exchangerestoresession-create-granularmailboxrestoreartifacts-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/exchangerestoresession-create-granularmailboxrestoreartifacts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.exchangeRestoreSession"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "/solutions/backupRestore/$metadata#exchangeRestoreSessions/$entity",
  "id": "959ba739-70b5-43c4-8c90-b2c22014f18b",
  "status": "draft",
  "restoreJobType": "standard",
  "restoreSessionArtifactCount": {
    "total": 2,
    "completed": 0,
    "inProgress": 0,
    "failed": 0
  },
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
  "createdDateTime": "2023-03-30T12:01:03.45Z",
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
  "lastModifiedDateTime": "2023-03-30T12:01:03.45Z",
  "error": null,
  "granularMailboxRestoreArtifact": [
    {
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18a",
      "restorePoint": { "id": "1f1fccc3-a642-4f61-bf49-f37b9a888279" },
      "restoredFolderId": null,
      "status": "added",
      "startDateTime": null,
      "destinationType": "inPlace",
      "searchResponseId": "M2UyZDAwMDAwMDMxMzkzYTMyNj",
      "error": null
    }
  ]
}
```
