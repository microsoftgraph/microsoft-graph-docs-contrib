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

Represents the information about individual focus work for users. Focus work activities include the standard activity properties pulled for all activities, such as startDate and endDate, which are described in the Properties section for [activityStatistics](../resources/activitystatistics.md).

## Properties

There are no additional properties for focus work activities. However, the duration for focus is the total hours available for individual focus work, which is equal to working hours minus collaboration hours (time spent on calls, chats, email, and meetings).

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.analytics.focusActivityStatistics",
  "baseType": ""
}--> 

```json
{
  "Duration": "String (ISO 8601 duration)"
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