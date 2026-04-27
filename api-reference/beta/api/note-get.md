---
title: "Get note"
description: "Read the properties and relationships of a note object."
author: "rajeshvulla"
ms.date: 04/07/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Get note

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [note](../resources/note.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "note_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/note-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/notes/{note-id}
GET /users/{id | userPrincipalName}/notes/{note-id}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

Use `$expand=attachments` to include file attachments in the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [note](../resources/note.md) object in the response body.

## Examples

### Example 1: Get a note
The following example shows how to get a [note](../resources/note.md) object.
#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_note"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/notes/AAMkAGI2THVSAAA=
```

#### Response

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
  "changeKey": "CQAAABYAAABE",
  "createdDateTime": "2024-01-20T10:30:00Z",
  "lastModifiedDateTime": "2024-01-20T10:30:00Z",
  "categories": [],
  "subject": "Project Ideas",
  "body": {
    "contentType": "html",
    "content": "<html><body><p>Consider implementing automated testing framework</p></body></html>"
  },
  "bodyPreview": "Consider implementing automated testing framework",
  "isDeleted": false,
  "hasAttachments": false
}
```

### Example 2: Get a note with attachments
The following example shows how to get a [note](../resources/note.md) object using `$expand` to include attachments.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_note_with_attachments"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/notes/AAMkAGI2THVSAAA=?$expand=attachments
```

#### Response

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
  "changeKey": "CQAAABYAAABE",
  "createdDateTime": "2024-01-15T14:00:00Z",
  "lastModifiedDateTime": "2024-01-15T14:30:00Z",
  "categories": [],
  "subject": "Meeting Whiteboard",
  "body": {
    "contentType": "html",
    "content": "<html><body><p>Key discussion points:</p><img src=\"cid:image001\" /></body></html>"
  },
  "bodyPreview": "Key discussion points:",
  "isDeleted": false,
  "hasAttachments": true,
  "attachments": [
    {
      "@odata.type": "#microsoft.graph.fileAttachment",
      "id": "AAMkAGI2attach1",
      "name": "whiteboard.png",
      "contentType": "image/png",
      "size": 45678,
      "isInline": true,
      "contentId": "image001",
      "lastModifiedDateTime": "2024-01-15T14:30:00Z"
    }
  ]
}
```

