---
title: "chatMessageFromIdentitySet resource type"
description: "Represents the sender of a message in a chat or a channel."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# chatMessageFromIdentitySet resource type

Namespace: microsoft.graph

Represents the sender of a [message](../resources/chatmessage.md) in a chat or a channel. This object may be `null` for a message that has been deleted or sent by the Microsoft Teams internal system; for example, event messages for addition of members.


Inherits from [identitySet](../resources/identityset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|application|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). If present, represents the application (for instance, bot) that sent the message.|
|device|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). Not used.|
|user|[teamworkUserIdentity](../resources/teamworkUserIdentity.md)|If present, represents the user that sent the message.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessageFromIdentitySet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMessageFromIdentitySet",
  "application": {
    "@odata.type": "microsoft.graph.identity"
  },
  "device": {
    "@odata.type": "microsoft.graph.identity"
  },
  "user": {
    "@odata.type": "microsoft.graph.identity"
  }
}
```

