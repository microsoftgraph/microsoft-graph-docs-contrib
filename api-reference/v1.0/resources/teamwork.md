---
title: "teamwork resource type"
description: "A container for Microsoft Teams features available for organization."
author: "akumar39"
doc_type: resourcePageType
ms.localizationpriority: high
ms.subservice: "teams"
ms.date: 08/14/2024
---

# teamwork resource type

Namespace: microsoft.graph

A container for the range of Microsoft Teams functionalities that are available for the organization.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/teamwork-list-deletedteams.md)|[deletedTeam](../resources/deletedteam.md) collection|Get a list of the [deletedTeam](../resources/deletedteam.md) objects and their properties.|
|[Get](../api/teamwork-get.md)|[teamwork](../resources/teamwork.md)|Get the properties and relationships of a teamwork object, such as the region of the organization and whether Microsoft Teams is enabled.|

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|id|string|The default teamwork identifier.|
|isTeamsEnabled|Boolean|Indicates whether Microsoft Teams is enabled for the organization.|  
|region|string|Represents the region of the organization or the tenant. The **region** value can be any region supported by the Teams payload. The possible values are: `Americas`, `Europe and MiddleEast`, `Asia Pacific`, `UAE`, `Australia`, `Brazil`, `Canada`, `Switzerland`, `Germany`, `France`, `India`, `Japan`, `South Korea`, `Norway`, `Singapore`, `United Kingdom`, `South Africa`, `Sweden`, `Qatar`, `Poland`, `Italy`, `Israel`, `Spain`, `Mexico`, `USGov Community Cloud`, `USGov Community Cloud High`, `USGov Department of Defense`, and `China`.|

## Relationships

| Relationship | Type | Description |
|:---------------|:--------|:----------|
|deletedTeams|[deletedTeam](../resources/deletedteam.md) collection| The deleted team.|
|deletedChats|[deletedChat](../resources/deletedchat.md) collection| A collection of deleted chats.|
|teamsAppSettings|[teamsAppSettings](../resources/teamsappsettings.md)|Represents tenant-wide settings for all [Teams apps](teamsapp.md) in the tenant.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamwork",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
    "@odata.type": "#microsoft.graph.teamwork",
    "id": "String",
    "isTeamsEnabled": "boolean",
    "region": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teamwork resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

## Related content

- [userTeamwork resource](userteamwork.md)
