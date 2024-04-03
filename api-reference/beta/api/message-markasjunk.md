---
title: "message: markAsJunk"
description: "Mark a message as junk."
author: "kagunase"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.topic: reference
---

# message: markAsJunk

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Mark a [message](../resources/message.md) as junk. This API adds the sender to the list of blocked senders and moves the message to the **Junk Email** folder, when **moveToJunk** is `true`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "message_markasjunk" } -->
[!INCLUDE [permissions-table](../includes/permissions/message-markasjunk-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/messages/{id}/markAsJunk
POST /users/{id | userPrincipalName}/messages/{id}/markAsJunk
POST /me/mailFolders/{id}/messages/{id}/markAsJunk
POST /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}/markAsJunk
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
|moveToJunk|Boolean|`True` moves the message to the **Junk Email** folder.|

## Response

If successful, this method returns a `202 Accepted` response code and a [message](../resources/message.md) object in the response body.

## Example

### Request

The following request moves the specified message to the **Junk Email** folder and adds the sender to the list of blocked senders.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["AAMkADhAAATs28OAAA="],
  "name": "message_markasjunk"
}-->

```http
POST https://graph.microsoft.com/beta/me/messages/AAMkADhAAATs28OAAA=/markAsJunk
Content-type: application/json

{
  "moveToJunk": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/message-markasjunk-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/message-markasjunk-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/message-markasjunk-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/message-markasjunk-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/message-markasjunk-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/message-markasjunk-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/message-markasjunk-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/message-markasjunk-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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
  "bodyPreview": "Delivery has failed to these recipients or groups:\r\n\r\nfannyd@contoso.com (fannyd@contoso.com)\r\nYour message couldn't be delivered. Despite repeated attempts to deliver your message, querying the Domain Name System (DNS) for the rec",
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
      "address": "MicrosoftExchange329e71ec88ae4615bbc36ab6ce41109e@contoso.com"
    }
  },
  "from": {
    "emailAddress": {
      "name": "Microsoft Outlook",
      "address": "MicrosoftExchange329e71ec88ae4615bbc36ab6ce41109e@contoso.com"
    }
  },
  "toRecipients": [
    {
      "emailAddress": {
        "name": "fannyd@contoso.com",
        "address": "fannyd@contoso.com"
      }
    },
    {
      "emailAddress": {
        "name": "danas@contoso.com",
        "address": "danas@contoso.com"
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
  "description": "message: markasjunk",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
