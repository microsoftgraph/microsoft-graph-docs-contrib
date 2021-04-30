---
title: "message: createForward"
description: "Create a draft to forward the specified message. You can then update the draft to add content to the **body** or change other message properties, or, simply send the draft."
localization_priority: Normal
author: "abheek-das"
ms.prod: "outlook"
doc_type: apiPageType
---

# message: createForward

Namespace: microsoft.graph

Create a draft to forward an existing [message](../resources/message.md), in either JSON or MIME format. 

When ready, [send](../api/message-send.md) the draft message.

Alternatively, [forward a message](../api/message-forward.md) in a single operation.

When using JSON format:
- You can include a comment, specify recipients, and update any message properties all in one **createForward** call.
- You can [update](../api/message-update.md) the draft to add content to the **body** or change other message properties.

When using MIME format:
- Microsoft Graph does not support editing MIME properties individually, the complete MIME content must be provided in a base64-encoded string.
- S/MIME properties can be included in the base64-encoded string.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

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
| Content-Type | string  | Nature of the data in the body of an entity. <br/> Use text/plain for MIME content and application/json for a JSON object. |

## Request body
This method does not require a request body. However, for creating a forward draft using MIME format, include only the MIME content as **a Base64-encoded string** in the request body. 

## Response

If successful, this method returns `201 Created` response code and [Message](../resources/message.md) object in the response body.

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

