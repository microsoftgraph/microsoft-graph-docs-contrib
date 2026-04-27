---
title: "Update note"
description: "Update the properties of a note object."
author: "rajeshvulla"
ms.date: 04/07/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Update note

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [note](../resources/note.md) object. Supports optimistic concurrency control via the `If-Match` header with the **changeKey** value for the note.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "note_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/note-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/notes/{note-id}
PATCH /users/{id | userPrincipalName}/notes/{note-id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|If-Match|The **changeKey** value for the note is used for optimistic concurrency control. Optional. We recommend that you use this header to avoid conflicts.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|The content of the note. Supports `text` or `html` content types. Optional.|
|categories|String collection|The categories associated with the note. Optional.|
|subject|String|The title of the note. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [note](../resources/note.md) object in the response body.

If the `If-Match` header doesn't match the current **changeKey**, this method returns a `412 Precondition Failed` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_note"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/notes/AAMkAGI2THVSAAA=
Content-Type: application/json
If-Match: "CQAAABYAAABE"

{
  "subject": "Updated Meeting Notes - Jan 28",
  "body": {
    "contentType": "html",
    "content": "<html><body><h2>Updated Standup</h2><ul><li>Task 1 completed</li><li>Task 2 in progress</li></ul></body></html>"
  }
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.note"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('user-id')/notes/$entity",
  "id": "AAMkAGI2THVSAAA=",
  "changeKey": "CQAAABYAAABG",
  "createdDateTime": "2024-01-15T10:30:00Z",
  "lastModifiedDateTime": "2024-01-28T09:45:00Z",
  "categories": [],
  "subject": "Updated Meeting Notes - Jan 28",
  "body": {
    "contentType": "html",
    "content": "<html><body><h2>Updated Standup</h2><ul><li>Task 1 completed</li><li>Task 2 in progress</li></ul></body></html>"
  },
  "bodyPreview": "Updated Standup Task 1 completed Task 2 in progress",
  "isDeleted": false,
  "hasAttachments": false
}
```

