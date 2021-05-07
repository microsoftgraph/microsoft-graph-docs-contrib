---
title: "message: reply"
description: "Reply to the sender of a message using either JSON or MIME format."
localization_priority: Normal
author: "abheek-das"
ms.prod: "outlook"
doc_type: apiPageType
---

# message: reply

Namespace: microsoft.graph.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reply to the sender of a [message](../resources/message.md) using either JSON or MIME format.

When using JSON format, you can:
- Add a comment or modify any updateable properties all in one **reply** call. 
- Specify either a comment or the **body** property of the `message` parameter. Specifying both will return an HTTP 400 Bad Request error.
- If the original message specifies a recipient in the **replyTo** property, per Internet Message Format ([RFC 2822](https://www.rfc-editor.org/info/rfc2822)), send the reply to the recipients in **replyTo** and not the recipient in the **from** property.

When using MIME format:
- Provide the applicable [Internet Message Headers](https://tools.ietf.org/html/rfc2076) and the [MIME content](https://tools.ietf.org/html/rfc2045), all encoded in **base64** format in the request body.
- Add any attachments and S/MIME properties into the MIME content.

This method saves the message in the **Sent Items** folder.

Alternatively, [create a draft to reply to a message](../api/message-createreply.md), and [send](../api/message-send.md) it later.

## Permissions
One of the following permissions are required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Mail.Send    |
|Delegated (personal Microsoft account) | Mail.Send    |
|Application | Mail.Send |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/messages/{id}/reply
POST /users/{id | userPrincipalName}/messages/{id}/reply
POST /me/mailFolders/{id}/messages/{id}/reply
POST /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}/reply
```

## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required |
| Content-Type | string  | Nature of the data in the body of an entity. Required <br/> Use `application/json` for a JSON object and `text/plain` for MIME content |

## Request body
When using JSON format, include a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|A comment to include. Can be an empty string.|
|message|[message](../resources/message.md) | Any writeable properties to update in the reply message.|

When specifying the body in MIME format, provide the MIME content as **a base64-encoded string** in the request body. Do not include parameters.

## Response

If successful, this method returns `202 Accepted` response code. It does not return anything in the response body.
If the request body includes malformed MIME content, this method returns `400 Bad request` and the following error message: `Invalid base64 string for MIME content`.

## Examples
### Example 1: Reply to a message in JSON format
The following example includes a comment and adds a recipient to the reply message.
##### Request
Here is an example of the request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "message_reply_beta",
  "sampleKeys": ["AAMkADA1MTAAAAqldOAAA="]
}-->

```http
POST https://graph.microsoft.com/beta/me/messages/AAMkADA1MTAAAAqldOAAA=/reply
Content-Type: application/json

{
  "message":{  
    "toRecipients":[
      {
        "emailAddress": {
          "address":"samanthab@contoso.onmicrosoft.com",
          "name":"Samantha Booth"
        }
      },
      {
        "emailAddress":{
          "address":"randiw@contoso.onmicrosoft.com",
          "name":"Randi Welch"
        }
      }
     ]
  },
  "comment": "Samantha, Randi, would you name the group please?" 
}

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/message-reply-beta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/message-reply-beta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/message-reply-beta-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/message-reply-beta-java-snippets.md)]
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

### Example 2: Reply to a message in MIME format
##### Request

