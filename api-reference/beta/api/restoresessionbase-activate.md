---
title: "restoreSessionBase: activate"
description: "Activate a draft restore session."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 11/10/2024
ms.custom: sfi-ga-nochange
---

# restoreSessionBase: activate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Activate a draft [restoreSessionBase](../resources/restoresessionbase.md) object to restore a [protection unit](../resources/protectionunitbase.md).

The following points apply to restoring a protection unit:

- The SharePoint sites and OneDrive accounts being restored aren't locked in a ready-only state.
- For SharePoint and OneDrive sites restored to new URLs, users don't have the same permissions they had to the original site. Only the global admin or SharePoint admin has permission to the restored site. However, for in-place or restores to the same URL, the permissions from the original site at the time of restoration are preserved.
- Restoration of SharePoint site and OneDrive user content that was removed from the recycle bin isn't supported.
- Mailboxes, OneDrive accounts, and SharePoint sites that are under legal or in-place holds can't be restored unless the legal hold is removed. To restore a SharePoint site under legal hold, you need to restore the site to a new URL.
- Mailbox draft items aren't backed up and can't be restored.
- A restore isn't performed if the current state of the mailbox is the same as the point in time you're trying to restore it to.
- SharePoint sites and OneDrive accounts that are restored to a new URL have a read-only lock on that new URL until the restore completes. The global admin can still download documents or remove the read-only lock manually.
- When a restore to a new location is performed, populating the property details of the new location can take more than 15 minutes.
- The global admin, SharePoint admin, or Exchange admin can initiate a restore of up to 1,000 SharePoint sites, 1,000 OneDrive users, and 1,000 mailboxes queued in parallel at a time.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "restoresessionbase_activate" } -->
[!INCLUDE [permissions-table](../includes/permissions/restoresessionbase-activate-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/backupRestore/restoreSessions/{restoreSessionBaseId}/activate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [restoreSessionBase](../resources/restoresessionbase.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "restoresessionbasethis.activate"
}
-->
```http
POST https://graph.microsoft.com/beta/solutions/backupRestore/restoreSessions/61633878-8321-4950-bfaf-ed285bdd1461/activate
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/restoresessionbasethisactivate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/restoresessionbasethisactivate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/restoresessionbasethisactivate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/restoresessionbasethisactivate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/restoresessionbasethisactivate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/restoresessionbasethisactivate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/restoresessionbasethisactivate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.restoreSessionBase"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": " /solutions/backupRestore/$metadata#restoreSessions/$entity",
  "@odata.id": "/solutions/backupRestore/sharepointRestoreSessions(61633878-8321-4950-bfaf-ed285bdd1461)",
  "@odata.type": "#microsoft.graph.sharepointRestoreSession",
  "id": "61633878-8321-4950-bfaf-ed285bdd1461",
  "status": "activating",
  "restoreJobType": "standard",
  "restoreSessionArtifactCount": {
    "total": 2,
    "completed": 0,
    "inProgress": 2,
    "failed": 0
  },
  "createdBy": {
    "application": {
      "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "displayName": "Microsoft Enhanced Restore"
    },
    "user": {
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "User1"
    }
  },
  "createdDateTime": "2015-06-19T12:01:03.45Z",
  "lastModifiedBy": {
    "application": {
      "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "displayName": "Microsoft Enhanced Restore"
    },
    "user": {
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "User2"
    }
  },
  "lastModifiedDateTime": "2015-06-19T12:01:03.45Z"
}
```
