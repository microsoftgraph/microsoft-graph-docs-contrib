---
title: "teamworkTagMember resource type"
description: "Represents a user in a team who has a tag applied to them."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkTagMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user in a team to whom a tag is applied.

This resource is also used for members of a [teamworkChannelTag](../resources/teamworkchanneltag.md). Use the member IDs returned by [List channel tag members](../api/teamworkchanneltag-list-members.md) or [Create channel tag member](../api/teamworkchanneltag-post-members.md), not channel membership IDs from other APIs. Member IDs from another channel aren't interchangeable with IDs in the owning channel.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/teamworktagmember-list.md)|[**teamworkTagMember**](teamworktagmember.md) collection|Get a list of the members of a standard tag in a team and their properties.|
|[Create](../api/teamworktagmember-post.md)|[**teamworkTagMember**](teamworktagmember.md)|Create a new **teamworkTagMember** object.|
|[Get](../api/teamworktagmember-get.md)|[**teamworkTagMember**](teamworktagmember.md)|Get the properties and relationships of a member of a standard tag in a team.|
|[Delete](../api/teamworktagmember-delete.md)|None|Delete a member from a standard tag in the team.|
| Channel tag membership |||
|[List channel tag members](../api/teamworkchanneltag-list-members.md)|[teamworkTagMember](../resources/teamworktagmember.md) collection|Get the [teamworkTagMember](../resources/teamworktagmember.md) objects assigned to a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.|
|[Create channel tag member](../api/teamworkchanneltag-post-members.md)|[teamworkTagMember](../resources/teamworktagmember.md)|Create a [teamworkTagMember](../resources/teamworktagmember.md) object, which assigns a user to a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.|
|[Get channel tag member](../api/teamworkchanneltag-get-members.md)|[teamworkTagMember](../resources/teamworktagmember.md)|Get a [teamworkTagMember](../resources/teamworktagmember.md) of a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.|
|[Delete channel tag member](../api/teamworkchanneltag-delete-members.md)|None|Delete a [teamworkTagMember](../resources/teamworktagmember.md) from a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The member's display name. For channel-owned tags, the value can be `null` if the user can't be resolved.|
|id|String|ID of the member.|
|tenantId|String|The ID of the tenant that the tag member is a part of. For channel-owned tags, this is the request tenant, not a separately resolved home tenant.|
|userId|String|The user ID of the member.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkTagMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkTagMember",
  "displayName": "String",  
  "id": "String (Identifier)",
  "tenantId": "String",
  "userId": "String"
}
```
