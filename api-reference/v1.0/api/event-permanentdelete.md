---
title: "event: permanentDelete"
description: "Permanently delete an event and place it in the purges folder in the dumpster in the user's mailbox."
author: "deepakbaghel99"
ms.localizationpriority: high
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 01/17/2025
---

# event: permanentDelete

Namespace: microsoft.graph

Permanently delete an event and place it in the **purges** folder in the dumpster in the user's mailbox. Email clients such as outlook or outlook on the web can't access permanently deleted items. Unless there's a hold set on the mailbox, the items are permanently deleted after a set period of time.

For more information about item retention, see [Configure deleted item retention and recoverable items quotas](/exchange/configure-deleted-item-retention-and-recoverable-items-quotas-exchange-2013-help).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "event_permanentdelete" } -->
[!INCLUDE [permissions-table](../includes/permissions/event-permanentdelete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/events/{eventId}/permanentDelete
POST /groups/{groupsId}/events/{eventId}/permanentDelete
POST /users/{usersId}/calendarView/{eventId}/permanentDelete
POST /groups/{groupsId}/calendarView/{eventId}/permanentDelete
POST /users/{usersId}/messages/{messageId}/event/permanentDelete
POST /users/{usersId}/messages/{messageId}/event/instances/{eventId}/permanentDelete
POST /users/{usersId}/messages/{messageId}/event/calendar/events/{eventId}/permanentDelete
POST /users/{usersId}/messages/{messageId}/event/exceptionOccurrences/{eventId}/permanentDelete
POST /users/{usersId}/messages/{messageId}/event/calendar/calendarView/{eventId}/permanentDelete
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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "eventthis.permanentdelete"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/users/b4c80c57-5c59-4a3d-912a-a83985988b82/events/AAasdijs0acjdjlksca=/permanentDelete
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/eventthispermanentdelete-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

