---
title: "chatMessageBody resource type"
description: "Represents the content of a chat message and the format of that content."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "teams"
author: "RamjotSingh"
ms.date: 07/09/2026
---

# chatMessageBody resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the content of a [chatMessage](../resources/chatmessage.md) and the format of that content.

This type is specific to Teams messaging and supports additional content types, such as `markdown`, through the evolvable **chatMessageBodyContentType** enumeration. For general item bodies (for example, mail and events), use [itemBody](../resources/itembody.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|content|String|The content of the chat message.|
|contentType (deprecated)|bodyType|The type of the content. The possible values are: `text`, `html`. The **contentType** property is deprecated. Going forward, use the **messageBodyContentType** property.|
|messageBodyContentType|chatMessageBodyContentType|The type of the content, including support for additional Teams content types. The possible values are: `text`, `html`, `markdown`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chatMessageBody"
}-->

```json
{
  "content": "String",
  "contentType": "String",
  "messageBodyContentType": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "chatMessageBody resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
