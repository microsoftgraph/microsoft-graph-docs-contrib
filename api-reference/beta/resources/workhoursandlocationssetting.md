---
title: "workHoursAndLocationsSetting resource type"
description: "Represents your working hours and location preferences for modern hybrid work scenarios."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 12/10/2025
---

# workHoursAndLocationsSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents your working hours and location preferences for modern hybrid work scenarios.

Work hours and location information is useful in scenarios that involve planning in office days with colleagues, and scheduling meetings across different working hours and time zones. You can [get](../api/workhoursandlocationssetting-get.md) and [update](../api/workhoursandlocationssetting-update.md) your work hours and locations as part of your personal work planning.

With these APIs you can now set different work locations and schedules to accommodate your flexible work arrangements.

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
| [Get](../api/workhoursandlocationssetting-get.md) | [workHoursAndLocationsSetting](workhoursandlocationssetting.md) | Get the properties and relationships of your own [workHoursAndLocationsSetting](../resources/workhoursandlocationssetting.md). |
| [Update](../api/workhoursandlocationssetting-update.md) | [workHoursAndLocationsSetting](workhoursandlocationssetting.md) | Update the properties of your own [workHoursAndLocationsSetting](../resources/workhoursandlocationssetting.md). |
| [Occurrences view](../api/workhoursandlocationssetting-occurrencesview.md) | [workPlanOccurrence](workplanoccurrence.md) collection | Get [work plan occurrences](../resources/workplanoccurrence.md) from your own work plan within a specified date range. |
| [List recurrences](../api/workhoursandlocationssetting-list-recurrences.md) | [workPlanRecurrence](workplanrecurrence.md) collection | Get the [recurrences](../resources/workplanrecurrence.md) from your own work plan via the **recurrences** navigation property. |
| [Create recurrence](../api/workhoursandlocationssetting-post-recurrences.md) | [workPlanRecurrence](workplanrecurrence.md) | Create a new [workPlanRecurrence](../resources/workplanrecurrence.md) object in your own work plan. |
| [Create occurrence](../api/workhoursandlocationssetting-post-occurrences.md) | [workPlanOccurrence](workplanoccurrence.md) | Create a new [workPlanOccurrence](../resources/workplanoccurrence.md) object in your own work plan. |

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| maxSharedWorkLocationDetails | [maxWorkLocationDetails](../resources/workhoursandlocationssetting.md#maxworklocationdetails-values) | Controls the level of work location details that can be shared with colleagues. |

### maxWorkLocationDetails values

| Member | Description |
|:-------|:------------|
| unknown | The level of location details to share is unknown. This value is for backward compatibility only and can't be set as a new value. |
| none | No location details are shared. |
| approximate | Only general work location type is shared, such as office or remote. |
| specific | Detailed location information is shared, such as building and desk information. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

| Relationship | Type | Description |
|:-------------|:-----|:------------|
| recurrences | [workPlanRecurrence](workplanrecurrence.md) collection | Collection of recurring work plans defined by the user. |
| occurrences | [workPlanOccurrence](workplanoccurrence.md) collection | Collection of work plan occurrences. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.workHoursAndLocationsSetting"
} -->

```json
{
  "maxSharedWorkLocationDetails": "String"
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-12-20 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "workHoursAndLocationsSetting resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
