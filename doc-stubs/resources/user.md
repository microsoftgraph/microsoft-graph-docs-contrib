---
title: "user resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# user resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List pendingMembers](../api/group-list-pendingmembers.md)|[user](../resources/user.md) collection|Get the user resources from the pendingMembers navigation property.|
|[Add pendingMembers](../api/group-post-pendingmembers.md)|[user](../resources/user.md)|Add pendingMembers by posting to the pendingMembers collection.|
|[Remove pendingMembers](../api/group-delete-pendingmembers.md)|None|Remove a [user](../resources/user.md) object.|
|[List users](../api/user-list.md)|[user](../resources/user.md) collection|Get a list of the [user](../resources/user.md) objects and their properties.|
|[Create user](../api/user-post-users.md)|[user](../resources/user.md)|Create a new [user](../resources/user.md) object.|
|[Get user](../api/user-get.md)|[user](../resources/user.md)|Read the properties and relationships of a [user](../resources/user.md) object.|
|[Update user](../api/user-update.md)|[user](../resources/user.md)|Update the properties of a [user](../resources/user.md) object.|
|[Delete user](../api/user-delete.md)|None|Deletes a [user](../resources/user.md) object.|
|[List chats](../api/user-list-chats.md)|[chat](../resources/chat.md) collection|Get the chat resources from the chats navigation property.|
|[Create chats](../api/user-post-chats.md)|[chat](../resources/chat.md)|Create a new chat object.|
|[Get chats](../api/user-get-chat.md)|[chat](../resources/chat.md)|Read the properties and relationships of a [chat](../resources/chat.md) object.|
|[Update chats](../api/user-update-chats.md)|[chat](../resources/chat.md)|Update the properties of a chats object.|
|[Delete chats](../api/user-delete-chats.md)|None|Delete a [chat](../resources/chat.md) object.|
|[List joinedTeams](../api/user-list-joinedteams.md)|[team](../resources/team.md) collection|Get the team resources from the joinedTeams navigation property.|
|[Create joinedTeams](../api/user-post-joinedteams.md)|[team](../resources/team.md)|Create a new team object.|
|[Get joinedTeams](../api/user-get-team.md)|[team](../resources/team.md)|Read the properties and relationships of a [team](../resources/team.md) object.|
|[Update joinedTeams](../api/user-update-joinedteams.md)|[team](../resources/team.md)|Update the properties of a joinedTeams object.|
|[Delete joinedTeams](../api/user-delete-joinedteams.md)|None|Delete a [team](../resources/team.md) object.|
|[List teamwork](../api/user-list-teamwork.md)|[userTeamwork](../resources/userteamwork.md) collection|Get the userTeamwork resources from the teamwork navigation property.|
|[Create teamwork](../api/user-post-teamwork.md)|[userTeamwork](../resources/userteamwork.md)|Create a new userTeamwork object.|
|[Get teamwork](../api/user-get-userteamwork.md)|[userTeamwork](../resources/userteamwork.md)|Read the properties and relationships of a [userTeamwork](../resources/userteamwork.md) object.|
|[Update teamwork](../api/user-update-teamwork.md)|[userTeamwork](../resources/userteamwork.md)|Update the properties of a teamwork object.|
|[Delete teamwork](../api/user-delete-teamwork.md)|None|Delete a [userTeamwork](../resources/userteamwork.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|chats|[chat](../resources/chat.md) collection|**TODO: Add Description**|
|joinedTeams|[team](../resources/team.md) collection|**TODO: Add Description**|
|teamwork|[userTeamwork](../resources/userteamwork.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user",
  "baseType": "Microsoft.Teams.GraphSvc.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)"
}
```

