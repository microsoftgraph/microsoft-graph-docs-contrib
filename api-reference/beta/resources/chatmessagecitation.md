---
title: "chatMessageCitation resource type"
description: "Represents an inline citation on a chat message that references an external source."
author: "RamjotSingh"
doc_type: resourcePageType
ms.localizationpriority: medium
ms.subservice: "teams"
ms.date: 07/29/2026
---
# chatMessageCitation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an inline citation on a [chatMessage](chatmessage.md) that references an external source. Bot-generated messages can include citations that point to source documents or web resources referenced in the message body. Citations are system-generated and read-only.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|excerpt|String|Read-only. Text snippet from the cited source.|
|iconType|String|Read-only. Icon type identifier for the cited source, for example, `ExcelIcon` or `WordIcon`.|
|id|Int32|Read-only. Citation identifier that's unique within the message. The message body references this identifier inline, for example, `[1]`.|
|sensitivityLabel|[chatMessageCitationSensitivityLabel](chatmessagecitationsensitivitylabel.md)|Read-only. Sensitivity label applied to the cited source.|
|title|String|Read-only. Display title of the cited source.|
|webUrl|String|Read-only. URL to the cited source.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessageCitation"
}-->

```json
{
  "excerpt": "String",
  "iconType": "String",
  "id": "Int32",
  "sensitivityLabel": {"@odata.type": "microsoft.graph.chatMessageCitationSensitivityLabel"},
  "title": "String",
  "webUrl": "String"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "chat message citation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
