---
title: "Delete mailboxFolder"
description: "Delete a mailboxFolder object."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Delete mailboxFolder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a folder or a child folder within the mailbox.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailbox-delete-folders-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailbox-delete-folders-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}/$ref
DELETE /admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}/childFolders/{mailboxFolderId}/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

The following example shows how to delete a mailbox folder or child folder.

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_mailboxfolder"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0648f21@aab09c93/folders/{id}
DELETE https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0648f21@aab09c93/folders/inbox/childFolders/{id}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
