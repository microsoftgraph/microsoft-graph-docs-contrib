---
title: "chatMessageMentionedIdentitySet resource type"
description: "Represents the resource @mentioned in a message in a chat or a channel."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 09/16/2024
---

# chatMessageMentionedIdentitySet resource type

Namespace: microsoft.graph

Represents the resource (user, application, or conversation) @mentioned in a [message](../resources/chatmessage.md) in a chat or a channel.


Inherits from [identitySet](../resources/identityset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|application|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). If present, represents an application (for example, bot) @mentioned in a [message](../resources/chatmessage.md).|
|conversation|[teamworkConversationIdentity](../resources/teamworkconversationidentity.md)|If present, represents a conversation (for example, team, channel, or chat) @mentioned in a [message](../resources/chatmessage.md).|
|device|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). Not used because it's not supported to @mention devices.|
|user|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). If present, represents a user @mentioned in a [message](../resources/chatmessage.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessageMentionedIdentitySet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMessageMentionedIdentitySet",
  "application": {
    "@odata.type": "microsoft.graph.identity"
  },
  "conversation": {
    "@odata.type": "microsoft.graph.teamworkConversationIdentity"
  },
  "device": {
    "@odata.type": "microsoft.graph.identity"
  },
  "user": {
    "@odata.type": "microsoft.graph.identity"
  }
}
```
