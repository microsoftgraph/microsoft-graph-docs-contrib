---
title: "List attachments"
description: "Get the list of file attachments associated with a note."
author: "rajeshvulla"
ms.date: 04/07/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# List attachments

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of file attachments associated with a [note](../resources/note.md). Only inline image attachments (image/png, image/jpeg, image/gif, or image/bmp) are supported, with a maximum size of 3 MB per attachment.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "note-list-attachments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/note-list-attachments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/notes/{note-id}/attachments
GET /users/{id | userPrincipalName}/notes/{note-id}/attachments
```

## Optional query parameters

This method supports the `$filter`, `$select`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

You can use the `$expand` query parameter to include all of the note attachments inline with the rest of the note properties. For example:

``` http
GET https://graph.microsoft.com/beta/me/notes/{note-id}?$expand=attachments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [attachment](../resources/attachment.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_note_attachments"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/notes/AAMkAGI2THVSAAA=/attachments
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attachment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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

