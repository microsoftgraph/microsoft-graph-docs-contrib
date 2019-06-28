---
title: "activityStatistics resource type"
description: "Time spent by MyAnalytics users in various activities, including email, meetings, focus time, chats, and calls."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# activityStatistics resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The activityStatistics resource shows the time spent by MyAnalytics users in various activities during and outside of working hours for the specified time range in the request, which uses an aggregation period of one day.

Activities currently included are meetings, emails, chats (instant messages), and calls. You can specify the startDate and endDate with filters. If you don’t use a filter, activity statistics are returned for the last seven days by default.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get activityStatistics](../api/activitystatistics-get.md) | [activityStatistics](activitystatistics.md) | Gets the read properties and relationships for the activity statistics for the specified time range.|
| [Update](../api/activitystatistics-update.md) | [activityStatistics](activitystatistics.md) | Update activityStatistics object. |
| [Delete](../api/activitystatistics-delete.md) | None | Delete activityStatistics object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|activity|activityType| Name of the activity for which statistics are returned. The supported values are: `Email`, `Meeting`, `Focus`, `Chat`, `Call`.|
|duration|Duration|Total hours spent on the activity.|
|endDate|Date|Date when the activity ended.|
|id|String| Read-only ID for the activity.|
|startDate|Date|Date when the activity started.|
|timeZoneUsed|String|The time zone used for the computation.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.activityStatistics",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "activity": "string",
  "duration": "String (timestamp)",
  "endDate": "String (timestamp)",
  "id": "String (identifier)",
  "startDate": "String (timestamp)",
  "timeZoneUsed": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "activityStatistics resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->