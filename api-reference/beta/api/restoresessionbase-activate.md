---
title: "restoreSessionBase: activate"
description: "Activate a draft restore session."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# restoreSessionBase: activate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Activate a draft [restoreSessionBase](../resources/restoresessionbase.md) object.

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
``` http
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

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "restoresessionbasethis.activate"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/restoreSessions/61633878-8321-4950-bfaf-ed285bdd1461/activate
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/restoresessionbasethisactivate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/restoresessionbasethisactivate-cli-snippets.md)]
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

``` http
HTTP/1.1 200 OK
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
      "displayName": "User1"
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
      "displayName": "User2"
    }
  },
  "lastModifiedDateTime": "2015-06-19T12-01-03.45Z"
}
```

### Limits

The following limits apply to all API calls:

- SharePoint sites and OneDrive accounts being restored to a prior point in time aren't locked in a ready-only state.
- For the new URL restore, the restored SharePoint Online sites/OneDrive users (new URLs only) don't have the same permission as original site. Only the global admin(or SharePoint Online Admin for SharePoint Online/OneDrive & Exchange Online Admin for Exchange Online) is given permission to the restored site. However, for the in-place or same URL restore, permission is reverted to the state of the original site at the time it's being restored from.
- Restoration of SharePoint Online sites/OneDrive users content deleted beyond recycle bin isn't supported.
- For restores to a new URL, only the admin who executed the restore has ownership permissions for the restored SharePoint sites or OneDrive accounts in the new URLs. Restores to the same URL reverts permissions to their original state. We might decide to change this behavior in the future.
- Mailboxes, OneDrive accounts, and SharePoint sites that are under legal or in-place holds currently can't be restored unless the destination is removed from legal hold. To restore a SharePoint site under legal hold, you need to restore the site to a new URL.
- Mailbox draft items aren't backed up or restorable.
- There is no restore performed if the current state of mailbox is same as the point in time you're trying to restore it to.
- SharePoint sites and OneDrive accounts being restored to a new URL have a read-only lock on that new URL until the restore completes. The global admin can still download documents or remove the read-only lock manually.
- The global admin(or SharePoint Online Admin for SharePoint Online/OneDrive & Exchange Online Admin for Exchange Online) can initiate restore of up to 1000 SharePoint sites, 1,000 OneDrive users, and/or 1000 mailboxes queued in parallel at a time.
