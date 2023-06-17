---
title: "channel resource type"
description: "A channel is a collection of chatMessages within a team. "
author: "nkramer"
ms.localizationpriority: high
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
|[List channels](../api/channel-list.md) | [channel](channel.md) collection | Get the list of channels in a team.|
|[List incoming channels](../api/team-list-incomingchannels.md)|[channel](../resources/channel.md) collection|Get the list of incoming [channels](../resources/channel.md) (channels shared with a [team](../resources/team.md)).|
|[List all channels](../api/team-list-allchannels.md)|[channel](../resources/channel.md) collection|Get the list of [channels](../resources/channel.md) either in a [team](../resources/team.md) or shared with a [team](../resources/team.md) (incoming channels).|
|[Create channel](../api/channel-post.md) | [channel](channel.md) | Create a new channel by including the display name and description.|
|[Get channel](../api/channel-get.md) | [channel](channel.md) | Read properties and relationships of the channel.|
|[Update channel](../api/channel-patch.md) | [channel](channel.md) | Update properties of the channel.|
|[Delete channel](../api/channel-delete.md) | None | Delete a channel.|
|[Get message delta](../api/chatmessage-delta.md)  | [chatMessage](../resources/chatmessage.md) | Get incremental messages in a channel. |
|[List channel messages](../api/channel-list-messages.md)  | [chatMessage](../resources/chatmessage.md) | Get messages in a channel |
|[Get all channel messages](../api/channel-getallmessages.md)|[channel](channel.md) collection | Get all messages from all channels that a user is a participant in. |
|[Create channel message post](../api/channel-post-messages.md) | [chatMessage](../resources/chatmessage.md) | Send a message to a channel. |
|[Create reply to channel message post](../api/chatmessage-post-replies.md) | [chatMessage](../resources/chatmessage.md) | Reply to a message in a channel.|
|[Get files folder](../api/channel-get-filesfolder.md)| [driveItem](driveitem.md) | Retrieves the details of the SharePoint folder where the files for the channel are stored. |
|[List tabs](../api/channel-list-tabs.md) | [teamsTab](teamstab.md) | Lists tabs pinned to a channel.|
|[List channel members](../api/channel-list-members.md) | [conversationMember](conversationmember.md) collection | Get the list of members in a channel.|
|[Add channel member](../api/channel-post-members.md) | [conversationMember](conversationmember.md) | Add a member to a channel. Only supported for channels with a **membershipType** of `private` or `shared`.|
|[Get channel member](../api/channel-get-members.md) | [conversationMember](conversationmember.md) collection | Get a member in a channel.|
|[Update channel member's role](../api/channel-update-members.md) | [conversationMember](conversationmember.md) | Update the properties of a member of the channel. Only supported for channels with a **membershipType** of `private` or `shared`.|
|[Remove channel member](../api/channel-delete-members.md) | None | Delete a member from a channel. Only supported for channels with a **membershipType** of `private` or `shared`.|
|[Complete migration](../api/channel-completemigration.md)|[channel](channel.md)| Removes the migration mode from the channel and makes the channel available to users to post and read messages.|
|[List tabs in channel](../api/channel-list-tabs.md) | [teamsTab](teamstab.md) | List tabs pinned to a channel.|
|[Add tab to channel](../api/channel-post-tabs.md) | [teamsTab](teamstab.md) | Add (pin) a tab to a channel.|
|[Get tab in channel](../api/channel-get-tabs.md) | [teamsTab](teamstab.md) | Get a specific tab pinned to a channel.|
|[Update tab in channel](../api/channel-patch-tabs.md) | [teamsTab](teamstab.md) | Updates the properties of a tab in a channel.|
|[Remove tab from channel](../api/channel-delete-tabs.md) | None | Remove (unpin) a tab from a channel.|
|[Provision channel email address](../api/channel-provisionemail.md) |[provisionChannelEmailResult](../resources/provisionchannelemailresult.md)| Provision an email address for the channel.|
|[Remove channel email address](../api/channel-removeemail.md) | None | Remove the email address of the channel.|
|[Remove incoming channel](../api/team-delete-incomingchannels.md) | None| Remove an incoming [channel](../resources/channel.md) (a **channel** shared with a **team**) from a [team](../resources/team.md).|
|[List teams sharing a channel](../api/sharedwithchannelteaminfo-list.md)|[sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) collection|Get the list of [teams](../resources/sharedwithchannelteaminfo.md) that has been shared a specified [channel](../resources/channel.md).|
|[Get team sharing a channel](../api/sharedwithchannelteaminfo-get.md)|[sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md)|Get a [team](../resources/sharedwithchannelteaminfo.md) which has been shared a specified [channel](../resources/channel.md).|
|[Unshare channel with team](../api/sharedwithchannelteaminfo-delete.md)|None|Unshare a [channel](../resources/channel.md) with a [team](../resources/team.md) by deleting the corresponding [sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) resource.|
|[List allowed members](../api/sharedwithchannelteaminfo-list-allowedmembers.md)|[conversationMember](../resources/conversationmember.md) collection|Get the list of [conversationMembers](../resources/conversationmember.md) who can access a shared [channel](../resources/channel.md).|
|[Check user access](../api/channel-doesuserhaveaccess.md)|Boolean|Determine whether a [user](../resources/useridentity.md) has access to a shared [channel](../resources/channel.md).|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|createdDateTime|dateTimeOffset|Read only. Timestamp at which the channel was created.|
|description|String|Optional textual description for the channel.|
|displayName|String|Channel name as it will appear to the user in Microsoft Teams. The maximum length is 50 characters.|
|email|String| The email address for sending messages to the channel. Read-only.|
|id|String|The channel's unique identifier. Read-only.|
|isFavoriteByDefault|Boolean|Indicates whether the channel should automatically be marked 'favorite' for all members of the team. Can only be set programmatically with [Create team](../api/team-post.md). Default: `false`.|
|membershipType|[channelMembershipType](../resources/channel.md#channelmembershiptype-values)|The type of the channel. Can be set during creation and can't be changed. The possible values are: `standard`, `private`, `unknownFutureValue`, `shared`. The default value is `standard`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `shared`.|
|tenantId |string | The ID of the Azure Active Directory tenant. |
|webUrl|String|A hyperlink that will go to the channel in Microsoft Teams. This is the URL that you get when you right-click a channel in Microsoft Teams and select Get link to channel. This URL should be treated as an opaque blob, and not parsed. Read-only.|

### channelMembershipType values

| Member             | Description                                                                       |
|:-------------------|:----------------------------------------------------------------------------------|
| standard           | Channel inherits the list of members of the parent team.                          |
| private            | Channel can have members that are a subset of all the members on the parent team. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use.                                 |
| shared             | Members can be directly added to the channel without adding them to the team.     |


### Instance attributes

Instance attributes are properties with special behaviors. These properties are temporary and either a) define behavior the service should perform or b) provide short-term property values, like a download URL for an item that expires.

