---
title: "sharedWithChannelTeamInfo resource type"
description: "Represents information for a team with which a channel is shared."
author: "devjha-ms"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# sharedWithChannelTeamInfo resource type

Namespace: microsoft.graph

Represents information for a [team](team.md) with which a channel is shared. A [team](team.md) can be shared multiple channels.


Inherits from [teamInfo](../resources/teaminfo.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List sharedWithChannelTeamInfo](../api/sharedwithchannelteaminfo-list.md)|[sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) collection|Get the list of [teams](../resources/sharedwithchannelteaminfo.md) that has been shared a specified [channel](../resources/channel.md).|
|[Get sharedWithChannelTeamInfo](../api/sharedwithchannelteaminfo-get.md)|[sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md)|Get a [team](../resources/sharedwithchannelteaminfo.md) which has been shared a specified [channel](../resources/channel.md).|
|[Delete sharedWithChannelTeamInfo](../api/sharedwithchannelteaminfo-delete.md)|None|Unshare a [channel](../resources/channel.md) with a [team](../resources/team.md) by deleting the corresponding [sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) resource.|
|[List allowedMembers](../api/sharedwithchannelteaminfo-list-allowedmembers.md)|[conversationMember](../resources/conversationmember.md) collection|Get the list of [conversationMembers](../resources/conversationmember.md) who can access a shared [channel](../resources/channel.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the [team](team.md). Inherited from [teamInfo](../resources/teaminfo.md).|
|id|String|The unique identifier for the [team](team.md). Read-only.|
|isHostTeam|Boolean|Indicates whether the [team](team.md) is the host of the [channel](channel.md).|
|tenantId|String|The ID of the Azure Active Directory tenant. Inherited from [teamInfo](../resources/teaminfo.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|allowedMembers|[conversationMember](../resources/conversationmember.md) collection|A collection of team members who have access to the shared channel.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharedWithChannelTeamInfo",
  "baseType": "microsoft.graph.teamInfo",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharedWithChannelTeamInfo",
  "displayName": "String",
  "id": "String (identifier)",
  "isHostTeam": "Boolean",
  "tenantId": "String"
}
```

