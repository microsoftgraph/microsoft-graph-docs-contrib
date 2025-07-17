---
title: "aadUserConversationMember resource type"
description: "Represents Microsoft Entra user in a chat or channel."
ms.localizationpriority: high
author: "akjo"
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 10/18/2024
---

# aadUserConversationMember resource type

Namespace: microsoft.graph

Represents a Microsoft Entra user in a [team](team.md), a [channel](channel.md), or a [chat](chat.md).
This type inherits from [conversationMember](conversationmember.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List team members](../api/team-list-members.md)|[conversationMember](../resources/conversationmember.md) collection|Get the list of members in the team.|
|[Add team member](../api/team-post-members.md)|[conversationMember](../resources/conversationmember.md)|Add a new member to the team.|
|[Get team member](../api/team-get-members.md) | [conversationMember](conversationmember.md) collection | Get a member in the team.|
|[Update team member's role](../api/team-update-members.md)|[conversationMember](../resources/conversationmember.md)|Change a member to an owner or back to a regular member.|
|[Remove team member](../api/team-delete-members.md)|None|Remove an existing member from the team.|
|[Remove team members in bulk](../api/conversationmember-remove.md)|[actionResultPart](../resources/actionresultpart.md) collection|Remove multiple members from a team in a single request.|
|[List channel members](../api/channel-list-members.md) | [conversationMember](conversationmember.md) collection | Get the list of all members in a channel.|
|[Add channel member](../api/channel-post-members.md) | [conversationMember](conversationmember.md) | Add a member to a channel. Only supported for `channel` with membershipType of `private`.|
|[Get channel member](../api/channel-get-members.md) | [conversationMember](conversationmember.md) collection | Get a member in a channel.|
|[Update channel member's role](../api/channel-update-members.md) | [conversationMember](conversationmember.md) | Update the properties of a member of the channel. Only supported for channel with membershipType of `private`.|
|[Remove channel member](../api/channel-delete-members.md) | None | Delete a member from a channel. Only supported for `channelType` of `private`.|
|[List chat members](../api/chat-list-members.md) | [conversationMember](conversationmember.md) collection | Get the list of all members in a chat.|
|[Add chat member](../api/chat-post-members.md) | Location header | Add a member to a chat.|
|[Get chat member](../api/chat-get-members.md) | [conversationMember](conversationmember.md) | Get a member in a chat.|
|[Remove chat member](../api/chat-delete-members.md) | None | Remove a member from a chat.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|displayName| string | The display name of the user. |
|email| string  | The email address of the user. |
|id|String| Read-only. Unique ID of the user.|
|roles| string collection | The roles of the user such as owner, member, or guest. |
|tenantId| string  | TenantId which the Microsoft Entra user belongs to. |
|userId| string | The guid of the user. |
|visibleHistoryStartDateTime| DateTimeOffset  | The timestamp denoting how far back a conversation's history is shared with the conversation member. This property is settable only for members of a chat.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.aadUserConversationMember",
  "baseType": "microsoft.graph.conversationMember",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.aadUserConversationMember",
  "displayName" : "string",
  "email" : "string",
  "id": "string (identifier)",
  "roles" : ["string"],
  "tenantId": "string",
  "userId" : "string",
  "visibleHistoryStartDateTime": "string (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "aadUserConversationMember",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
