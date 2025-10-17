---
title: "aadUserConversationMember resource type"
description: "Represents a Microsoft Entra user in a team, a channel, or a chat. "
ms.localizationpriority: high
author: "akjo"
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 10/17/2024
---

# aadUserConversationMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra user in a [team](team.md), a [channel](channel.md), or a [chat](chat.md). 

Inherits from [conversationMember](conversationmember.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List team members](../api/team-list-members.md)|[conversationMember](../resources/conversationmember.md) collection|Get the list of members in the team.|
|[Add team member](../api/team-post-members.md)|[conversationMember](../resources/conversationmember.md)|Add a new member to the team.|
|[Add team members in bulk](../api/conversationmembers-add.md)|[actionResultPart](../resources/actionresultpart.md) collection|Add multiple members to the team in a single request.|
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
|displayName| String | The display name of the user. |
|email| String  | The email address of the user. |
|id| String | Read-only. Unique ID of the user.|
|roles| String collection | The roles of the user such as owner, member, or guest. |
|tenantId| string  | The tenant ID of the Microsoft Entra user. |
|userId| string | The user ID of the Microsoft Entra user. |
|visibleHistoryStartDateTime| DateTimeOffset  | The timestamp that denotes how far back the history of a conversation is shared with the conversation member. This property is settable only for members of a chat.|

### Instance attributes

Instance attributes are properties with special behaviors. These properties are temporary and either a) define behavior the service should perform or b) provide short-term property values, like a download URL for an item that expires.

| Property name| Type   | Description
|:---|:---|:---|
|@microsoft.graph.originalSourceMembershipUrl|String|This annotation represents the URL of the original source membership that distinguishes between direct and indirect members. Use this annotation with the [List allMembers](../api/channel-list-allmembers.md) API. |

## Relationships
None.

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
  "displayName": "String",
  "email": "String",
  "id": "String (identifier)",
  "roles": ["String"],
  "tenantId": "String",
  "userId": "String",
  "visibleHistoryStartDateTime": "String (timestamp)"
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
