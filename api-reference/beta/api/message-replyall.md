---
title: "message: replyAll"
description: "Reply to all recipients of a message using either JSON or MIME format."
author: "abheek-das"
localization_priority: Normal
ms.prod: "outlook"
doc_type: apiPageType
---

# message: replyAll

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reply to all recipients of a message using either JSON or MIME format.

When using JSON format:
- Add a comment or modify any updateable properties of the [message](/graph/api-reference/beta/resources/message.md) in a single **replyAll** call 
- Specify either a comment or the **body** property of the `message` parameter. Specifying both will return an HTTP 400 Bad Request error.
- If the original message specifies a recipient in the **replyTo** property, per Internet Message Format ([RFC 2822](https://www.rfc-editor.org/info/rfc2822)), send the reply to the recipients in **replyTo** and not the recipient in the **from** property.

When using MIME format:
- Provide the complete MIME content in a **base64-encoded string** in the request body. Microsoft Graph does not support editing MIME properties individually.
- Include S/MIME properties as part of the **base64-encoded string**.

This method saves the message in the **Sent Items** folder.

Alternatively, [create a draft to reply-all to a message](../api/message-createreplyall.md), and [send](../api/message-send.md) it later.

## Permissions
This API requires one of the following permissions. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Mail.Send    |
|Delegated (personal Microsoft account) | Mail.Send    |
|Application | Mail.Send |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/me/messages/{id}/replyAll
POST /users/{id | userPrincipalName}/messages/{id}/replyAll
POST /me/mailFolders/{id}/messages/{id}/replyAll
POST /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}/replyAll
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required|
| Content-Type | string  | Nature of the data in the body of an entity. Required <br/> Use `application/json` for a JSON object and `text/plain` for MIME content |

## Request body
When using JSON format, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|A comment to include. Can be an empty string.|
|message|[message](../resources/message.md)|Any writeable properties to update in the reply message.|

When specifying the body in MIME format, provide the MIME content as **a base64-encoded string** in the request body. Do not include parameters.

## Response

If successful, this method returns `202 Accepted` response code. It does not return anything in the response body.
If the request body includes malformed MIME content, this method returns `400 Bad request` and the following error message: `Invalid base64 string for MIME content`.

## Examples
### Example 1: Reply-all to a message in JSON format
The following example includes a comment and adds an attachment to the reply-all message.
##### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "message_replyall"
}-->
```http
POST https://graph.microsoft.com/beta/me/messages/AAMkADA1MTAAAH5JaKAAA=/replyAll
Content-Type: application/json

{
    "message":{
      "attachments": [ 
        { 
          "@odata.type": "#microsoft.graph.fileAttachment", 
          "name": "guidelines.txt", 
          "contentBytes": "bWFjIGFuZCBjaGVlc2UgdG9kYXk=" 
        } 
      ]
    },
    "comment": "Please take a look at the attached guidelines before you decide on the name." 
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/message-replyall-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/message-replyall-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/message-replyall-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/message-replyall-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
```

### Example 2: Reply-all to a message in MIME format
##### Request
<!-- {
  "blockType": "request",
  "name": "message_replyAll_mime_beta"
}-->

```http
POST https://graph.microsoft.com/beta/me/messages/AAMkADA1MTAAAH5JaLAAA=/replyAll
Content-Type: text/plain

RnJvbTogQWxleCBXaWxiZXIgPEFsZXhXQGNvbnRvc28uY29tPgpUbzogTWVnYW4gQm93ZW4gPE1l
Z2FuQkBjb250b3NvLmNvbT4KU3ViamVjdDogSW50ZXJuYWwgUmVzdW1lIFN1Ym1pc3Npb246IFNh
bGVzIEFzc29jaWF0ZQpUaHJlYWQtVG9waWM6IEludGVybmFsIFJlc3VtZSBTdWJtaXNzaW9uOiBT
YWxlcyBBc3NvY2lhdGUKVGhyZWFkLUluZGV4OiBjb2RlY29kZWNvZGVoZXJlaGVyZWhlcmUKRGF0
ZTogU3VuLCAyOCBGZWIgMjAyMSAwNzoxNTowMCArMDAwMApNZXNzYWdlLUlEOgoJPE1XSFBSMTMw
MU1CMjAwMDAwMDAwRDc2RDlDMjgyMjAwMDA5QUQ5QTlASFdIUFIxMzAxTUIwMDAwLmNvZGVudW0u
cHJvZC5vdXRsb29rLmNvbT4KQ29udGVudC1MYW5ndWFnZTogZW4tVVMKWC1NUy1IYXMtQXR0YWNo
OgpYLU1TLVRORUYtQ29ycmVsYXRvcjoKWC1NUy1FeGNoYW5nZS1Pcmdhbml6YXRpb24tUmVjb3Jk
UmV2aWV3Q2ZtVHlwZTogMApDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9Imlzby04
ODU5LTEiCkNvbnRlbnQtVHJhbnNmZXItRW5jb2Rpbmc6IHF1b3RlZC1wcmludGFibGUKTUlNRS1W
ZXJzaW9uOiAxLjAKCkhpLCBNZWdhbi4KCkkgaGF2ZSBhbiBpbnRlcmVzdCBpbiB0aGUgU2FsZXMg
QXNzb2NpYXRlIHBvc2l0aW9uLiBQbGVhc2UgY29uc2lkZXIgbXkgcmVzdT0KbWUsIHdoaWNoIHlv
dSBjYW49MjAKYWNjZXNzIGhlcmUuLi4KCmh0dHBzOi8vbXkuc2hhcmVwb2ludC5jb20vcGVyc29u
YWwvYWxleHdfb25taWNyb3NvZnRfY29tL19sYXlvdXRzLzE1L2d1ZXN0YT0KY2Nlc3MuYXNweD9n
dWVzdGFjY2Vzc3Rva2VuPTAwMDAwMDAwMDAwMDAwMDAwMDAKCkJlc3QgUmVnYXJkcywKQWxleA==


```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
```

If the request body includes malformed MIME content, this method returns the following error message.

<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "ErrorMimeContentInvalidBase64String",
        "message": "Invalid base64 string for MIME content."
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "message: replyAll",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


