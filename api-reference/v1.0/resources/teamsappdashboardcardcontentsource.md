---
title: "teamsAppDashboardCardContentSource resource type"
description: "Represents a configuration for the source of the dashboard card's content of Teams App"
author: "ashish-goel"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppDashboardCardContentSource resource type

Namespace: microsoft.graph

## Properties

### dashboardCardContentSource

| Property | Type | Description |
| -------- | ---- | ----------- |
| `sourceType` | `dashboardCardContentSourceType` | Represents the type of source that powers the content of the dashboard card. |
| `botConfiguration` | `dashboardCardBotConfiguration` | The configuration for the bot source. Required if `sourceType` is set to `bot`. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppDashboardCardContentSource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppDashboardCardContentSource",
 
}
```

