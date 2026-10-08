---
title: "patternedRecurrence resource type"
description: "The recurrence pattern and range."
ms.localizationpriority: medium
author: "iamgirishck"
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# patternedRecurrence resource type

Namespace: microsoft.graph

In [accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md) and [accessReviewHistoryScheduleSettings](../resources/accessreviewhistoryschedulesettings.md), the **recurrence** property uses **patternedRecurrence** to define the recurrence pattern and range. This shared object is also used to define the recurrence of [calendar events](../resources/event.md) and [access package assignments](../resources/accesspackageassignment.md) in Microsoft Entra ID.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|pattern|[recurrencePattern](../resources/recurrencepattern.md)|The frequency of an event. <br/><br/> For access reviews: <li>Do not specify this property for a one-time access review. <li> Only **interval**, **dayOfMonth**, and **type** (`weekly`, `absoluteMonthly`) properties of [recurrencePattern](../resources/recurrencepattern.md) are supported.|
|range|[recurrenceRange](../resources/recurrencerange.md)|The duration of an event.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.patternedRecurrence"
}-->

```json
{
  "pattern": {"@odata.type": "microsoft.graph.recurrencePattern"},
  "range": {"@odata.type": "microsoft.graph.recurrenceRange"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "patternedRecurrence resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
