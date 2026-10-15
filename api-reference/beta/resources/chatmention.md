---
title: "chatMention resource type"
description: "An @mention of a user or an application within a plannerChatMessage."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# chatMention resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **mentions** property of the [chatMessageProperties](chatmessageproperties.md) resource uses this type.

An @mention of a user or an application within a [plannerChatMessage](plannerchatmessage.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|index|Int32|Character position of the mention within the message content.|
|mentioned|String|Identifier of the mentioned user or application.|
|type|chatMentionType|Type of the mentioned entity. The possible values are: `user`, `application`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMention"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMention",
  "mentioned": "String",
  "index": "Int32",
  "type": "String"
}
```

