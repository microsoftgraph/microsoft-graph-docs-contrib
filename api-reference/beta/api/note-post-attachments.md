---
title: "Create attachment"
description: "Create a fileAttachment object, which adds an inline image attachment to a note."
author: "rajeshvulla"
ms.date: 04/07/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Create attachment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [fileAttachment](../resources/fileattachment.md) object, which adds an inline image attachment to a [note](../resources/note.md). Only image file types (image/png, image/jpeg, image/gif, or image/bmp) are supported, with a maximum size of 3 MB per attachment. Use the **contentId** property to reference the attachment in the HTML body of a note by using `<img src="cid:{contentId}" />`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "note_post_attachments" } -->
[!INCLUDE [permissions-table](../includes/permissions/note-post-attachments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/notes/{note-id}/attachments
POST /users/{id | userPrincipalName}/notes/{note-id}/attachments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [fileAttachment](../resources/fileattachment.md) object.

You can specify the following properties when you create an attachment.

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|The OData type of the attachment resource. Required. Set to `#microsoft.graph.fileAttachment`.|
|name|String|The file name of the attachment. Required.|
|contentType|String|The MIME type of the attachment. Must be an image type: `image/png`, `image/jpeg`, `image/gif`, or `image/bmp`. Required.|
|contentBytes|String|The base64-encoded contents of the file. Required.|
|contentId|String|The ID used for referencing the attachment in the HTML body via `cid:`. Required.|
|isInline|Boolean|Indicates whether the attachment is an inline attachment. Must be set to `true` for note attachments. Required.|

## Response

If successful, this method returns a `201 Created` response code and an [attachment](../resources/attachment.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_note_attachment"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/notes/AAMkAGI2THVSAAA=/attachments
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileAttachment",
  "name": "screenshot.png",
  "contentType": "image/png",
  "contentBytes": "iVBORw0KGgoAAAANSUhEUgAAAAUA...",
  "contentId": "screenshot-001",
  "isInline": true
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-note-attachment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.attachment"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileAttachment",
  "id": "AAMkAGI2attach2",
  "name": "screenshot.png",
  "contentType": "image/png",
  "size": 12456,
  "isInline": true,
  "contentId": "screenshot-001",
  "lastModifiedDateTime": "2024-01-29T11:30:00Z"
}
```

