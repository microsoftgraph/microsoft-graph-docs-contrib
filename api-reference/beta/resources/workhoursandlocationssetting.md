---
title: "workHoursAndLocationsSetting resource type"
description: "Represents your working hours and location preferences for effective scheduling and availability management."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 12/20/2024
---

# workHoursAndLocationsSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents your working hours and location preferences for modern hybrid work scenarios.

Having access to your work hours and location information is useful in scenarios that handle activity planning, resource allocation, and meeting scheduling. You can [get](../api/workhoursandlocationssetting-get.md) and [update](../api/workhoursandlocationssetting-update.md) your work hours and locations as part of your personal work planning.

You can set different work locations and schedules to accommodate your flexible work arrangements. These settings are useful for hybrid work scenarios where you may work from the office some days and remotely on others. You can set recurring patterns for regular schedules and create specific occurrences for exceptions or special arrangements.

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
| [Get workHoursAndLocationsSetting](../api/workhoursandlocationssetting-get.md) | [workHoursAndLocationsSetting](workhoursandlocationssetting.md) | Get the user's working hours and location settings. |
| [Update workHoursAndLocationsSetting](../api/workhoursandlocationssetting-update.md) | [workHoursAndLocationsSetting](workhoursandlocationssetting.md) | Update the user's working hours and location settings. |
| [occurrencesView](../api/workhoursandlocationssetting-occurrencesview.md) | [workPlanOccurrence](workplanoccurrence.md) collection | Retrieves work plan occurrences within a specified date range. |

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| maxSharedWorkLocationDetails | maxWorkLocationDetails | Controls the level of location detail that can be shared with colleagues. Possible values are: `unknown`, `none`, `approximate`, `specific`, `unknownFutureValue`. |

## Relationships

| Relationship | Type | Description |
|:-------------|:-----|:------------|
| recurrences | [workPlanRecurrence](workplanrecurrence.md) collection | Navigation property to a collection of recurring work plans defined by the user. |
| occurrences | [workPlanOccurrence](workplanoccurrence.md) collection | Navigation property to a collection of work plan occurrences. |

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