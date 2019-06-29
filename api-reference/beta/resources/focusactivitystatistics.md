---
title: "focusActivityStatistics resource type"
description: "Gets information about individual focus work for MyAnalytics users"
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# focusActivityStatistics resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets the following additional details about individual focus work for MyAnalytics users. These are in addition to the standard activity properties pulled for all activities, such as startDate and endDate, which are described in [activityStatistics Properties](../resources/activitystatistics.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get focusActivityStatistics](../api/focusactivitystatistics-get.md) | [focusActivityStatistics](focusactivitystatistics.md) | Read properties and relationships of the focusActivityStatistics object; the name of the activity for which statistics are returned as “focus” |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|Duration|Duration|Total hours available for individual focus work, which is equal to working hours minus collaboration hours (time spent on calls, chats, email, and meetings). |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.focusActivityStatistics",
  "baseType": ""
}-->

```json
{
  "Duration": "String (timestamp)"
  }
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "emailActivityStatistics resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "focusActivityStatistics resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->