---
title: "chatMessageReactionIdentitySet resource type"
description: "Represents a user reacting to a chatMessage."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# chatMessageReactionIdentitySet resource type

Namespace: microsoft.graph

Represents a user reacting to a [chatMessage](../resources/chatmessage.md). Only user property has value.


Inherits from [identitySet](../resources/identityset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|application|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). Not set at the moment since applications cannot react to messages.|
|device|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). Not set at the moment since devices cannot react to messages.|
|user|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). Details about the user which reacted to the message.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessageReactionIdentitySet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMessageReactionIdentitySet",
  "user": {
    "@odata.type": "microsoft.graph.identity"
  },
  "application": {
    "@odata.type": "microsoft.graph.identity"
  },
  "device": {
    "@odata.type": "microsoft.graph.identity"
  }
}
```

