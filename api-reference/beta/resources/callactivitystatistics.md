---
title: "callActivityStatistics resource type"
description: "Gets information about call activities for MyAnalytics users."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# callActivityStatistics resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets the following additional details about Teams or Skype for Business call activities for MyAnalytics users. These are in addition to the standard activity properties pulled for all activities, such as startDate and endDate, which are described in [activityStatistics Properties](../resources/activitystatistics.md#Properties).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get callActivityStatistics](../api/callactivitystatistics-get.md) | [callActivityStatistics](callactivitystatistics.md) | Read properties and relationships of callActivityStatistics object. |
| [Update](../api/callactivitystatistics-update.md) | [callActivityStatistics](callactivitystatistics.md) | Update callActivityStatistics object. |
| [Delete](../api/callactivitystatistics-delete.md) | None | Delete callActivityStatistics object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|afterHours|Duration|Time spent on chats outside of working hours.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callActivityStatistics",
  "baseType": ""
}-->

```json
{
  "afterHours": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "callActivityStatistics resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->