---
title: "Delete note"
description: "Delete a note object."
author: "rajeshvulla"
ms.date: 04/07/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Delete note

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [note](../resources/note.md) object. Supports optimistic concurrency control via the `If-Match` header.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "note_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/note-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /me/notes/{note-id}
DELETE /users/{id | userPrincipalName}/notes/{note-id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|If-Match|The **changeKey** value for the note is used for optimistic concurrency control. Optional. We recommend that you use this header to avoid conflicts.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

If the `If-Match` header doesn't match the current **changeKey**, this method returns a `412 Precondition Failed` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_note"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/me/notes/AAMkAGI2THVSAAA=
If-Match: "CQAAABYAAABG"
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

