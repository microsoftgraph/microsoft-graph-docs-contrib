---
title: "mailSearchFolder: permanentDelete"
description: "Permanently delete a mail search folder and remove its items from the user's mailbox."
author: "deepakbaghel99"
ms.localizationpriority: high
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 01/17/2025
---

# mailSearchFolder: permanentDelete

Namespace: microsoft.graph

Permanently delete a mail search folder and remove its items from the user's mailbox. For more information about item retention, see [Configure deleted item retention and recoverable items quotas](/exchange/configure-deleted-item-retention-and-recoverable-items-quotas-exchange-2013-help).

> [!Note]
> Folders aren't placed in the **purges** folder when they're permanently deleted. Permanently deleted folders are removed from the mailbox.


[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mailsearchfolder_permanentdelete" } -->
[!INCLUDE [permissions-table](../includes/permissions/mailsearchfolder-permanentdelete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /me/mailFolders/{id}/permanentDelete
POST /users/{id | userPrincipalName}/mailFolders/{id}/permanentDelete
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
  "name": "mailsearchfolderthis.permanentdelete"
}
-->
```http
POST https://graph.microsoft.com/v1.0/me/mailFolders/AAMkAGVmMDEzM/permanentDelete
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/mailsearchfolderthispermanentdelete-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/mailsearchfolderthispermanentdelete-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/mailsearchfolderthispermanentdelete-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/mailsearchfolderthispermanentdelete-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/mailsearchfolderthispermanentdelete-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/mailsearchfolderthispermanentdelete-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/mailsearchfolderthispermanentdelete-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

