---
title: "mailFolder: importMime"
description: "Create a non-draft message in a mailFolder directly from MIME content, without submitting it to transport."
author: "Yesaket"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 09/23/2026
---

# mailFolder: importMime

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a non-draft [message](../resources/message.md) in a [mailFolder](../resources/mailfolder.md) directly from MIME content, without submitting it to transport.

Unlike [creating a message](mailfolder-post-messages.md), which always creates a draft, this action creates the message in a final, non-draft state. The message appears in the destination folder as if it was delivered; however, it doesn't go through transport, isn't stamped as sent, and never appears in the *Sent Items* folder. The action preserves the full MIME content, including internet message headers, body parts, and attachments.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mailfolder_importmime" } -->
[!INCLUDE [permissions-table](../includes/permissions/mailfolder-importmime-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/mailFolders/{mailFolderId}/importMime
POST /users/{usersId}/mailFolders/{mailFolderId}/importMime
```

>**Note:** The `{mailFolderId}` can be a folder ID or a well-known folder name such as `inbox`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|`text/plain`. Required.|

## Request body

In the request body, supply the MIME content of the message. Provide the applicable [Internet message headers](https://tools.ietf.org/html/rfc2076) and the [MIME content](https://tools.ietf.org/html/rfc2045), all Base64-encoded.

The entire request body is the Base64-encoded MIME content, with no JSON envelope or parameters. This API doesn't support editing or updating MIME properties individually.

## Response

If successful, this action returns a `201 Created` response code and a [message](../resources/message.md) object in the response body. The returned message has **isDraft** set to `false`.

If the request body includes malformed MIME content, this action returns a `400 Bad Request` response code and the following error message: `Invalid base64 string for MIME content.`

## Examples

### Request

The following example shows a request. The request body is the Base64-encoded MIME content, shortened for readability.

<!-- {
  "blockType": "request",
  "name": "mailfolder_importmime_beta"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/mailFolders/inbox/importMime
Content-type: text/plain

RnJvbTogY29udG9zby1hbGVydHNAY29udG9zby5jb20NClRvOiB0ZXN0aW5nQGNvbnRvc28uY29t
DQpTdWJqZWN0OiBRdWFydGVybHkgcmVwb3J0DQpEYXRlOiBUaHUsIDI1IEp1biAyMDI2IDEwOjAw
OjAwIC0wNzAwDQpDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9InV0Zi04Ig0KDQpC
b2R5IG9mIHRoZSBpbXBvcnRlZCBtZXNzYWdlLg==
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message"
}
-->
``` http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('02d1914d-7abd-4621-a407-57b8bdeb1ada')/messages/$entity",
  "id": "AAMkADE5MWM0YmM5LThjOWUtNGFhZi1hOTBhLWNmZDBiZDhhNTljMABGAAAA",
  "createdDateTime": "2026-09-17T21:30:19Z",
  "lastModifiedDateTime": "2026-09-17T21:30:20Z",
  "receivedDateTime": "2026-09-17T21:30:20Z",
  "sentDateTime": "2026-07-24T20:03:00Z",
  "hasAttachments": false,
  "subject": "Quarterly report",
  "isRead": false,
  "isDraft": false,
  "parentFolderId": "AAMkADE5MWM0YmM5LThjOWUtNGFhZi1hOTBhLWNmZDBiZDhhNTljMAAuAAAA"
}
```
