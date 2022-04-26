---
title: "deletedTeam resource type"
description: "A deleted team in Microsoft Teams is a collection of channels."
author: agnesliu
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# deletedTeam resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A deleted team in Microsoft Teams is a collection of [channel](channel.md) objects. A channel represents a topic, and therefore a logical isolation of discussion, within a deleted team.

Every deleted team is associated with a [Microsoft 365 group](../resources/group.md). For more information about working with groups and members in teams, see [Use the Microsoft Graph REST API to work with Microsoft Teams](teams-api-overview.md).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List deletedTeams](../api/teamwork-list-deletedteam.md)|[deletedTeam](../resources/deletedteam.md) collection|Get a list of the [deletedTeam](../resources/deletedteam.md) objects and their properties.|
|[Create deletedTeam](../api/teamwork-post-deletedteam.md)|[deletedTeam](../resources/deletedteam.md)|Create a new [deletedTeam](../resources/deletedteam.md) object.|
|[Get deletedTeam](../api/deletedteam-get.md)|[deletedTeam](../resources/deletedteam.md)|Read the properties and relationships of a [deletedTeam](../resources/deletedteam.md) object.|
|[Update deletedTeam](../api/deletedteam-update.md)|[deletedTeam](../resources/deletedteam.md)|Update the properties of a [deletedTeam](../resources/deletedteam.md) object.|
|[Delete deletedTeam](../api/teamwork-delete-deletedteam.md)|None|Deletes a [deletedTeam](../resources/deletedteam.md) object.|
|[getAllMessages](../api/deletedteam-getallmessages.md)|[chatMessage](../resources/chatmessage.md) collection|Get all messages in the deleted team.|
|[List allChannels](../api/team-list-channels.md)|[channel](../resources/channel.md) collection|Get the channel resources from the allChannels navigation property.|
|[Add channel](../api/deletedteam-post-allchannels.md)|[channel](../resources/channel.md)|Add allChannels by posting to the allChannels collection.|
|[Remove allChannels](../api/deletedteam-delete-allchannels.md)|None|Remove a [channel](../resources/channel.md) object.|
|[List channels](../api/team-list-channels.md)|[channel](../resources/channel.md) collection|Get the channel resources from the channels navigation property.|
|[Create channel](../api/deletedteam-post-channels.md)|[channel](../resources/channel.md)|Create a new channel object.|
|[List channel](../api/team-list-channels.md)|[channel](../resources/channel.md) collection|Get the channel resources from the primaryChannel navigation property.|
|[Create channel](../api/deletedteam-post-primarychannel.md)|[channel](../resources/channel.md)|Create a new channel object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of a deleted team. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|allChannels|[channel](../resources/channel.md) collection|All channels of the deleted team. |
|channels|[channel](../resources/channel.md) collection|The channels those are either shared with this deleted team or created in this deleted team.|
|primaryChannel|[channel](../resources/channel.md)|The primary channels of the deleted team.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deletedTeam",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deletedTeam",
  "id": "String (identifier)",
  "isMembershipLimitedToOwners": "Boolean"
}
```

