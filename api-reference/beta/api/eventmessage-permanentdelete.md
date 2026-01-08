---
title: "eventMessage: permanentDelete"
description: "Permanently delete an event message and place it in the Purges folder in the user's mailbox."
author: "deepakbaghel99"
ms.localizationpriority: high
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 09/17/2024
---

# eventMessage: permanentDelete

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Permanently delete an event message and place it in the Purges folder in the user's mailbox. Email clients such as Outlook or the Outlook on the web can't access permanently deleted items. Unless there's a hold set on the mailbox, the items are permanently deleted after a set period of time.

For more information about item retention, see [Configure Deleted Item retention and Recoverable Items quotas](/exchange/configure-deleted-item-retention-and-recoverable-items-quotas-exchange-2013-help).


[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "eventmessage_permanentdelete" } -->
[!INCLUDE [permissions-table](../includes/permissions/eventmessage-permanentdelete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/messages/{id}/permanentDelete
POST /users/{id | userPrincipalName}/messages/{id}/permanentDelete
POST /me/mailFolders/{id}/messages/{id}/permanentDelete
POST /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}/permanentDelete
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
  "name": "eventmessagethis.permanentdelete"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/messages/{id}/permanentDelete
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/eventmessagethispermanentdelete-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/eventmessagethispermanentdelete-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/eventmessagethispermanentdelete-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/eventmessagethispermanentdelete-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/eventmessagethispermanentdelete-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/eventmessagethispermanentdelete-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/eventmessagethispermanentdelete-python-snippets.md)]
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

