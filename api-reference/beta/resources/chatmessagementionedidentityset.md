---
title: "chatMessageMentionedIdentitySet resource type"
description: "Represents the resource atmentioned in a chatMessage"
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# chatMessageMentionedIdentitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the resource (user, application or conversation) atmentioned in a [chatMessage](../resources/chatmessage.md)


Inherits from [identitySet](../resources/identityset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|application|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). If present, represents an application (e.g. bot) atmentioned in a chatMessage.|
|conversation|[teamworkConversationIdentity](../resources/teamworkconversationidentity.md)|If present, represents a conversation (e.g. team, channel) atmentioned in a chatMessage.|
|device|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). Not used, as atmentioning devices is not supported.|
|user|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). If present, represents a user atmentioned in a chatMessage.|
|tag|[teamworkTagIdentity](../resources/teamworktagidentity.md)|If present, represents a tag being atmentioned in a message in a team.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessageMentionedIdentitySet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMessageMentionedIdentitySet",
  "user": {
    "@odata.type": "microsoft.graph.identity"
  },
  "application": {
    "@odata.type": "microsoft.graph.identity"
  },
  "device": {
    "@odata.type": "microsoft.graph.identity"
  },
  "conversation": {
    "@odata.type": "microsoft.graph.teamworkConversationIdentity"
  }
}
```