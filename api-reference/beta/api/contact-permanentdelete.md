---
title: "contact: permanentDelete"
description: "Permanent delete contact and places it in the Purges folder of the dumpster in user's mailbox"
author: "deepakbaghel99"
ms.localizationpriority: high
ms.subservice: "outlook"
doc_type: apiPageType
---

# contact: permanentDelete

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Items and folders deleted using this API are permanently deleted. 
Permanent-deleted items are placed in the Purges folder of the dumpster in user's mailbox. This is like when the recycling truck empties your curbside recycle container. The items cannot be accessed from an email client like Outlook or Outlook Web App, and, unless there is a hold set on the mailbox, the items will be permanently deleted after a set period of time.

You can read more about item retention in the article Configure Deleted Item Retention and [Recoverable Items Quotas](https://technet.microsoft.com/library/ee364752%28v=exchg.150%29.aspx).

NOTE: Folders are not placed in the Purges folder when they are permanently deleted. Permanently deleted folders are removed from the mailbox.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "contact-permanentdelete-permissions"
}
-->
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
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

