---
title: "channel resource type"
description: "A channel is a collection of chatMessages within a team. "
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channel resource type

Namespace: microsoft.graph

[Teams](../resources/team.md) are made up of channels, which are the conversations you have with your teammates. Each channel is dedicated to a specific topic, department, or project. Channels are where the work actually gets done - where text, audio, and video conversations open to the whole team happen,
where files are shared, and where tabs are added.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List channels](../api/channel-list.md) | [channel](channel.md) collection | Get the list of channels in this team.|
|[Create channel](../api/channel-post.md) | [channel](channel.md) | Create a new channel by including the display name and description.|
|[Get channel](../api/channel-get.md) | [channel](channel.md) | Read properties and relationships of the channel.|
|[Update channel](../api/channel-patch.md) | [channel](channel.md) | Update properties of the channel.|
|[Delete channel](../api/channel-delete.md) | None | Delete a channel.|
|[List channel members](../api/conversationmember-list.md)| [conversationMember](conversationmember.md) collection| List the members of a channel. |
|[Get channel member](../api/conversationmember-get.md)| [conversationMember](conversationmember.md)| Get a member of a channel. |
|[Add channel member](../api/conversationmember-add.md) | [conversationMember](conversationmember.md)| Add a member to a channel. Only supported for `channelType` of `private`.|
|[Update a member in a channel](../api/conversationmember-update.md) | [conversationMember](conversationmember.md)| Update a member of a channel. Only supported for `channelType` of `private`.|
|[Delete channel member](../api/conversationmember-delete.md) | None| Delete a member of a channel. Only supported for `channelType` of `private`.|
|[List tabs](../api/teamstab-list.md) | [teamsTab](teamstab.md) | Lists tabs pinned to a channel.|
|[List conversation member in a channels](../api/channel-conversationmember-list.md) | [conversationMember](conversationmember.md) collection | Get the list of conversation members in a channel.|
|[Add conversation member to a channel](../api/channel-conversationmember-add.md) | [conversationMember](conversationmember.md) | Add conversation members to a channel a new channel.Only supported for `channelType` of `private`.|
|[Update the role of a conversation member in a channel](../api/channel-conversationmember-update.md) | [conversationMember](conversationmember.md) | Update properties of the channel.Only supported for `channelType` of `private`|
|[Delete the members in a channel](../api/channel-conversationmember-delete.md) | None | Delete a conversation member of a channel. Only supported for `channelType` of `private`.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|description|String|Optional textual description for the channel.|
|displayName|String|Channel name as it will appear to the user in Microsoft Teams.|
|id|String|The channel's unique identifier. Read-only.|
|isFavoriteByDefault|Boolean|Indicates whether the channel should automatically be marked 'favorite' for all members of the team. Can only be set programmatically with [Create team](../api/team-post.md). Default: `false`.|
|email|String| The email address for sending messages to the channel. Read-only.|
|webUrl|String|A hyperlink that will go to the channel in Microsoft Teams. This is the URL that you get when you right-click a channel in Microsoft Teams and select Get link to channel. This URL should be treated as an opaque blob, and not parsed. Read-only.|
|membershipType|String|The type of the channel. Can be set during creation and cannot be changed. Default: standard.standard : Channel inherits the list of members of the parent team. private: Channel can have members that are a subset of all the members on the parent team.
|createdDateTime|dateTimeOffset|Read only. Timestamp at which the channel was created.|

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|messages|[chatMessage](chatmessage.md) collection|A collection of all the messages in the channel. A navigation property. Nullable.|
|tabs|[teamsTab](../resources/teamstab.md) collection|A collection of all the tabs in the channel. A navigation property.|
|members|[conversationMember](conversationmember.md) collection|A collection of membership records associated with the channel.|
|[filesFolder](../api/channel-get-filesfolder.md)|[driveItem](driveitem.md)|Metadata for the location where the channel's files are stored.|
|operations|[teamsAsyncOperation](teamsasyncoperation.md) collection| The async operations that ran or are running on this team. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "messages"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.channel"
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "id": "string (identifier)",
  "isFavoriteByDefault": true,
  "email": "string",
  "webUrl": "string",
  "membershipType": "string",
  "createdDateTime": "string (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "channel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
