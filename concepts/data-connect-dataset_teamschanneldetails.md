---
title: "Microsoft Graph Data Connect TeamsChannelDetails_v0 dataset"
description: "Use the TeamsChannelDetails_v0 dataset to generate a list of Microsoft Teams channels."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
ms.custom: datasets:dataset-name
---

# Microsoft Graph Data Connect TeamsChannelDetails_v0 dataset

## Description

The TeamsChannelDetails_v0 dataset provides a list of Microsoft Teams channels. Teams in Microsoft Teams are made up of channels, which are the conversations that users have with their teammates. Each channel is dedicated to a specific topic, department, or project. 

Channels are where the work actually gets done; where text, audio, and video conversations open to the whole team happen; where files are shared; and where tabs are added. TeamsChannelDetails dataset provides details of all the conversation channels created on Microsoft Teams for a particular tenant.

## Scenarios

- Analyze Microsoft Teams channels that are created in a particular time range.
- Analyze all the web URLs of all the channels for a security audit of an organization.

## Questions

- How many Microsoft Teams channels are created for a tenant?
- When (date and time) was a particular channel created?
- What are all the names of all the channels that exist for a tenant?
- What are all the web URLs created for all existing channels for a tenant?
- What are all the email addresses for all existing channels for a tenant?

## Joining with other datasets

The TeamsChannelDetails_v0 dataset can be joined with relevant Teams datasets.

## Definitions

A team in Microsoft Teams is a collection of channel objects. A channel represents a topic, and therefore a logical isolation of discussion, within a team. Every team is associated with a Microsoft 365 group. Groups have the same ID as the team name; for example, /groups/{id}/team is the same as /teams/{id}.

## Schema

| Name  | Type  |  Description  |  FilterOptions  |  IsDateFilter  | 
| ----------- | ----------- | ----------- | ----------- | ----------- |
| Id | 	string | 	Unique directory ID for the Teams channel. | 	No | 	None | 
| createdDateTime | 	datetime | 	Timestamp in UTC when the channel was created. | Yes | 	Date | 
| displayName |  string | 	The display name for the channel. | No | 	None | 
| Description |  string | 	User specified description for the channel. | 	No | 	None | 
| isFavoriteByDefault |  boolean | 	Specifies if the channel is favorited (by default) for all members of the team. | 	No | 	None | 
| Email | 	string	|  SMTP address of the channel for messaging. |  No | 	None | 
| webUrl | 	string | 	Web URL for the Teams channel. | 	No | 	None | 
| membershipType | 	string	Membership or Type of the channel, such as standard channel, private channel, and so on. | 	No | 	None | 
| ODataType | 	string | 	Data type of the current folder. | 	No | 	None | 
| pObjectId	|  string | 	Object id. | 	No | 	None | 
| Ptenant |  string | 	Tenant id. | 	No | 	None | 

## JSON representation

```json
{
  "id": "string (identifier)",
  "createdDateTime": "string (timestamp)",
  "displayName": "string",
  "description": "string",
  "isFavoriteByDefault": true,
  "email": "string",
  "webUrl": "string"
  "membershipType": "String",
  "ODataType":"#microsoft.graph.channel"
  "pObjectId": "String", 
  "ptenant": "String (identifier)" 
}
```

## Sample 

