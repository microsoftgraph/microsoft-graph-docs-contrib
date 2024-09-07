---
title: "contact: permanentDelete"
description: "Permanently delete a contact and place it in the Purges folder in the user's mailbox."
author: "deepakbaghel99"
ms.localizationpriority: high
ms.subservice: "outlook"
doc_type: apiPageType
---

# contact: permanentDelete

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Permanently delete a contact and place it in the Purges folder in the dumpster in the user's mailbox. Email clients such as Outlook or Outlook on the web can't access permanently deleted items. Unless there's a hold set on the mailbox, the items are permanently deleted after a set period of time.

For more information about item retention, see [Configure Deleted Item retention and Recoverable Items quotas](/exchange/configure-deleted-item-retention-and-recoverable-items-quotas-exchange-2013-help).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "contact_permanentdelete" } -->
[!INCLUDE [permissions-table](../includes/permissions/contact-permanentdelete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/contacts/{contactId}/permanentDelete
POST /users/{usersId}/contactFolders/{contactFolderId}/contacts/{contactId}/permanentDelete
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "contactthis.permanentdelete"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/contacts/{contactId}/permanentDelete
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

