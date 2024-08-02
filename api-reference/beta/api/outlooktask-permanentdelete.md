---
title: "outlookTask: permanentDelete"
description: "Permanently delete outlook tasks and places it in the Purges folder in the user's mailbox."
author: "deepakbaghel99"
ms.localizationpriority: high
ms.subservice: "outlook"
doc_type: apiPageType
---

# outlookTask: permanentDelete

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Permanently delete an outlookTask and place it in the Purges folder in the dumpster in the user's mailbox. Email clients such as Outlook or the Outlook Web App can't access permanently deleted items. Unless there's a hold set on the mailbox, the items will be permanently deleted after a set period of time.

You can read more about item retention in the article [Configure Deleted Item Retention and Recoverable Items Quotas](https://technet.microsoft.com/library/ee364752%28v=exchg.150%29.aspx).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "outlooktask-permanentdelete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/outlooktask-permanentdelete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/outlook/tasks/{outlookTaskId}/permanentDelete
POST /users/{usersId}/outlook/taskGroups/{outlookTaskGroupId}/taskFolders/{outlookTaskFolderId}/tasks/{outlookTaskId}/permanentDelete
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
  "name": "outlooktaskthis.permanentdelete"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/outlook/tasks/{outlookTaskId}/permanentDelete
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
<!--
{
  "type": "#page.annotation",
  "description": "Update checklistItem",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: microsoft.graph.microsoft.graph/users:
      /users/{var}/outlook/tasks/{var}/permanentDelete
      Uri path requires navigating into unknown object hierarchy: missing property 'tasks' on 'outlookUser'. Possible issues:
  	 1) Doc bug where 'tasks' isn't defined on the resource.
  	 2) Doc bug where 'tasks' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
  	 3) Doc bug where 'outlookUser' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->