```json 
{"id":"19:9d79a93273d740b18d2551fa04bd5c15@thread.tacv2","createdDateTime":"2021-03-12T22:46:53Z","displayName":"General","description":"Check here for organization announcements and important info.","isFavoriteByDefault":false,"email": "9496d2eb.microsoft.com@amer.teams.ms","webUrl":"https://teams.microsoft.com/l/channel/19%3a9d79a93273d740b18d2551fa04bd5c15%40thread.tacv2/General?groupId=943ecd15-a954-40a7-9d00-3224d21dc470&tenantId=8e56195d-f07c-44f0-8108-40e4352e3e74","membershipType":"standard","ODataType":"#microsoft.graph.channel","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"19:f1cb1820b2394211b522282df241b098@thread.tacv2","createdDateTime":"2021-12-08T23:09:45Z","displayName":"TeamChannel","description":null,"isFavoriteByDefault":false,"email":"","webUrl":"https://teams.microsoft.com/l/channel/19%3af1cb1820b2394211b522282df241b098%40thread.tacv2/Channel1TestingGroupShard?groupId=943ecd15-a954-40a7-9d00-3224d21dc470&tenantId=8e56195d-f07c-44f0-8108-40e4352e3e74","membershipType":"standard","ODataType":"#microsoft.graph.channel","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"19:e1a5f25b55db4a46a1f0c4932e960709@thread.tacv2","createdDateTime":"2021-12-15T21:55:03Z","displayName":"ProjectDiscussion","description":"Testing description","isFavoriteByDefault":false,"email":"","webUrl":"https://teams.microsoft.com/l/channel/19%3ae1a5f25b55db4a46a1f0c4932e960709%40thread.tacv2/Channel2Test?groupId=943ecd15-a954-40a7-9d00-3224d21dc470&tenantId=8e56195d-f07c-44f0-8108-40e4352e3e74","membershipType":"standard","ODataType":"#microsoft.graph.channel","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"19:cd64ceb3da214a23b4413d6071adb839@thread.tacv2","createdDateTime":"2021-12-15T21:55:42Z","displayName":"HRChannel","description":"public","isFavoriteByDefault":false,"email":"","webUrl":"https://teams.microsoft.com/l/channel/19%3acd64ceb3da214a23b4413d6071adb839%40thread.tacv2/channel4public?groupId=943ecd15-a954-40a7-9d00-3224d21dc470&tenantId=8e56195d-f07c-44f0-8108-40e4352e3e74","membershipType":"standard","ODataType":"#microsoft.graph.channel","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"19:4ea78bc31bb14775acc8f9613d2ab461@thread.tacv2","createdDateTime":"2021-12-15T21:55:34Z","displayName":"Dev","description":"channel for dev discussion","isFavoriteByDefault":null,"email":"","webUrl":"https://teams.microsoft.com/l/channel/19%3a4ea78bc31bb14775acc8f9613d2ab461%40thread.tacv2/channel3+-+should+still+come+up?groupId=943ecd15-a954-40a7-9d00-3224d21dc470&tenantId=8e56195d-f07c-44f0-8108-40e4352e3e74","membershipType":"private","ODataType":"#microsoft.graph.channel","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"19:9d79a93273d740b18d2551fa04bd5c15@thread.tacv2","createdDateTime":"2021-03-12T22:46:53Z","displayName":"General","description":"Check here for organization announcements and important info.","isFavoriteByDefault":false,"email": "9496d2eb.microsoft.com@amer.teams.ms","webUrl":"https://teams.microsoft.com/l/channel/19%3a9d79a93273d740b18d2551fa04bd5c15%40thread.tacv2/General?groupId=943ecd15-a954-40a7-9d00-
3224d21dc470&tenantId=8e56195d-f07c-44f0-8108-40e4352e3e74","membershipType":"standard","ODataType":"#microsoft.graph.channel","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"19:f1cb1820b2394211b522282df241b098@thread.tacv2","createdDateTime":"2021-12-08T23:09:45Z","displayName":"TeamChannel","description":null,"isFavoriteByDefault":false,"email":"","webUrl":"https://teams.microsoft.com/l/channel/19%3af1cb1820b2394211b522282df241b098%40thread.tacv2/Channel1TestingGroupShard?groupId=943ecd15-a954-40a7-9d00-3224d21dc470&tenantId=8e56195d-f07c-44f0-8108-40e4352e3e74","membershipType":"standard","ODataType":"#microsoft.graph.channel","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"19:e1a5f25b55db4a46a1f0c4932e960709@thread.tacv2","createdDateTime":"2021-12-15T21:55:03Z","displayName":"ProjectDiscussion","description":"Testing description","isFavoriteByDefault":false,"email":"","webUrl":"https://teams.microsoft.com/l/channel/19%3ae1a5f25b55db4a46a1f0c4932e960709%40thread.tacv2/Channel2Test?groupId=943ecd15-a954-40a7-9d00-3224d21dc470&tenantId=8e56195d-f07c-44f0-8108-40e4352e3e74","membershipType":"standard","ODataType":"#microsoft.graph.channel","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"19:cd64ceb3da214a23b4413d6071adb839@thread.tacv2","createdDateTime":"2021-12-15T21:55:42Z","displayName":"HRChannel","description":"public","isFavoriteByDefault":false,"email":"","webUrl":"https://teams.microsoft.com/l/channel/19%3acd64ceb3da214a23b4413d6071adb839%40thread.tacv2/channel4public?groupId=943ecd15-a954-40a7-9d00-3224d21dc470&tenantId=8e56195d-f07c-44f0-8108-40e4352e3e74","membershipType":"standard","ODataType":"#microsoft.graph.channel","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"id":"19:4ea78bc31bb14775acc8f9613d2ab461@thread.tacv2","createdDateTime":"2021-12-15T21:55:34Z","displayName":"Dev","description":"channel for dev discussion","isFavoriteByDefault":null,"email":"","webUrl":"https://teams.microsoft.com/l/channel/19%3a4ea78bc31bb14775acc8f9613d2ab461%40thread.tacv2/channel3+-+should+still+come+up?groupId=943ecd15-a954-40a7-9d00-3224d21dc470&tenantId=8e56195d-f07c-44f0-8108-40e4352e3e74","membershipType":"private","ODataType":"#microsoft.graph.channel","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
```