RnJvbTogQWxleCBXaWxiZXIgPEFsZXhXQE0zNjV4NzY1MTQwLk9uTWljcm9zb2Z0LmNvbT4KVG86IE1lZ2FuIEJvd2VuIDxNZWdhbkJATTM2NXg3NjUxNDAuT25NaWNyb3NvZnQuY29tPgpTdWJqZWN0OiBJbnRlcm5hbCBSZXN1bWUgU3VibWlzc2lvbjogU2FsZXMgQXNzb2NpYXRlClRocmVhZC1Ub3BpYzogSW50ZXJuYWwgUmVzdW1lIFN1Ym1pc3Npb246IFNhbGVzIEFzc29jaWF0ZQpUaHJlYWQtSW5kZXg6IEFRSFhEdCtMcHRGck4rcUg3VUdCUTliRlNyMWtjdz09CkRhdGU6IFN1biwgMjggRmViIDIwMjEgMDc6MTU6MDAgKzAwMDAKTWVzc2FnZS1JRDoKCTxNV0hQUjEzMDFNQjIxOTExMDIxNEQ3NkQ5QzI4MjI2MjI3OUFEOUE5QE1XSFBSMTMwMU1CMjE5MS5uYW1wcmQxMy5wcm9kLm91dGxvb2suY29tPgpDb250ZW50LUxhbmd1YWdlOiBlbi1VUwpYLU1TLUhhcy1BdHRhY2g6ClgtTVMtVE5FRi1Db3JyZWxhdG9yOgpYLU1TLUV4Y2hhbmdlLU9yZ2FuaXphdGlvbi1SZWNvcmRSZXZpZXdDZm1UeXBlOiAwCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD0iaXNvLTg4NTktMSIKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogcXVvdGVkLXByaW50YWJsZQpNSU1FLVZlcnNpb246IDEuMAoKSGksIE1lZ2FuLgoKSSBoYXZlIGFuIGludGVyZXN0IGluIHRoZSBTYWxlcyBBc3NvY2lhdGUgcG9zaXRpb24uIFBsZWFzZSBjb25zaWRlciBteSByZXN1PQptZSwgd2hpY2ggeW91IGNhbj0yMAphY2Nlc3MgaGVyZS4uLgoKaHR0cHM6Ly9teS5zaGFyZXBvaW50LmNvbS9wZXJzb25hbC9hbGV4d19vbm1pY3Jvc29mdF9jb20vX2xheW91dHMvMTUvZ3Vlc3RhPQpjY2Vzcy5hc3B4P2d1ZXN0YWNjZXNzdG9rZW49M0RFamEwejglMmZnJTJmJTJiMW5LVjg0anc4b0V1c2Nkd0xHM1AxOHViWk5COXM9CjBEMmMlM2QmZG9jaWQ9M0QxMzUwMTQwMTczOGFiNDgxYmFmOTQ4NTNjNGFjOTM2NWYmcmV2PTNEMQoKQmVzdCBSZWdhcmRzLApBbGV4
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#messages/$entity",
    "@odata.etag": "W/\"CQAAABYAAADt09JRVj4bRqYt7q6MVBpAAAAiQc5k\"",
    "id": "AAMkAGNhOWVmNmEyLTgwNjItNDI0NC05ZGI5LWZhYjc4MzcxZWE3YQBGAAAAAADW_NNy5NNRT51Qs4RFfm_PBwDt09JRVj4bRqYt7q6MVBpAAAAAAAEPAADt09JRVj4bRqYt7q6MVBpAAAAiTjnQAAA=",
    "createdDateTime": "2021-04-23T18:15:43Z",
    "lastModifiedDateTime": "2021-04-23T18:15:43Z",
    "changeKey": "CQAAABYAAADt09JRVj4bRqYt7q6MVBpAAAAiQc5k",
    "categories": [],
    "receivedDateTime": "2021-04-23T18:15:43Z",
    "sentDateTime": "2021-02-28T07:15:00Z",
    "hasAttachments": false,
    "internetMessageId": "<MWHPR1301MB219110214D76D9C282262279AD9A9@MWHPR1301MB2191.namprd13.prod.outlook.com>",
    "subject": "Internal Resume Submission: Sales Associate",
    "bodyPreview": "Hi, Megan.I have an interest in the Sales Associate position. Please consider my resu=e, which you can access here...https://my.sharepoint.com/personal/alexw_onmicrosoft_com/_layouts/15/guesta=cess.aspx?guestaccesstoken=Eja0z8%2fg%2f%2b1nKV84jw8oEusc",
    "importance": "normal",
    "parentFolderId": "AQMkAGNhOWVmNmEyLTgwNjItNDI0NAAtOWRiOS1mYWI3ODM3MWVhN2EALgAAA9b403Lk01FPnVCzhEV_b48BAO3T0lFWPhtGpi3uroxUGkAAAAIBDwAAAA==",
    "conversationId": "AAQkAGNhOWVmNmEyLTgwNjItNDI0NC05ZGI5LWZhYjc4MzcxZWE3YQAQAKbRazfqh_1BgUPWxUq9ZHM=",
    "conversationIndex": "AQHXDt+LptFrN+qH7UGBQ9bFSr1kcw==",
    "isDeliveryReceiptRequested": null,
    "isReadReceiptRequested": false,
    "isRead": true,
    "isDraft": true,
    "webLink": "https://outlook.office365.com/owa/?ItemID=AAMkAGNhOWVmNmEyLTgwNjItNDI0NC05ZGI5LWZhYjc4MzcxZWE3YQBGAAAAAADW%2BNNy5NNRT51Qs4RFfm%2BPBwDt09JRVj4bRqYt7q6MVBpAAAAAAAEPAADt09JRVj4bRqYt7q6MVBpAAAAiTjnQAAA%3D&exvsurl=1&viewmodel=ReadMessageItem",
    "inferenceClassification": "focused",
    "body": {
        "contentType": "text",
        "content": "Hi, Megan.I have an interest in the Sales Associate position. Please consider my resu=e, which you can access here...https://my.sharepoint.com/personal/alexw_onmicrosoft_com/_layouts/15/guesta=cess.aspx?guestaccesstoken=Eja0z8%2fg%2f%2b1nKV84jw8oEuscdwLG3P18ubZNB9s=D2c%3d&docid=13501401738ab481baf94853c4ac9365f&rev=1Best Regards,Alex"
    },
    "sender": {
        "emailAddress": {
            "name": "Alex Wilber",
            "address": "AlexW@M365x765140.OnMicrosoft.com"
        }
    },
    "from": {
        "emailAddress": {
            "name": "Alex Wilber",
            "address": "AlexW@M365x765140.OnMicrosoft.com"
        }
    },
    "toRecipients": [
        {
            "emailAddress": {
                "name": "Megan Bowen",
                "address": "MeganB@M365x765140.OnMicrosoft.com"
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
<!-- {
  "type": "#page.annotation",
  "description": "message: createForward",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

