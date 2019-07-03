---
title: "activityStatistics resource type"
description: "Time spent by users on work activities, including email, meetings, focus work, chats, and calls."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# activityStatistics resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Analytics API includes the activityStatistics resource type. This resource gets information about how users spent their time on various work activities during and outside of working hours, for the specified time range in the request, which uses an aggregation period of one day.

The type of activities include meetings, emails, chats (instant messages), calls, and focus work. You can specify the startDate and endDate. If you don’t specify a time range, activity statistics are returned for the last seven days by default.

## Turn on the Analytics API

1. Sign in to [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).
2. In **Sample Queries** in the left navigation pane, select **show more samples**.
3. In **Sample Categories**, turn on **Analytics**.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get activityStatistics](../api/activitystatistics-get.md) | [activityStatistics](activitystatistics.md) | Gets the read properties and relationships for the activity statistics for the specified time range. Or if no time range is specified, it gets the last seven days by default.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|activity|analyticsActivityType| Name of the activity for which statistics are returned. The supported values are: [Call](callactivitystatistics.md), [Chat](chatactivitystatistics.md), [Email](emailactivitystatistics.md), [Focus](focusactivitystatistics.md), and [Meeting](meetingactivitystatistics.md).|
|duration|Duration|Total hours spent on the activity.|
|endDate|Date|Date when the activity ended.|
|id|String| Read-only ID for the activity.|
|startDate|Date|Date when the activity started.|
|timeZoneUsed|String|The time zone used for the computation.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.analytics.activityStatistics",
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