---
title: "workPlanRecurrence resource type"
description: "Represents a recurring work schedule pattern that defines when and where you work regularly in your work plan."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 12/20/2024
---

# workPlanRecurrence resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a recurring work schedule pattern that defines when and where you work regularly in your work plan.

Your work plan recurrence allows you to establish repeating weekly work schedules. Examples include:

- Office work every Monday, Wednesday, and Friday from 9 AM to 5 PM
- Remote work on Tuesdays and Thursdays

You can create multiple recurrences to accommodate different work patterns throughout the week.

Time-off entries can't be set as recurring patterns and must be added as individual [workPlanOccurrence](workplanoccurrence.md) objects.

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
| [List recurrences](../api/workhoursandlocationssetting-list-recurrences.md) | [workPlanRecurrence](workplanrecurrence.md) collection | Get the recurrences from the recurrences navigation property. |
| [Create](../api/workhoursandlocationssetting-post-recurrences.md) | [workPlanRecurrence](workplanrecurrence.md) | Create a new workPlanRecurrence object. |
| [Update](../api/workplanrecurrence-update.md) | [workPlanRecurrence](workplanrecurrence.md) | Update the properties of a workPlanRecurrence object. |
| [Delete](../api/workplanrecurrence-delete.md) | None | Delete a workPlanRecurrence object. |

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| end | [dateTimeTimeZone](datetimetimezone.md) | The end date and time for the recurring work plan. |
| id | String | Unique identifier for the recurrence. |
| recurrence | [patternedRecurrence](patternedrecurrence.md) | The recurrence pattern defining when this work plan repeats. |
| start | [dateTimeTimeZone](datetimetimezone.md) | The start date and time for the recurring work plan. |
| workLocationType | workLocationType | The type of work location. Can't be set to `timeOff`. See [workLocationType values](#worklocationtype-values). |

### workLocationType values

| Member | Description |
|:-------|:------------|
| unspecified | Indicates the user didn't specify the location. |
| office | Indicates the user is working from an office location. |
| remote | Indicates the user is working remotely. |
| timeOff | Indicates the user is on time off. |
| unknownFutureValue | Reserved for future use. |

## Relationships

| Relationship | Type | Description |
|:-------------|:-----|:------------|
| workLocationDetails | [place](place.md) | Navigation property to a place entity from the Microsoft Graph Places Directory API. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workPlanRecurrence"
} -->

```json
{
  "id": "String (identifier)",
  "start": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "end": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "workLocationType": "String",
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-12-20 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "workPlanRecurrence resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->