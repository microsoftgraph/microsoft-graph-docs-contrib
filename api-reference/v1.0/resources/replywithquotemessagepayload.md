---
title: "replyWithQuoteMessagePayload resource type"
description: "Represents the request body for replying to a chat message with a quote."
author: "AdityaSharma6"
ms.subservice: "teams"
doc_type: resourcePageType
ms.localizationpriority: medium
ms.date: 01/20/2026
---

# replyWithQuoteMessagePayload resource type

Namespace: microsoft.graph

Represents the request body for replying to a [chat message](chatmessage.md) with a quote using the [replyWithQuote](../api/chatmessage-replywithquote.md) method.

## Properties

| Property     | Type                                           | Description                                                                                                             |
|:-------------|:-----------------------------------------------|:------------------------------------------------------------------------------------------------------------------------|
| messageIds   | String collection                              | List of message IDs in a chat that are replied to with a quote. A maximum of 10 message IDs can be specified.           |
| replyMessage | [chatMessage](chatmessage.md)                  | The message body for the reply.                                                                                          |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.replyWithQuoteMessagePayload"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.replyWithQuoteMessagePayload",
  "messageIds": ["String"],
  "replyMessage": {
    "@odata.type": "microsoft.graph.chatMessage"
  }
}
```
