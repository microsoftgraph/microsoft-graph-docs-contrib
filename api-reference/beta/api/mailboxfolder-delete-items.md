---
title: "Delete mailboxItem"
description: "Delete a mailboxItem from a mailboxFolder in a mailbox."
author: "cparker-msft"
ms.date: 07/02/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Delete mailboxItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [mailboxItem](../resources/mailboxitem.md) from a [mailboxFolder](../resources/mailboxfolder.md) in a mailbox.

Use the **disposalType** query parameter to specify whether to soft-delete or hard-delete the item.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mailboxfolder_delete_items" } -->
[!INCLUDE [permissions-table](../includes/permissions/mailboxfolder-delete-items-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}/items/{mailboxItemId}?disposalType={disposalType}
```

## Query parameters

In the request URL, provide the following required query parameter.

|Parameter|Type|Description|
|:---|:---|:---|
|disposalType|String|Required. The type of delete operation to perform. The possible values are: `softDelete`, `hardDelete`. Use `softDelete` to follow Exchange soft-delete semantics, or `hardDelete` to permanently delete the item.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

> [!NOTE]
> When you use `hardDelete`, the Exchange service permanently deletes the item only when it's customer data that isn't protected by a legal hold, retention policy, audit, compliance, or system-item restriction. Otherwise, the request fails with a `403 Forbidden` error.
>
> *Archive mailboxes with autoexpanded folders:* When the target item physically resides in an auxiliary (autoexpanded) archive mailbox, this API might return a redirect response that points to the correct mailbox endpoint. For details, see [Handle archive mailbox redirects](/graph/handle-archive-mailbox-redirects).

## Examples

### Example 1: Soft-delete a mailbox item

The following example shows how to soft-delete a mailbox item in a folder by using `disposalType=softDelete`.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_mailboxitem_softdelete",
  "sampleKeys": ["MBX:e0648f21@aab09c93", "inbox", "AAMkADk0MzI"]
}
-->
```http
DELETE https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0648f21@aab09c93/folders/inbox/items/AAMkADk0MzI?disposalType=softDelete
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 2: Hard-delete a mailbox item

The following example shows how to hard-delete an eligible mailbox item in Recoverable Items by using `disposalType=hardDelete`.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_mailboxitem_harddelete",
  "sampleKeys": ["MBX:e0648f21@aab09c93", "recoverableitemsdeletions", "AAMkADk0MzI"]
}
-->
```http
DELETE https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0648f21@aab09c93/folders/recoverableitemsdeletions/items/AAMkADk0MzI?disposalType=hardDelete
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
