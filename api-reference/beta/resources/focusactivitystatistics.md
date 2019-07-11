---
title: "focusActivityStatistics resource type"
description: "Represents information about individual focus work for users"
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# focusActivityStatistics resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents data about the user's time available for focus work. This is based on [activityStatistics](../resources/activitystatistics.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|activity|analyticsActivityType| Focus activity for which statistics are returned.|
|duration|Duration|Total hours available for individual focus work, which is equal to working hours minus collaboration hours (time spent on calls, chats, email, and meetings).|
|endDate|Date|Date when the focus activity ended.|
|id|String| Read-only ID for the focus activity.|
|startDate|Date|Date when the focus activity started.|
|timeZoneUsed|String|The time zone used for the computation.|

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
  "description": "focusActivityStatistics resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->