---
title: "message: reply"
description: "Reply to the sender of a message, add a comment or modify any updateable properties all in one **reply** call. "
localization_priority: Normal
author: "abheek-das"
ms.prod: "outlook"
doc_type: apiPageType
---

# message: reply

Namespace: microsoft.graph.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reply to the sender of a message in either JSON or MIME format. Add a comment or modify any updateable properties all in one **reply** call. The message is then saved in the Sent Items folder.

Alternatively, you can first [create a draft reply message](../api/message-createreply.md) to include a comment or update any message properties, and then [send](../api/message-send.md) the reply.

>[!NOTE]
> * You can specify either a comment or the **body** property of the `message` parameter. Specifying both will return an HTTP 400 Bad Request error.
> * If the **replyTo** property is specified in the original message, per Internet Message Format ([RFC 2822](https://www.rfc-editor.org/info/rfc2822)), you should send the reply to the recipients in **replyTo** and not the recipient in the **from** property. 

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
POST /me/messages/{id}/reply
POST /users/{id | userPrincipalName}/messages/{id}/reply
POST /me/mailFolders/{id}/messages/{id}/reply
POST /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}/reply
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required |
| Content-Type | string  | Nature of the data in the body of an entity. Required <br/> Use text/plain for MIME content and application/json for a JSON object|

## Request body
When using JSON format, include a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|A comment to include. Can be an empty string.|
|message|[message](../resources/message.md) | Any writeable properties to update in the reply message.|

When using MIME content no parameters are required, include only the MIME string in the request body.

## Response

If successful, this method returns `202 Accepted` response code. It does not return anything in the response body.

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

RnJvbTogQWxleCBXaWxiZXIgPEFsZXhXQE0zNjV4NzY1MTQwLk9uTWljcm9zb2Z0LmNvbT4KVG86IE1lZ2FuIEJvd2VuIDxNZWdhbkJATTM2NXg3NjUxNDAuT25NaWNyb3NvZnQuY29tPgpTdWJqZWN0OiBJbnRlcm5hbCBSZXN1bWUgU3VibWlzc2lvbjogU2FsZXMgQXNzb2NpYXRlClRocmVhZC1Ub3BpYzogSW50ZXJuYWwgUmVzdW1lIFN1Ym1pc3Npb246IFNhbGVzIEFzc29jaWF0ZQpUaHJlYWQtSW5kZXg6IEFRSFhEdCtMcHRGck4rcUg3VUdCUTliRlNyMWtjdz09CkRhdGU6IFN1biwgMjggRmViIDIwMjEgMDc6MTU6MDAgKzAwMDAKTWVzc2FnZS1JRDoKCTxNV0hQUjEzMDFNQjIxOTExMDIxNEQ3NkQ5QzI4MjI2MjI3OUFEOUE5QE1XSFBSMTMwMU1CMjE5MS5uYW1wcmQxMy5wcm9kLm91dGxvb2suY29tPgpDb250ZW50LUxhbmd1YWdlOiBlbi1VUwpYLU1TLUhhcy1BdHRhY2g6ClgtTVMtVE5FRi1Db3JyZWxhdG9yOgpYLU1TLUV4Y2hhbmdlLU9yZ2FuaXphdGlvbi1SZWNvcmRSZXZpZXdDZm1UeXBlOiAwCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD0iaXNvLTg4NTktMSIKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogcXVvdGVkLXByaW50YWJsZQpNSU1FLVZlcnNpb246IDEuMAoKSGksIE1lZ2FuLgoKSSBoYXZlIGFuIGludGVyZXN0IGluIHRoZSBTYWxlcyBBc3NvY2lhdGUgcG9zaXRpb24uIFBsZWFzZSBjb25zaWRlciBteSByZXN1PQptZSwgd2hpY2ggeW91IGNhbj0yMAphY2Nlc3MgaGVyZS4uLgoKaHR0cHM6Ly9teS5zaGFyZXBvaW50LmNvbS9wZXJzb25hbC9hbGV4d19vbm1pY3Jvc29mdF9jb20vX2xheW91dHMvMTUvZ3Vlc3RhPQpjY2Vzcy5hc3B4P2d1ZXN0YWNjZXNzdG9rZW49M0RFamEwejglMmZnJTJmJTJiMW5LVjg0anc4b0V1c2Nkd0xHM1AxOHViWk5COXM9CjBEMmMlM2QmZG9jaWQ9M0QxMzUwMTQwMTczOGFiNDgxYmFmOTQ4NTNjNGFjOTM2NWYmcmV2PTNEMQoKQmVzdCBSZWdhcmRzLApBbGV4

```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```json
HTTP/1.1 202 Accepted
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