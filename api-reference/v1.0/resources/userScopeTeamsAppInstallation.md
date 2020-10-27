---
title: "userScopeTeamsAppInstallation resource type"
description: "Represents a teamsApp installed in the personal scope of a user."
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# userScopeTeamsAppInstallation resource type

Namespace: microsoft.graph

Represents a [teamsApp](teamsapp.md) installed in a [team](team.md), a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true), or the personal scope of a [user](user.md). Any bots that are part of the app will become part of any team, chat, or user's personal scope that the app is added to.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
| |  | |


## Properties

| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| id                  | string   | A unique ID (not the Teams appID). |

## Relationships

| Relationship   | Type    | Description |
|:---------------|:--------|:----------|
|teamsApp|[teamsApp](teamsapp.md)| The app that is installed. |
|teamsAppDefinition|[teamsAppDefinition](teamsappdefinition.md)| The details of this version of the app. |

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppInstallation",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "id": "string"
}
```

## See also

- [teamsApp](teamsapp.md)
- [teamsAppDefinition](teamsappdefinition.md)
- [teamsTab](../resources/teamstab.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teamsApp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
  "suppressions": []
}-->

