---
title: "teamsAppDashboardCardContentSource resource type"
description: "Represents a configuration for the source of the dashboard card content in a teamsApp."
author: "ashish-goel"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppDashboardCardContentSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a configuration for the source of the dashboard card content in a [teamsApp](teamsapp.md).

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| botConfiguration | [teamsAppDashboardCardBotConfiguration](../resources/teamsappdashboardcardbotconfiguration.md) | The configuration for the bot source. Required if **sourceType** is set to `bot`. |
| sourceType | [teamsAppDashboardCardSourceType](../resources/teamsappdashboardcardcontentsource.md#teamsappdashboardcardsourcetype-values) | Represents the type of source that powers the content of the dashboard card. The possible values are: `bot`, `unknownFutureValue`. |

### teamsAppDashboardCardSourceType values

| Member             | Description                                      |
|:-------------------|:-------------------------------------------------|
| bot                | Dashboard card source type as a bot.         |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppDashboardCardContentSource"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppDashboardCardContentSource",
  "botConfiguration": {"@odata.type": "microsoft.graph.teamsAppDashboardCardBotConfiguration"},
  "sourceType": "String"
}
```

