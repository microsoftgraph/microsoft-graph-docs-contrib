---
title: "teamwork resource type"
description: "A container for the range of Microsoft Teams functionalities that are available for the organization."
author: "charlieforce"
ms.localizationpriority: medium
ms.prod: "teamwork"
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
|[Get Microsoft Teams settings for the organization](../api/teamwork-get.md)|[teamwork](../resources/teamwork.md)|Get organization settings for teamwork, such as the region and Microsoft Teams enablement status.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id| string | The default teamwork identifier. |
|isTeamsEnabled | boolean  | Represents the Microsoft Teams enablement status for the organization. |  
| region | string  | Represents the region of the organization.|

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
The following is a JSON representation of the resource.
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

## See also

- [userTeamwork resource](userteamwork.md)
