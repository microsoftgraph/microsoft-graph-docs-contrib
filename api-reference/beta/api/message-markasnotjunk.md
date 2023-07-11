---
title: "message: markAsNotJunk"
description: "Mark a message as not junk."
author: "kagunase"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# message: markAsNotJunk

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Mark a [message](../resources/message.md) as not junk. This API removes the sender from the list of blocked senders and moves the message to the **Inbox** folder, when **moveToInbox** is `true`.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
|Delegated (work or school account) | Mail.ReadWrite    |
|Delegated (personal Microsoft account) | Mail.ReadWrite    |
|Application | Mail.ReadWrite |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/messages/{id}/markAsNotJunk
POST /users/{id | userPrincipalName}/messages/{id}/markAsNotJunk
POST /me/mailFolders/{id}/messages/{id}/markAsNotJunk
POST /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}/markAsNotJunk
```

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | `Bearer {token}`. Required. |
| Content-Type | `application/json`. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter   | Type |Description|
|:---------------|:--------|:----------|
|moveToInbox|Boolean|`True` moves the **message** to the **Inbox** folder.| 

## Response

If successful, this method returns a `202 Accepted` response code and a [message](../resources/message.md) object in the response body.

## Example

### Request

The following request moves the specified message from the **Junk Email** to the **Inbox** folder and removes the sender from the list of blocked senders.

<!-- {
  "blockType": "request",
  "sampleKeys": ["AAMkADhAAATs28OAAA="],
  "name": "message_markasnotjunk"
}-->

```http
POST https://graph.microsoft.com/beta/me/messages/AAMkADhAAATs28OAAA=/markAsNotJunk
Content-type: application/json

{
  "moveToInbox": true
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message"
} -->

```http
HTTP/1.1 202 Accepted
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#message",
  "@odata.type": "#microsoft.graph.message",
  "@odata.etag": "W/\"FwAAABYAAAC4ofQHEIqCSbQPot83AFcbAAAW/0tB\"",
  "id": "AAMkADhAAAW-VPeAAA=",
  "createdDateTime": "2018-08-12T08:43:22Z",
  "lastModifiedDateTime": "2018-08-15T19:47:54Z",
  "changeKey": "FwAAABYAAAC4ofQHEIqCSbQPot83AFcbAAAW/0tB",
  "categories": [],
  "receivedDateTime": "2018-08-12T08:43:22Z",
  "sentDateTime": "2018-08-12T08:43:20Z",
  "hasAttachments": false,
  "internetMessageId": "<00535324-5988-4b6a-b9af-d44cf2d0b691@MWHPR2201MB1022.namprd22.prod.outlook.com>",
  "subject": "Undeliverable: Meet for lunch?",
  "bodyPreview": "Delivery has failed to these recipients or groups:\r\n\r\nfannyd@contoso.onmicrosoft.com (fannyd@contoso.onmicrosoft.com)\r\nYour message couldn't be delivered. Despite repeated attempts to deliver your message, querying the Domain Name System (DNS) for the rec",
  "importance": "normal",
  "parentFolderId": "AAMkADhAAAAAAEKAAA=",
  "conversationId": "AAQkADhJzfbkARFhe5kKhjihSA=",
  "isDeliveryReceiptRequested": null,
  "isReadReceiptRequested": false,
  "isRead": false,
  "isDraft": false,
  "webLink": "https://outlook.office365.com/owa/?ItemID=AAMkADhAAAW%2FVPeAAA%3D&exvsurl=1&viewmodel=ReadMessageItem",
  "inferenceClassification": "focused",
  "body": {
    "contentType": "html",
    "content": "<html></html>"
  },
  "sender": {
    "emailAddress": {
      "name": "Microsoft Outlook",
      "address": "MicrosoftExchange329e71ec88ae4615bbc36ab6ce41109e@contoso.onmicrosoft.com"
    }
  },
  "from": {
    "emailAddress": {
      "name": "Microsoft Outlook",
      "address": "MicrosoftExchange329e71ec88ae4615bbc36ab6ce41109e@contoso.onmicrosoft.com"
    }
  },
  "toRecipients": [
    {
      "emailAddress": {
        "name": "fannyd@contoso.onmicrosoft.com",
        "address": "fannyd@contoso.onmicrosoft.com"
      }
    },
    {
      "emailAddress": {
        "name": "danas@contoso.onmicrosoft.com",
        "address": "danas@contoso.onmicrosoft.com"
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
  "description": "message: markasnotjunk",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
