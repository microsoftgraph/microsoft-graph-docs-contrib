---
title: "accessReviewRecurrenceSettings resource type (deprecated)"
description: "Specifies that the access review recurs at regular intervals."
ms.localizationpriority: medium
author: "shubhamguptacal"
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# accessReviewRecurrenceSettings resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer](../../includes/accessreviews-disclaimer.md)]

The **accessReviewRecurrenceSettings** resource type is used in the [accessReviewSettings](accessreviewsettings.md) resource and specifies that the access review recurs at regular intervals.

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| recurrenceType | String | The recurrence interval. Possible values: `onetime`, `weekly`, `monthly`, `quarterly`, `halfyearly` or `annual`.                                                                   |
| recurrenceEndType | String | How the recurrence ends. Possible values: `never`, `endBy`, `occurrences`, or `recurrenceCount`. If it's `never`, then there's no explicit end of the recurrence series. If it's `endBy`, then the recurrence ends at a certain date. If it's `occurrences`, then the series ends after `recurrenceCount` instances of the review have completed. |
| durationInDays | Int32 | The duration in days for recurrence. |
| recurrenceCount | Int32 | The count of recurrences, if the value of **recurrenceEndType** is `occurrences`, or `0` otherwise. |

## Relationships
None.

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewRecurrenceSettings"
}-->
```json
{
  "recurrenceType": "string",
  "recurrenceEndType": "string",
  "durationInDays": 1024,
  "recurrenceCount": 1024
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "accessReviewRecurrenceSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
