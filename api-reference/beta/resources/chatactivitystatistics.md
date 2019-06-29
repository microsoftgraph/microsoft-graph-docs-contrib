---
title: "chatActivityStatistics resource type"
description: "Gets information about chat activities for MyAnalytics users."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# chatActivityStatistics resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets the following additional details about Teams or Skype for Business chat or instant message activities for MyAnalytics users. These are in addition to the standard activity properties pulled for all activities, such as startDate and endDate, which are described in [activityStatistics Properties](../resources/activitystatistics.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get chatActivityStatistics](../api/chatactivitystatistics-get.md) | [chatActivityStatistics](chatactivitystatistics.md) | Read properties and relationships of chatActivityStatistics object. |
| [Update](../api/chatactivitystatistics-update.md) | [chatActivityStatistics](chatactivitystatistics.md) | Update chatActivityStatistics object. |
| [Delete](../api/chatactivitystatistics-delete.md) | None | Delete chatActivityStatistics object. |

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
  "@odata.type": "microsoft.graph.chatActivityStatistics",
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
  "description": "chatActivityStatistics resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

