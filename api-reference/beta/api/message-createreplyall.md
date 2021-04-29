---
title: "message: createReplyAll"
description: "Create a draft of a reply-all message to include a comment or update any message properties, "
localization_priority: Normal
author: "abheek-das"
ms.prod: "outlook"
doc_type: apiPageType
---

# message: createReplyAll

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a draft to reply to all recipients of a [message](../resources/message.md) in either JSON or MIME format.

When ready, [send](../api/message-send.md) the draft message.

When using JSON format:
- Include a comment or update any message properties, all in one **createReplyAll** call.
- Subsequently [update](../api/message-update.md) the draft message.
- Specify either a comment or the **body** property of the `message` parameter. Specifying both will return an HTTP 400 Bad Request error.
- If the **replyTo** property is specified in the original message, per Internet Message Format ([RFC 2822](https://www.rfc-editor.org/info/rfc2822)), you should send the reply to the recipients in the **replyTo** and **toRecipients** properties, and not the recipients in the **from** and **toRecipients** properties. 

When using MIME format:
- Microsoft Graph does not suppport editing MIME properties individually, the complete MIME content must be provided in a base64-encoded string.
- S/MIME properties must be previously included in the base64-encoded string.

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
POST /me/messages/{id}/createReplyAll
POST /users/{id | userPrincipalName}/messages/{id}/createReplyAll
POST /me/mailFolders/{id}/messages/{id}/createReplyAll
POST /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}/createReplyAll
```
## Request headers
| Name       | Type | Description| 
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type | string  | Nature of the data in the body of an entity. Required. <br/> Use text/plain for MIME content and application/json for a JSON object|

## Request body
When using JSON format, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|A comment to include. Can be an empty string.|
|message|[message](../resources/message.md)|Any writeable properties to update in the reply-all message.|

When specifying the body in MIME format no parameters are required, include only the MIME content as **a Base64-enconded string** in the request body.

## Response

If successful, this method returns `201 Created` response code and [message](../resources/message.md) object in the response body.

## Examples
### Example 1: Create a draft in JSON format to reply-all to an existing message
The following example creates a draft to reply all, and adds an attachment and comment all in one **createReplyAll** call.
##### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "message_createreplyall"
}-->
```http
POST https://graph.microsoft.com/beta/me/messages/AAMkADA1MTAAAH5JaKAAA=/createReplyAll
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
    "comment": "if the project gets approved, please take a look at the attached guidelines before you decide on the name." 
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/message-createreplyall-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/message-createreplyall-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/message-createreplyall-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/message-createreplyall-java-snippets.md)]
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

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Me/messages/$entity",
  "@odata.id": "https://graph.microsoft.com/beta/users('86b6ceaf-57f7-4278-97c4-4da0a97f6cdb@70559e59-b378-49ea-8e53-07a3a3d27f5b')/messages('AAMkADA1MTAAAH5JKpAAA=')",
  "@odata.etag": "W/\"CQAAABYAAADX8oL1Wa7jQbcPAHouCzswAAAH5/DP\"",
  "id": "AAMkADA1MTAAAH5JKpAAA=",
  "subject": "RE: Let's start a group",
  "body": {
    "contentType": "HTML",
    "content": "<html>\r\n<body dir=\"ltr\">\r\nif the project gets approved, please take a look at the attached guidelines before you decide on the name.\r\n<b>From:</b> Admin<br>\r\n<b>Sent:</b> Tuesday, March 15, 2016 6:36:32 AM<br>\r\n<b>To:</b> Samantha Booth; Randi Welch<br>\r\n<b>Subject:</b> RE: Let's start a group\r\n<div>Samantha, Randi, would you name the group please?\r\n<b>From:</b> Samantha Booth<br>\r\n<b>Sent:</b> Friday, March 4, 2016 12:23:35 AM<br>\r\n<b>To:</b> Admin<br>\r\n<b>Subject:</b> Re: Let's start a group</font>\r\n</body>\r\n</html>"
  },
  "sender": {
    "emailAddress": {
      "name": "Admin",
      "address": "admin@contoso.onmicrosoft.com"
    }
  },
  "from": null,
  "toRecipients": [
    {
      "emailAddress": {
        "name": "Samantha Booth",
        "address": "samanthab@contoso.onmicrosoft.com"
      }
    },
    {
      "emailAddress": {
        "name": "Randi Welch",
        "address": "randiw@contoso.onmicrosoft.com"
      }
    }
  ]
}
```

### Example 2: Create a draft using MIME format to reply-all to an existing message
<!-- {
  "blockType": "request",
  "name": "message_createreplyall_mime_beta"
}-->

```http
POST https://graph.microsoft.com/beta/me/messages/AAMkADA1MTAAAH5JaLAAA=/createReplyAll
Content-Type: text/plain

Q29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi9wa2NzNy1taW1lOw0KCW5hbWU9c21pbWUucDdtOw0KCXNtaW1lLXR5cGU9ZW52ZWxvcGVkLWRhdGENCk1pbWUtVmVyc2lvbjogMS4wIChNYWMgT1MgWCBNYWlsIDEzLjAgXCgzNjAxLjAuMTBcKSkNClN1YmplY3Q6IFJlOiBUZXN0aW5nIFMvTUlNRQ0KQ29udGVudC1EaXNwb3Np...
```
##### Response
Here is an example of the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.message",
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "message: createReplyAll",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


