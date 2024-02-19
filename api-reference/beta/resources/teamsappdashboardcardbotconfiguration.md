---
title: "teamsAppDashboardCardBotConfiguration resource type"
description: "Represents the bot configuration for a dashboard card in a Teams App"
author: "ashish-goel"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppDashboardCardBotConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the bot configuration for a dashboard card in a Teams App[teamsApp](teamsapp.md).

## Properties

### teamsAppDashboardCardBotConfiguration

| Property | Type | Description |
| -------- | ---- | ----------- |
| `botId` | `string` | The id of the bot associated with the specific [teamsAppDefinition](teamsappdefinition.md). This is a unique app ID for the bot as registered with the Bot Framework . This value is usually a GUID |

## Relationships

None

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
