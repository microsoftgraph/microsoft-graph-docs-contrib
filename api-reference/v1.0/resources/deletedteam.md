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

A deleted team in Microsoft Teams is a collection of [channel](channel.md) objects. A channel represents a topic, and therefore a logical isolation of discussion, within a deleted team.

Every deleted team is associated with a [Microsoft 365 group](../resources/group.md). For more information about working with groups and members in teams, see [Use the Microsoft Graph REST API to work with Microsoft Teams](teams-api-overview.md).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[getAllMessages](../api/deletedteam-getallmessages.md)|[chatMessage](../resources/chatmessage.md) collection|Get all messages in the deleted team.|
|[List deletedTeams](../api/teamwork-list-deletedteams.md)|[deletedTeam](../resources/deletedteam.md) collection|Get a list of the [deletedTeam](../resources/deletedteam.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of a deleted team. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|channels|[channel](../resources/channel.md) collection|The channels that are either shared with this deleted team or created in this deleted team.|

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
  "id": "String (identifier)"
}
```
