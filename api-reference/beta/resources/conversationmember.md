---
title: "conversationMember resource type"
description: "Represents a user in a conversation."
localization_priority: Normal
author: "clearab"
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# conversationMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user in a [chat](chat.md) or a [channel](channel.md).
See also [aadUserConversationMember](aaduserconversationmember.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List chat members](../api/conversationmember-list.md) | [conversationMember](conversationmember.md) collection | Get the list of all users in the chat.|
|[Get chat member](../api/conversationmember-get.md) | [conversationMember](conversationmember.md) | Get a single user in the chat.|
|[List team members](../api/team-list-members.md)|[conversationMember](../resources/conversationmember.md) collection|Get the list of members in the team.|
|[Get team member](../api/team-get-members.md) | [conversationMember](conversationmember.md) collection | Get a member in the team.|
|[Add team member](../api/team-post-members.md)|[conversationMember](../resources/conversationmember.md)|Add a new member to the team.|
|[Add team members in bulk](../api/conversationmembers-add.md)|[actionResultPart](../resources/actionresultpart.md) collection|Add multiple members to the team in a single request.|
|[Update team member's role](../api/team-update-members.md)|[conversationMember](../resources/conversationmember.md)|Change a member to an owner or back to a regular member.|
|[Remove team member](../api/team-delete-members.md)|None|Remove an existing member from the team.|
|[Get channel member](../api/channel-get-members.md) | [conversationMember](conversationmember.md) collection | Get a member in a channel.|
|[Create channel member](../api/channel-post-members.md) | [conversationMember](conversationmember.md) | Add a member to a channel. Only supported for `channel`with membershipType of `private`.|
|[Update channel member's role](../api/channel-update-members.md) | [conversationMember](conversationmember.md) | Update the properties of a member of the channel. Only supported for channel with membershipType of `private`.|
|[Remove channel member](../api/channel-delete-members.md) | None | Delete a member from a channel. Only supported for `channelType` of `private`.|



## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique ID of the user.|
|displayName| string | The display name of the user. |
|roles| string collection | The roles for that user. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.conversationMember",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "roles": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conversationMember resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


