---
title: "Send mail"
description: "Send the message specified in the request body. The message is saved in the Sent Items folder by default."
author: "abheek-das"
localization_priority: Priority
ms.prod: "outlook"
doc_type: apiPageType
---

# Send mail

Namespace: microsoft.graph

Send the message specified in the request body, in either JSON or MIME format. The message is saved in the Sent Items folder by default. 

Alternatively, [create a draft message](../api/user-post-messages.md) to send later.

When using JSON format:
- Include a [file attachment](../resources/fileattachment.md) in the same **sendMail** action call.

When using MIME format:
- Microsoft Graph does not suppport editing MIME properties individually, the complete MIME content must be provided in a base64-encoded string.
- S/MIME properties must be previously included in the base64-encoded string.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Mail.Send    |
|Delegated (personal Microsoft account) | Mail.Send    |
|Application | Mail.Send |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/sendMail
POST /users/{id | userPrincipalName}/sendMail
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | JSON: application/json <br/> MIME: text/plain |

## Request body
When using JSON format, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|message|[Message](../resources/message.md)|The message to send. Required.|
|saveToSentItems|Boolean|Indicates whether to save the message in Sent Items. Specify it only if the parameter is false; default is true.  Optional. |

When using MIME format no parameters are required, include only the MIME content as **a Base64-enconded string** in the request body.

## Response

If successful, this method returns `202 Accepted` response code. It does not return anything in the response body.

## Examples
### Example 1: Send a new email using JSON format
Here is an example of how to call this API.
##### Request 1
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_sendmail"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/sendMail
Content-type: application/json

{
  "message": {
    "subject": "Meet for lunch?",
    "body": {
      "contentType": "Text",
      "content": "The new cafeteria is open."
    },
    "toRecipients": [
      {
        "emailAddress": {
          "address": "fannyd@contoso.onmicrosoft.com"
        }
      }
    ],
    "ccRecipients": [
      {
        "emailAddress": {
          "address": "danas@contoso.onmicrosoft.com"
        }
      }
    ]
  },
  "saveToSentItems": "false"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-sendmail-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-sendmail-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/user-sendmail-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-sendmail-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response 1
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 202 Accepted
```

##### Request 2
The next example creates a message with custom Internet message headers and sends the message.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_sendmail_with_headers"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/sendMail
Content-type: application/json

{
  "message": {
    "subject": "9/9/2018: concert",
    "body": {
      "contentType": "HTML",
      "content": "The group represents Nevada."
    },
    "toRecipients": [
      {
        "emailAddress": {
          "address": "AlexW@contoso.OnMicrosoft.com"
        }
      }
    ],
    "internetMessageHeaders":[
      {
        "name":"x-custom-header-group-name",
        "value":"Nevada"
      },
      {
        "name":"x-custom-header-group-id",
        "value":"NV001"
      }
    ]
  }
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-sendmail-with-headers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-sendmail-with-headers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/user-sendmail-with-headers-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-sendmail-with-headers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response 2
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 202 Accepted
```

##### Request 3

The next example creates a message with a file attachment and sends the message.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_sendmail_with_attachment"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/sendMail
Content-type: application/json

{
  "message": {
    "subject": "Meet for lunch?",
    "body": {
      "contentType": "Text",
      "content": "The new cafeteria is open."
    },
    "toRecipients": [
      {
        "emailAddress": {
          "address": "meganb@contoso.onmicrosoft.com"
        }
      }
    ],
    "attachments": [
      {
        "@odata.type": "#microsoft.graph.fileAttachment",
        "name": "attachment.txt",
        "contentType": "text/plain",
        "contentBytes": "SGVsbG8gV29ybGQh"
      }
    ]
  }
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-sendmail-with-attachment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-sendmail-with-attachment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/user-sendmail-with-attachment-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-sendmail-with-attachment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response 3

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
```
### Example 2: Send a new message using MIME format
##### Request
<!-- {
  "blockType": "request",
  "name": "message_send_mime_beta"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/sendMail
Content-type: text/plain

RnJvbTogQWxleCBXaWxiZXIgPEFsZXhXQE0zNjV4NzY1MTQwLk9uTWljcm9zb2Z0LmNvbT4KVG86IE1lZ2FuIEJvd2VuIDxNZWdhbkJATTM2NXg3NjUxNDAuT25NaWNyb3NvZnQuY29tPgpTdWJqZWN0OiBJbnRlcm5hbCBSZXN1bWUgU3VibWlzc2lvbjogU2FsZXMgQXNzb2NpYXRlClRocmVhZC1Ub3BpYzogSW50ZXJuYWwgUmVzdW1lIFN1Ym1pc3Npb246IFNhbGVzIEFzc29jaWF0ZQpUaHJlYWQtSW5kZXg6IEFRSFhEdCtMcHRGck4rcUg3VUdCUTliRlNyMWtjdz09CkRhdGU6IFN1biwgMjggRmViIDIwMjEgMDc6MTU6MDAgKzAwMDAKTWVzc2FnZS1JRDoKCTxNV0hQUjEzMDFNQjIxOTExMDIxNEQ3NkQ5QzI4MjI2MjI3OUFEOUE5QE1XSFBSMTMwMU1CMjE5MS5uYW1wcmQxMy5wcm9kLm91dGxvb2suY29tPgpDb250ZW50LUxhbmd1YWdlOiBlbi1VUwpYLU1TLUhhcy1BdHRhY2g6ClgtTVMtVE5FRi1Db3JyZWxhdG9yOgpYLU1TLUV4Y2hhbmdlLU9yZ2FuaXphdGlvbi1SZWNvcmRSZXZpZXdDZm1UeXBlOiAwCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD0iaXNvLTg4NTktMSIKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogcXVvdGVkLXByaW50YWJsZQpNSU1FLVZlcnNpb246IDEuMAoKSGksIE1lZ2FuLgoKSSBoYXZlIGFuIGludGVyZXN0IGluIHRoZSBTYWxlcyBBc3NvY2lhdGUgcG9zaXRpb24uIFBsZWFzZSBjb25zaWRlciBteSByZXN1PQptZSwgd2hpY2ggeW91IGNhbj0yMAphY2Nlc3MgaGVyZS4uLgoKaHR0cHM6Ly9teS5zaGFyZXBvaW50LmNvbS9wZXJzb25hbC9hbGV4d19vbm1pY3Jvc29mdF9jb20vX2xheW91dHMvMTUvZ3Vlc3RhPQpjY2Vzcy5hc3B4P2d1ZXN0YWNjZXNzdG9rZW49M0RFamEwejglMmZnJTJmJTJiMW5LVjg0anc4b0V1c2Nkd0xHM1AxOHViWk5COXM9CjBEMmMlM2QmZG9jaWQ9M0QxMzUwMTQwMTczOGFiNDgxYmFmOTQ4NTNjNGFjOTM2NWYmcmV2PTNEMQoKQmVzdCBSZWdhcmRzLApBbGV4
```
##### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user: sendMail",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