<!-- {
  "blockType": "request",
  "name": "message_reply_mime_beta"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/messages/AAMkADA1MTAAAAqldOAAA=/reply
Content-Type: text/plain

UmVjZWl2ZWQ6IGZyb20gY29udG9zby5jb20gKDEwLjE5NC4yNDEuMTk3KSBieSAKY29udG9zby5jb20gKDEwLjE5NC4yNDEuMTk3KSB3aXRoIE1pY3Jvc29mdCAKU01UUCBTZXJ2ZXIgKHZlcnNpb249VExTMV8yLCAKY2lwaGVyPVRMU19FQ0RIRV9SU0FfV0lUSF9BRVNfMjU2X0NCQ19TSEEzODRfUDI1NikgaWQgMTUuMS4xMzc0LjAgdmlhIE1haWxib3ggClRyYW5zcG9ydDsgTW9uLCA0IFNlcCAyMDE3IDAzOjAwOjA4IC0wNzAwIApSZWNlaXZlZDogZnJvbSBjb250b3NvLmNvbSAoMTAuMTk0LjI0MS4xOTcpIGJ5IApjb250b3NvLmNvbSAoMTAuMTk0LjI0MS4xOTcpIHdpdGggTWljcm9zb2Z0IApTTVRQIFNlcnZlciAodmVyc2lvbj1UTFMxXzIsIApjaXBoZXI9VExTX0VDREhFX1JTQV9XSVRIX0FFU18yNTZfQ0JDX1NIQTM4NF9QMjU2KSBpZCAxNS4xLjEzNzQuMDsgTW9uLCA0IFNlcCAKMjAxNyAwMzowMDowNyAtMDcwMCAKUmVjZWl2ZWQ6IGZyb20gY29udG9zby5jb20gCihmZTgwOjo1YmY6NTA1OTo0Y2EwOjUwMTcpIGJ5IGNvbnRvc28uY29tIAooZmU4MDo6NWJmOjUwNTk6NGNhMDo1MDE3JTEyKSB3aXRoIG1hcGkgaWQgMTUuMDEuMTM3NC4wMDA7IE1vbiwgNCBTZXAgMjAxNyAKMDM6MDA6MDEgLTA3MDAgCkZyb206IEFkbWluaXN0cmF0b3IgPGFkbWluQGNvbnRvc28uY29tPiAKVG86IEFkbWluaXN0cmF0b3IgPGFkbWluQGNvbnRvc28uY29tPiAKU3ViamVjdDogVGhpcyBlbWFpbCBoYXMgYXR0YWNobWVudC4gClRocmVhZC1Ub3BpYzogVGhpcyBlbWFpbCBoYXMgYXR0YWNobWVudC4gClRocmVhZC1JbmRleDogQVFIVEpXU0hTeXdNelN6OG8wT0p1ZDQ4bkc1MEdRPT0gCkRhdGU6IE1vbiwgNCBTZXAgMjAxNyAxMDowMDowMCArMDAwMCAKTWVzc2FnZS1JRDogCuKAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAryA8NGFhZGUyNTQ3Nzk4NDQxZWFiNTE4OGE3YTI0MzZiYzFAY29udG9zby5jb20+IApBY2NlcHQtTGFuZ3VhZ2U6IGVuLVVTIApDb250ZW50LUxhbmd1YWdlOiBlbi1VUyAKWC1NUy1FeGNoYW5nZS1Pcmdhbml6YXRpb24tQXV0aEFzOiBJbnRlcm5hbCAKWC1NUy1FeGNoYW5nZS1Pcmdhbml6YXRpb24tQXV0aE1lY2hhbmlzbTogMDQgClgtTVMtRXhjaGFuZ2UtT3JnYW5pemF0aW9uLUF1dGhTb3VyY2U6IArigK/igK/igK/igK/igK/igK/igK/igK/igK/igK/igK/igK/igK/igK/igK8gY29udG9zby5jb20gClgtTVMtSGFzLUF0dGFjaDogeWVzIApYLU1TLUV4Y2hhbmdlLU9yZ2FuaXphdGlvbi1OZXR3b3JrLU1lc3NhZ2UtSWQ6IArigK/igK/igK/igK/igK/igK/igK/igK/igK/igK/igK/igK/igK/igK/igK8gMGZmZGI0MDItZWMwMy00MmM4LTVkMzItMDhkNGYzN2JiNTE3IApYLU1TLUV4Y2hhbmdlLU9yZ2FuaXphdGlvbi1TQ0w6IC0xIApYLU1TLVRORUYtQ29ycmVsYXRvcjogClgtTVMtRXhjaGFuZ2UtT3JnYW5pemF0aW9uLVJlY29yZFJldmlld0NmbVR5cGU6IDAgCngtbXMtcHVibGljdHJhZmZpY3R5cGU6IEVtYWkKCmBgYGh0dHAKTUlNRS1WZXJzaW9uOiAxLjAgCkNvbnRlbnQtVHlwZTogbXVsdGlwYXJ0L21peGVkOyAK4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCvIGJvdW5kYXJ5PSJfMDA0XzRhYWRlMjU0Nzc5ODQ0MWVhYjUxODhhN2EyNDM2YmMxY29udG9zb18iIAogCi0tXzAwNF80YWFkZTI1NDc3OTg0NDFlYWI1MTg4YTdhMjQzNmJjMWNvbnRvc29fIApDb250ZW50LVR5cGU6IG11bHRpcGFydC9hbHRlcm5hdGl2ZTsgCuKAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAryBib3VuZGFyeT0iXzAwMF80YWFkZTI1NDc3OTg0NDFlYWI1MTg4YTdhMjQzNmJjMWNvbnRvc29fIiAKIAotLV8wMDBfNGFhZGUyNTQ3Nzk4NDQxZWFiNTE4OGE3YTI0MzZiYzFjb250b3NvXyAKQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PSJpc28tODg1OS0xIiAKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogcXVvdGVkLXByaW50YWJsZSAKIApUaGUgYXR0YWNobWVudCBpcyBhbiBlbWFpbC4gCiAKLS1fMDAwXzRhYWRlMjU0Nzc5ODQ0MWVhYjUxODhhN2EyNDM2YmMxY29udG9zb18gCkNvbnRlbnQtVHlwZTogdGV4dC9odG1sOyBjaGFyc2V0PSJpc28tODg1OS0xIiAKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogcXVvdGVkLXByaW50YWJsZSAKIAo8aHRtbD4gCjxoZWFkPiAKPG1ldGEgaHR0cC1lcXVpdj0zRCJDb250ZW50LVR5cGUiIGNvbnRlbnQ9M0QidGV4dC9odG1sOyBjaGFyc2V0PTNEaXNvLTg4NTktPSAKMSI+IAo8c3R5bGUgdHlwZT0zRCJ0ZXh0L2NzcyIgc3R5bGU9M0QiZGlzcGxheTpub25lOyI+PCEtLSBQIHttYXJnaW4tdG9wOjA7bWFyZ2k9IApuLWJvdHRvbTowO30gLS0+PC9zdHlsZT4gCjwvaGVhZD4gCjxib2R5IGRpcj0zRCJsdHIiPiAKPGRpdiBpZD0zRCJkaXZ0YWdkZWZhdWx0d3JhcHBlciIgc3R5bGU9M0QiZm9udC1zaXplOjEycHQ7Y29sb3I6IzAwMDAwMDtmb250PSAKLWZhbWlseTpDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyIgZGlyPTNEImx0ciI+IAo8cD5UaGUgYXR0YWNobWVudCBpcyBhbiBlbWFpbC48L3A+IAo8L2Rpdj4gCjwvYm9keT4gCjwvaHRtbD4gCiAKLS1fMDAwXzRhYWRlMjU0Nzc5ODQ0MWVhYjUxODhhN2EyNDM2YmMxY29udG9zb18tLSAKIAotLV8wMDRfNGFhZGUyNTQ3Nzk4NDQxZWFiNTE4OGE3YTI0MzZiYzFjb250b3NvXyAKQ29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi9vY3RldC1zdHJlYW07IG5hbWU9IkF0dGFjaG1lbnQgZW1haWwuZW1sIiAKQ29udGVudC1EZXNjcmlwdGlvbjogQXR0YWNobWVudCBlbWFpbC5lbWwgCkNvbnRlbnQtRGlzcG9zaXRpb246IGF0dGFjaG1lbnQ7IGZpbGVuYW1lPSJBdHRhY2htZW50IGVtYWlsLmVtbCI7IHNpemU9NDA4OyAK4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCv4oCvIGNyZWF0aW9uLWRhdGU9Ik1vbiwgMDQgU2VwIDIwMTcgMDk6NTk6NDMgR01UIjsgCuKAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAr+KAryBtb2RpZmljYXRpb24tZGF0ZT0iTW9uLCAwNCBTZXAgMjAxNyAwOTo1OTo0MyBHTVQiIApDb250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiBiYXNlNjQgCiAKUm5KdmJUb0pRV1J0YVc1cGMzUnlZWFJ2Y2lBOFlXUnRhVzVBZEdWdVlXNTBMVVZZU0VJdE1UUTNNUzVqYjIwK0RRcFRaVzUwT2dsTiAKYjI1a1lYa3NJRk5sY0hSbGJXSmxjaUEwTENBeU1ERTNJRE02TWpZZ1VFME5DbFJ2T2dsVGNtbDJZWEprYUdGdUlFaGxZbUpoY2cwSyAKVTNWaWFtVmpkRG9KUVhSMFlXTm9iV1Z1ZENCbGJXRnBiQTBLRFFwSklIZHBiR3dnWVhSMFlXTm9JSFJvYVhNZ1pXMWhhV3dnZEc4ZyAKWVc1dmRHaGxjaUJ0WVdsc0xnMEsgCiAKLS1fMDA0XzRhYWRlMjU0Nzc5ODQ0MWVhYjUxODhhN2EyNDM2YmMxY29udG9zb18tLSA=

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
  "description": "message: reply",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
