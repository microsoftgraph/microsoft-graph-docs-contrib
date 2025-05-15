---
title: "Delete siteRestoreArtifactsBulkAdditionRequest"
description: "Delete a siteRestoreArtifactsBulkAdditionRequest object associated with a sharepointRestoreSession."
author: "nupur-munda"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 04/24/2025
---

# Delete siteRestoreArtifactsBulkAdditionRequest

Namespace: microsoft.graph

Delete a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object associated with a [sharepointRestoreSession](../resources/sharepointrestoresession.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "siterestoreartifactsbulkadditionrequest-delete"
}
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}/siteRestoreArtifactsBulkAdditionRequests/{siteRestoreArtifactsBulkAdditionRequestId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_siterestoreartifactsbulkadditionrequest"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/solutions/backupRestore/sharePointRestoreSessions/f25015f4-6bb2-46cb-b800-a8ec86a02815/siteRestoreArtifactsBulkAdditionRequests/7ab93651-5029-4fcd-b263-5dcabad61e8d
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
