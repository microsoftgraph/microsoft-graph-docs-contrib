---
title: "message: createForward"
description: "Create a draft to forward an existing message, in either JSON or MIME format."
localization_priority: Normal
author: "abheek-das"
ms.prod: "outlook"
doc_type: apiPageType
---

# message: createForward

Namespace: microsoft.graph

Create a draft to forward an existing [message](../resources/message.md), in either JSON or MIME format.

When using JSON format:
- Include a comment, specify recipients, and update any message properties all in one **createForward** call.
- Optionally, [update](../api/message-update.md) the draft later to add content to the **body** or change other message properties.

When using MIME format:
- Provide the complete MIME content in a **base64-encoded string** in the request body. Microsoft Graph does not support editing MIME properties individually.
- Include S/MIME properties as part of the **base64-encoded string**.

[Send](../api/message-send.md) the draft message in a subsequent operation.

Alternatively, [forward a message](../api/message-forward.md) in a single action.

## Permissions
This API requires one of the following permissions. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Mail.ReadWrite    |
|Delegated (personal Microsoft account) | Mail.ReadWrite    |
|Application | Mail.ReadWrite |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/messages/{id}/createForward
POST /users/{id | userPrincipalName}/messages/{id}/createForward
POST /me/mailFolders/{id}/messages/{id}/createForward
POST /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}/createForward
```

## Request headers

| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required |
| Content-Type | string  | Nature of the data in the body of an entity. <br/> Use `application/json` for a JSON object and `text/plain` for MIME content. |

## Request body
This method does not require a request body. However, for creating a forward draft using MIME format, include only the MIME content as **a base64-encoded string** in the request body. 

## Response

If successful, this method returns `201 Created` response code and [Message](../resources/message.md) object in the response body.
If the request body includes malformed MIME content, this method returns `400 Bad request` and the following error message: `Invalid base64 string for MIME content`.

## Examples

### Example 1: Create a draft message in JSON format to forward an existing message
Here is an example of how to call this API.

##### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "message_createforward"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/messages/{id}/createForward
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/message-createforward-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/message-createforward-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/message-createforward-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/message-createforward-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 248

{
  "receivedDateTime": "datetime-value",
  "sentDateTime": "datetime-value",
  "hasAttachments": true,
  "subject": "subject-value",
  "body": {
    "contentType": "",
    "content": "content-value"
  },
  "bodyPreview": "bodyPreview-value"
}
```

### Example 2 Create a draft message in MIME format to forward an existing message
##### Request
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.message",
  "truncated": true
} -->

```http
POST https://graph.microsoft.com/v1.0/me/messages/AAMkADA1MTAAAAqldOAAA=/createForward
Content-type: text/plain

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
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('0aaa0aa0-0000-0a00-a00a-0000009000a0')/messages/$entity",
    "@odata.etag": "W/\"AAAAAAAAAAAa00AAAa0aAaAa0a0AAAaAAAAaAa0a\"",
    "id": "AAMkADA1MTAAAH5JaLAAA=",
    "createdDateTime": "2021-04-23T18:13:44Z",
    "lastModifiedDateTime": "2021-04-23T18:13:44Z",
    "changeKey": "AAAKJSDSKJFS54sdsd545fsA,
    "categories": [],
    "receivedDateTime": "2021-04-23T18:13:44Z",
    "sentDateTime": "2021-02-28T07:15:00Z",
    "hasAttachments": false,
    "internetMessageId": "<SDSFSFHSGA@DSSDSFG1301FG0000.codcod00.prod.outlook.com>",
    "subject": "Internal Resume Submission: Sales Associate",
    "bodyPreview": "Hi, Megan.I have an interest in the Sales Associate position. Please consider my resu=e, which you can access here...",
    "importance": "normal",
    "parentFolderId": "LKJDSKJHkjhfakKJHFKWKKJHKJdhkjHDKJ_bcjhdsbJHBSDJHBS==",
    "conversationId": "SDSFSmFSDGI5LWZhYjc4fsdfsdfqh_1Bgsdfsf=",
    "conversationIndex": "Adfsdfsdfsdfw==",
    "isDeliveryReceiptRequested": null,
    "isReadReceiptRequested": false,
    "isRead": true,
    "isDraft": true,
    "webLink": "https://outlook.office365.com/owa/?ItemID=AAMkAGNhOWVmNmEjnPAvsurl=1&viewmodel=ReadMessageItem",
    "inferenceClassification": "focused",
    "body": {
        "contentType": "text",
        "content": "Hi, Megan.I have an interest in the Sales Associate position. Please consider my resu=e, which you can access here... Regards,Alex"
    },
    "sender": {
        "emailAddress": {
            "name": "Alex Wilber",
            "address": "AlexW@contoso.com"
        }
    },
    "from": {
        "emailAddress": {
            "name": "Alex Wilber",
            "address": "AlexW@contoso.com"
        }
    },
    "toRecipients": [
        {
            "emailAddress": {
                "name": "Megan Bowen",
                "address": "MeganB@contoso.com"
            }
        }
    ],
    "ccRecipients": [],
    "bccRecipients": [],
    "replyTo": [],
    "flag": {
        "flagStatus": "notFlagged"
    }
}

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
<!-- {
  "type": "#page.annotation",
  "description": "message: createForward",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

