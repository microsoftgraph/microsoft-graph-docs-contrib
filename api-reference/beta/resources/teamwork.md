---
title: "teamwork resource type"
description: "A container for the range of Microsoft Teams functionalities that are available for the organization."
author: "charlieforce"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamwork resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for the range of Microsoft Teams functionalities that are available for the organization. 

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List deletedTeams](../api/teamwork-list-deletedteams.md)|[deletedTeam](../resources/deletedteam.md) collection|Get a list of the [deletedTeam](../resources/deletedteam.md) objects and their properties.|
|[List teamTemplates](../api/teamwork-list-teamtemplates.md)|[teamTemplate](../resources/teamtemplate.md) collection|Get the list of [teamTemplate](../resources/teamtemplate.md) objects available for the tenant. |
|[Get teamwork](../api/teamwork-get.md)|[teamwork](../resources/teamwork.md)|Get the properties and relationships of a teamwork object, such as the region of the organization and whether Microsoft Teams is enabled.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|string|The default teamwork identifier.|
|isTeamsEnabled|Boolean|Indicates whether Microsoft Teams is enabled for the organization.|  
|region|string|Represents the region of the organization.|

## Relationships
| Relationship | Type | Description |
|:---------------|:--------|:----------|
|deletedTeams|[deletedTeam](../resources/deletedteam.md) collection| A collection of deleted teams.|
|deletedChats|[deletedChat](../resources/deletedchat.md) collection| A collection of deleted chats.|
|devices|[teamworkDevice](../resources/teamworkdevice.md) collection|The Teams devices provisioned for the tenant.|
|teamsAppSettings|[teamsAppSettings](../resources/teamsappsettings.md)|Represents tenant-wide settings for all [Teams apps](teamsapp.md) in the tenant.|
|teamTemplates|[teamtemplate](../resources/teamtemplate.md) collection| The templates associated with a team.|
|workforceIntegrations|[workforceIntegration](../resources/workforceintegration.md) collection| A workforce integration with shifts.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamwork",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
    "@odata.type": "#microsoft.graph.teamwork",
    "id": "String",
    "isTeamsEnabled": "boolean",
    "region": "String"
}
```

## Related content

- [userTeamwork resource](userteamwork.md)
