---
title: "activityStatistics resource type"
description: "Represents time spent by users on work activities, including email, meetings, focus work, chats, and calls."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# activityStatistics resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents time spent by users on various work activities during and outside of working hours, for the specified time range in the request, which uses an aggregation period of one day.

The type of activities include meetings, emails, chats (instant messages), calls, and focus work. You can specify the **startDate**, **endDate**, and **activity** to get data about a specific activity, for a specific day. If you don’t specify a time range or activity, activity statistics are returned for all activities, for the last complete week by default.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get activityStatistics](../api/activitystatistics-get.md) | [activityStatistics](activitystatistics.md) | Get the properties for the activity statistics for the specified time range. If no time range is specified, it gets the last complete week by default.|

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
  "@odata.type": "microsoft.graph.activityStatistics",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "activity": "string",
  "duration": "String (ISO 8601 duration)",
  "endDate": "String (ISO 8601 duration)",
  "id": "String (identifier)",
  "startDate": "String (ISO 8601 duration)",
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