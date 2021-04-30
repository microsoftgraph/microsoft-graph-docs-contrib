---
title: "message: replyAll"
description: "Reply to all recipients of a message by specifying a comment and modifying any updateable properties "
author: "abheek-das"
localization_priority: Normal
ms.prod: "outlook"
doc_type: apiPageType
---

# message: replyAll

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reply to all recipients of a message in either JSON or MIME format. The message is then saved in the Sent Items folder.

Alternatively, [create a draft to reply-all to a message](../api/message-createreplyall.md), and [send](../api/message-send.md) it later.

When using JSON format:
- Add a comment or modify any updateable properties of the [message](/graph/api-reference/beta/resources/message.md) in a single **replyAll** call 
- Specify either a comment or the **body** property of the `message` parameter. Specifying both will return an HTTP 400 Bad Request error.
- If the **replyTo** property is specified in the original message, per Internet Message Format ([RFC 2822](https://www.rfc-editor.org/info/rfc2822)), send the reply to the recipients in **replyTo** and not the recipient in the **from** property.

When using MIME format:
- Microsoft Graph does not support editing MIME properties individually, the complete MIME content must be provided in a base64-encoded string.
- S/MIME properties can be included in the base64-encoded string.

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
POST /users/me/messages/{id}/replyAll
POST /users/{id | userPrincipalName}/messages/{id}/replyAll
POST /me/mailFolders/{id}/messages/{id}/replyAll
POST /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}/replyAll
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required|
| Content-Type | string  | Nature of the data in the body of an entity. Required <br/> Use text/plain for MIME content and application/json for a JSON object|

## Request body
When using JSON format, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|A comment to include. Can be an empty string.|
|message|[message](../resources/message.md)|Any writeable properties to update in the reply message.|

When specifying the body in MIME format no parameters are required, include only the MIME content as **a Base64-encoded string** in the request body.

## Response

If successful, this method returns `202 Accepted` response code. It does not return anything in the response body.

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

RnJvbTogQWxleCBXaWxiZXIgPEFsZXhXQE0zNjV4NzY1MTQwLk9uTWljcm9zb2Z0LmNvbT4KVG86IE1lZ2FuIEJvd2VuIDxNZWdhbkJATTM2NXg3NjUxNDAuT25NaWNyb3NvZnQuY29tPgpTdWJqZWN0OiBJbnRlcm5hbCBSZXN1bWUgU3VibWlzc2lvbjogU2FsZXMgQXNzb2NpYXRlClRocmVhZC1Ub3BpYzogSW50ZXJuYWwgUmVzdW1lIFN1Ym1pc3Npb246IFNhbGVzIEFzc29jaWF0ZQpUaHJlYWQtSW5kZXg6IEFRSFhEdCtMcHRGck4rcUg3VUdCUTliRlNyMWtjdz09CkRhdGU6IFN1biwgMjggRmViIDIwMjEgMDc6MTU6MDAgKzAwMDAKTWVzc2FnZS1JRDoKCTxNV0hQUjEzMDFNQjIxOTExMDIxNEQ3NkQ5QzI4MjI2MjI3OUFEOUE5QE1XSFBSMTMwMU1CMjE5MS5uYW1wcmQxMy5wcm9kLm91dGxvb2suY29tPgpDb250ZW50LUxhbmd1YWdlOiBlbi1VUwpYLU1TLUhhcy1BdHRhY2g6ClgtTVMtVE5FRi1Db3JyZWxhdG9yOgpYLU1TLUV4Y2hhbmdlLU9yZ2FuaXphdGlvbi1SZWNvcmRSZXZpZXdDZm1UeXBlOiAwCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD0iaXNvLTg4NTktMSIKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogcXVvdGVkLXByaW50YWJsZQpNSU1FLVZlcnNpb246IDEuMAoKSGksIE1lZ2FuLgoKSSBoYXZlIGFuIGludGVyZXN0IGluIHRoZSBTYWxlcyBBc3NvY2lhdGUgcG9zaXRpb24uIFBsZWFzZSBjb25zaWRlciBteSByZXN1PQptZSwgd2hpY2ggeW91IGNhbj0yMAphY2Nlc3MgaGVyZS4uLgoKaHR0cHM6Ly9teS5zaGFyZXBvaW50LmNvbS9wZXJzb25hbC9hbGV4d19vbm1pY3Jvc29mdF9jb20vX2xheW91dHMvMTUvZ3Vlc3RhPQpjY2Vzcy5hc3B4P2d1ZXN0YWNjZXNzdG9rZW49M0RFamEwejglMmZnJTJmJTJiMW5LVjg0anc4b0V1c2Nkd0xHM1AxOHViWk5COXM9CjBEMmMlM2QmZG9jaWQ9M0QxMzUwMTQwMTczOGFiNDgxYmFmOTQ4NTNjNGFjOTM2NWYmcmV2PTNEMQoKQmVzdCBSZWdhcmRzLApBbGV4

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

If the MIME content in the request body is malformed, this method returns the following error message.

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


