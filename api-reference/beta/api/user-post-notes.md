---
title: "Create note"
description: "Create a new note in the user's Notes folder."
author: "rajeshvulla"
ms.date: 04/07/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Create note

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [note](../resources/note.md) in the user's *Notes* folder.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "user-post-notes-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/user-post-notes-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/notes
POST /users/{id | userPrincipalName}/notes
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [note](../resources/note.md) object.

You can specify the following properties when you create a **note**.

|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|The content of the note. Supports `text` or `html` content types. Required.|
|categories|String collection|The categories associated with the note. Optional.|
|subject|String|The title of the note. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [note](../resources/note.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_note"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/notes
Content-Type: application/json

{
  "subject": "Project Ideas",
  "body": {
    "contentType": "html",
    "content": "<html><body><p>Consider implementing automated testing framework</p></body></html>"
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
HTTP/1.1 201 Created
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

