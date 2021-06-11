---
title: "chatRenamedEventMessageDetail resource type"
description: "Reperesents details for chat renamed event."
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# chatRenamedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reperesents details for chat renamed event.

This message is generated when a group chat name or meeting name is updated.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|chatDisplayName|String|Updated name of the chat.|
|chatId|String|Unique identifier of the chat.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatRenamedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatRenamedEventMessageDetail",
  "chatId": "String",
  "chatDisplayName": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

