---
title: "forwardToChatResult resource type"
description: "Represents the individual response for each target chat ID specified in a forward to chat request."
author: "sumanac"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 02/20/2025
---

# forwardToChatResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the individual response for each target chat ID specified in a [forward to chat](../api/chatmessage-forwardtochat.md) request.

Inherits from [actionResultPart](actionresultpart.md).

## Properties

| Property | Type	| Description |
|:---|:---|:---|
|error|[publicError](publicerror.md) |The error that occurred, if any, during the bulk operation. Inherited from [actionResultPart](actionresultpart.md).|
|forwardedMessageId|String|The [chatMessage](../resources/chatmessage.md) ID generated after a message is successfully forwarded to the target chat ID. |
|targetChatId|String|The target chat ID where the message was forwarded. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.forwardToChatResult"
}-->

```json
{
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "forwardedMessageId": "String",
  "targetChatId": "String"
}
```

## Related content

[Forward message to a chat](../api/chatmessage-forwardtochat.md)

<!-- uuid: 20fd7863-9545-40d4-ae8f-fee2d115a690
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "forwardToChatResult",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
