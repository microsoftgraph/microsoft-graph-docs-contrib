---
title: "teamworkChannelTag resource type"
description: "Represents a tag owned by a channel in Microsoft Teams."
author: "npoplove"
ms.date: 10/26/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamworkChannelTag resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tag owned by a [channel](../resources/channel.md) in Microsoft Teams. Use channel tags to group users within a channel and mention them together.

Channel tags are separate from team-owned [teamworkTag](../resources/teamworktag.md) objects. Use the team that hosts the channel when managing channel tags, including for shared channels. Treat tag IDs as opaque identifiers and use them unchanged with the channel that owns the tag. Team tag IDs and channel tag IDs aren't interchangeable.

Channel tags support standard, private, and shared channels, except the **General** channel. The **General** channel doesn't have a separate channel tag collection with its own tags. Use [List teamworkTags](../api/teamworktag-list.md) and [Create teamworkTag](../api/teamworktag-post.md) to manage tags for the **General** channel.

Inherits from [teamworkTag](../resources/teamworktag.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/channel-list-tags.md)|[teamworkChannelTag](../resources/teamworkchanneltag.md) collection|Get a list of the [teamworkChannelTag](../resources/teamworkchanneltag.md) objects owned by the specified channel.|
|[Create](../api/channel-post-tags.md)|[teamworkChannelTag](../resources/teamworkchanneltag.md)|Create a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by a channel and assign its initial members.|
|[Get](../api/teamworkchanneltag-get.md)|[teamworkChannelTag](../resources/teamworkchanneltag.md)|Get the properties of a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.|
|[Update](../api/teamworkchanneltag-update.md)|[teamworkChannelTag](../resources/teamworkchanneltag.md)|Update the display name or description of a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.|
|[Delete](../api/teamworkchanneltag-delete.md)|None|Delete a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.|
| Channel tag membership |||
|[List members](../api/teamworkchanneltag-list-members.md)|[teamworkTagMember](../resources/teamworktagmember.md) collection|Get the [teamworkTagMember](../resources/teamworktagmember.md) objects assigned to a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.|
|[Create member](../api/teamworkchanneltag-post-members.md)|[teamworkTagMember](../resources/teamworktagmember.md)|Create a [teamworkTagMember](../resources/teamworktagmember.md) object, which assigns a user to a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.|
|[Get member](../api/teamworkchanneltag-get-members.md)|[teamworkTagMember](../resources/teamworktagmember.md)|Get a [teamworkTagMember](../resources/teamworktagmember.md) of a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.|
|[Delete member](../api/teamworkchanneltag-delete-members.md)|None|Delete a [teamworkTagMember](../resources/teamworktagmember.md) from a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|channelId|String|The identifier of the channel that owns the tag. Read-only.|
|description|String|The description of the tag as it appears in Microsoft Teams. Inherited from [teamworkTag](../resources/teamworktag.md).|
|displayName|String|The name of the tag as it appears in Microsoft Teams. The maximum length is 40 characters. Supports `$filter` (`eq`). Inherited from [teamworkTag](../resources/teamworktag.md).|
|id|String|The identifier of the tag. Read-only. Inherited from [teamworkTag](../resources/teamworktag.md).|
|memberCount|Int32|The number of users assigned to the tag. Read-only. Inherited from [teamworkTag](../resources/teamworktag.md).|
|tagType|[teamworkTagType](../resources/teamworktag.md#teamworktagtype-values)|The type of tag. Supports a subset of the members of the **teamworkTagType** enumeration. Channel tags support only the `standard` member. Inherited from [teamworkTag](../resources/teamworktag.md).|
|teamId|String|The identifier of the team that hosts the owning channel. Read-only. Inherited from [teamworkTag](../resources/teamworktag.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[teamworkTagMember](../resources/teamworktagmember.md) collection|The users assigned to the tag. Inherited from [teamworkTag](../resources/teamworktag.md). Use the [List channel tag members](../api/teamworkchanneltag-list-members.md) operation to get this collection.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkChannelTag",
  "baseType": "microsoft.graph.teamworkTag",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkChannelTag",
  "id": "String (identifier)",
  "teamId": "String",
  "displayName": "String",
  "description": "String",
  "memberCount": "Int32",
  "tagType": "String",
  "channelId": "String"
}
```
