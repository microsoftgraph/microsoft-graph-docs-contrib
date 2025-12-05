---
title: "exchangeMessageTraceDetail resource type"
description: "Represents a detailed trace event for an email message as it passes through the Exchange Online organization."
author: "Huajian-MSIT"
ms.date: 12/04/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# exchangeMessageTraceDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a detailed trace event for an email message as it passes through the Exchange Online organization.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|String|The action taken on the message during the event.|
|data|String|Additional data associated with the event, containing supplementary information specific to the event.|
|dateTime|DateTimeOffset|The date and time when the event occurred. The timestamp is in UTC format.|
|description|String|A detailed description that provides context about what happened during message processing.|
|event|String|The event that occurred during message processing.|
|id|String|The unique identifier for the message trace detail record. |
|messageId|String|The Message-ID header field of the message. The format depends on the messaging server that sent the message.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.exchangeMessageTraceDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exchangeMessageTraceDetail",
  "action": "String",
  "data": "String",
  "dateTime": "String (timestamp)",
  "description": "String",
  "event": "String",
  "id": "String (identifier)",
  "messageId": "String"
}
```