| Property name| Type   | Description
|:-----------------------|:-------|:-------------------------|
|@microsoft.graph.channelCreationMode|string|Indicates that the channel is in migration state and is currently being used for migration purposes. It accepts one value: `migration`.|

> **Note**: `channelCreationMode`  is an enum that takes the value `migration`.

For a POST request example, see [Request (create channel in migration state)](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams#request-create-a-team-in-migration-state).

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|[filesFolder](../api/channel-get-filesfolder.md)|[driveItem](driveitem.md)|Metadata for the location where the channel's files are stored.|
|members|[conversationMember](conversationmember.md) collection|A collection of membership records associated with the channel.|
|messages|[chatMessage](chatmessage.md) collection|A collection of all the messages in the channel. A navigation property. Nullable.|
|operations|[teamsAsyncOperation](teamsasyncoperation.md) collection| The async operations that ran or are running on this team. |
|sharedWithTeams|[sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) collection|A collection of teams with which a channel is shared.|
|tabs|[teamsTab](../resources/teamstab.md) collection|A collection of all the tabs in the channel. A navigation property.|

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
  "createdDateTime": "string (timestamp)",
  "description": "string",
  "displayName": "string",
  "email": "string",
  "id": "string (identifier)",
  "isFavoriteByDefault": true,
  "membershipType": "String",
  "webUrl": "string"
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

## See also

- [Channel lifecycle C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-channel-lifecycle/csharp)
- [Channel lifecycle Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-channel-lifecycle/nodejs)
