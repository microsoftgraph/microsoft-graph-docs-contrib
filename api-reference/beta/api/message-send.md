---
title: "message: send"
description: "Send a message in the draft folder or a new MIME message."
localization_priority: Normal
author: "abheek-das"
ms.prod: "outlook"
doc_type: apiPageType
---

# message: send

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Send a message in the draft folder or a new MIME message. The draft message can be a new message draft, reply draft, reply-all draft, or a forward draft. The message is then saved in the Sent Items folder.

When sending a new message in MIME format, include only the MIME content in the request body.

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
POST /me/messages/{id}/send
POST /users/{id | userPrincipalName}/messages/{id}/send
POST https://graph.microsoft.com/v1.0/me/sendMail
```

## Request headers

| Name | Type | Description |
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required |
| Content-Length | number | 0. Required |
| Content-Type | string  | Nature of the data in the body of an entity. Required for new MIME messages <br/> Use text/plain for MIME content and application/json for a JSON object.|

## Request body
For sending an existing draft do not specify a body in the request. For sending a new MIME content no parameters are required, just paste the MIME string in the body of the request.

## Response

If successful, this method returns `202 Accepted` response code. It does not return anything in the response body.

## Examples
### Example 1: Send an existing draft message

Here is an example of how to call this API.
##### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "message_send"
}-->

```http
POST https://graph.microsoft.com/beta/me/messages/{id}/send
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/message-send-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/message-send-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/message-send-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/message-send-java-snippets.md)]
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

### Example 2: Send a new message with MIME content
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

```json
HTTP/1.1 201 Accepted
Content-type: application/json

{
    "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users('94447c6e-ea4c-494c-a9ed-d905e366c5cb')/messages/$entity",
    "@odata.etag":"W/\"CQAAABYAAABK4UfANE/UR5clSilZtIuWAAC1vdti\"",
    "id":"AAMkADNlNYjSAAA=",
    "createdDateTime":"2017-07-22T01:53:56Z",
    "lastModifiedDateTime":"2017-07-22T01:53:57Z",
    "changeKey":"CQAAABYAAABK4UfANE/UR5clSilZtIuWAAC1vdti",
    "receivedDateTime":"2017-07-22T01:53:57Z",
    "sentDateTime":"2017-07-22T01:53:57Z",
    "hasAttachments":false,
    "internetMessageId":"<MWHPR1301MB@MWHPR1301MB.namprd13.prod.outlook.com>",
    "subject":"Did you see last night's game?",
    "bodyPreview":"They were awesome!"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "message: send",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


