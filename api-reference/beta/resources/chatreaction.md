---
title: "chatReaction resource type"
description: "A reaction (for example, an emoji) applied by one or more users to a plannerChatMessage."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# chatReaction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **reactions** property of the [chatMessageProperties](chatmessageproperties.md) resource uses this type.

A reaction (for example, an emoji) applied by one or more users to a [plannerChatMessage](plannerchatmessage.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|key|String|Identifier of the reaction (for example, an emoji key).|
|users|[creationTimestamp](../resources/creationtimestamp.md) collection|Users who applied the reaction, and when.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatReaction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatReaction",
  "key": "String",
  "users": [
    {
      "@odata.type": "microsoft.graph.creationTimestamp"
    }
  ]
}
```

