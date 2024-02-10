---
title: "teamsAppDashboardCardBotConfiguration resource type"
description: "Represents a configuration for the dashboard card's bot of Teams App"
author: "ashish-goel"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppDashboardCardBotConfiguration resource type

Namespace: microsoft.graph

## Properties

### teamsAppDashboardCardBotConfiguration

| Property | Type | Description |
| -------- | ---- | ----------- |
| `botId` | `string` | The unique Microsoft app ID for the bot as registered with the Bot Framework |

## Relationships

| Relationship | Type	| Description |
|:---------------|:--------|:----------|
|appDefinitions|[teamsAppDefinition](teamsappdefinition.md) collection| The details for each version of the app. |

## JSON representation

The following is a JSON representation of the resource.
<-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppDashboardCardBotConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppDashboardCardBotConfiguration",
 
}
```

