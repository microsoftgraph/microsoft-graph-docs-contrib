---
title: "sharedWithChannelTeamInfo resource type"
description: "Represents a team that is shared with a channel."
author: "devjha-ms"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# sharedWithChannelTeamInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information for a [team](team.md) with which a channel is shared. A [team](team.md) can be shared multiple channels.


Inherits from [teamInfo](../resources/teaminfo.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teams sharing a channel](../api/sharedwithchannelteaminfo-list.md)|[sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) collection|Get a list of the [sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) objects and their properties.|
|[Get team sharing a channel](../api/sharedwithchannelteaminfo-get.md)|[sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md)|Read the properties and relationships of a [sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) object.|
|[Unshare channel with teamchannels](../api/sharedwithchannelteaminfo-delete.md)|None|Delete a [sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) object.|
|[List allowed members](../api/sharedwithchannelteaminfo-list-allowedmembers.md)|[conversationMember](../resources/conversationmember.md) collection|Get the list of team members who have access to the shared channel.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the [team](team.md). Inherited from [teamInfo](../resources/teaminfo.md).|
|id|String|The unique identifier for the [team](team.md). Read-only.|
|isHostTeam|Boolean|Indicates whether the [team](team.md) is the host of the [channel](channel.md).|
|tenantId|String|The ID of the Microsoft Entra tenant. Inherited from [teamInfo](../resources/teaminfo.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|allowedMembers|[conversationMember](../resources/conversationmember.md) collection|A collection of team members who have access to the shared channel.|


## JSON representation
The following JSON representation shows the resource type.
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
