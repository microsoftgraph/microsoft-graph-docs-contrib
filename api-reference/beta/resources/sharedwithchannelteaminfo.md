---
title: "sharedWithChannelTeamInfo resource type"
description: "Represents a team that is shared with a channel."
author: "devjha-ms"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# sharedWithChannelTeamInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [team](team.md) that is shared with a channel. A [team](team.md) can be shared with multiple channels.


Inherits from [teamInfo](../resources/teaminfo.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List sharedWithChannelTeamInfo](../api/sharedwithchannelteaminfo-list.md)|[sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) collection|Get a list of the [sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) objects and their properties.|
|[Get sharedWithChannelTeamInfo](../api/sharedwithchannelteaminfo-get.md)|[sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md)|Read the properties and relationships of a [sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) object.|
|[Delete sharedWithChannelTeamInfo](../api/sharedwithchannelteaminfo-delete.md)|None|Delete a [sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) object.|
|[List allowedMembers](../api/sharedwithchannelteaminfo-list-allowedmembers.md)|[conversationMember](../resources/conversationmember.md) collection|Get the list of team members who have access to the shared channel.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the team. Inherited from [teamInfo](../resources/teaminfo.md).|
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
  "id": "String (identifier)",
  "tenantId": "String",
  "displayName": "String",
  "isHostTeam": "Boolean"
}
```

