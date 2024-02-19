---
title: "teamsAppDashboardCardBotConfiguration resource type"
description: "Represents a configuration for the dashboard card's bot of a teamsApp."
author: "ashish-goel"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppDashboardCardBotConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a configuration for the dashboard card's bot of a [teamsApp](teamsapp.md).

## Properties

| Property | Type   | Description                                                                   |
|:---------|:-------|:------------------------------------------------------------------------------|
| botId    | String | The unique Microsoft app ID for the bot as registered with the Bot Framework. |

## Relationships

| Relationship | Type	| Description |
|:---------------|:--------|:----------|
|appDefinitions|[teamsAppDefinition](teamsappdefinition.md) collection| The details for each version of the app. |

## JSON representation

The following JSON representation shows the resource type.
<-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppDashboardCardBotConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppDashboardCardBotConfiguration",
  "botId": "String"
}
```
