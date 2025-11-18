---
title: "workPlanOccurrence resource type"
description: "Represents a specific work schedule instance for a particular day or time period in your work plan."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 12/20/2024
---

# workPlanOccurrence resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific work schedule instance for a particular day or time period in your work plan.

Your work plan occurrences can be automatically generated from recurring work patterns or manually created for special arrangements. These occurrences are useful for handling exceptions to your regular schedules. Examples include:

- Working different hours for a specific day
- Working from a different location 
- Taking time off

When a work plan occurrence exists for the same time period as a recurring pattern, the occurrence takes precedence, allowing for flexible schedule adjustments.

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
| [List occurrences](../api/workhoursandlocationssetting-occurrencesview.md) | [workPlanOccurrence](workplanoccurrence.md) collection | Retrieves work plan occurrences within a specified date range. |
| [Create](../api/workhoursandlocationssetting-post-occurrences.md) | [workPlanOccurrence](workplanoccurrence.md) | Create a new workPlanOccurrence object (time-off only). |
| [Update](../api/workplanoccurrence-update.md) | [workPlanOccurrence](workplanoccurrence.md) | Update the properties of a workPlanOccurrence object. |
| [Delete](../api/workplanoccurrence-delete.md) | None | Delete a workPlanOccurrence object (time-off only). |
| [setCurrentLocation](../api/workplanoccurrence-setcurrentlocation.md) | None | Update your work location for the current day or current active segment. |

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| end | [dateTimeTimeZone](datetimetimezone.md) | The end date and time for this occurrence. |
| id | String | Unique identifier for the occurrence. |
| recurrenceId | String | Identifier of the parent recurrence pattern that generated this occurrence. Is null for time-off occurrences since they don't have a parent recurrence. |
| start | [dateTimeTimeZone](datetimetimezone.md) | The start date and time for this occurrence. |
| timeOffDetails | [timeOffDetails](timeoffdetails.md) | Details about the time off. Only applicable when **workLocationType** is `timeOff`. |
| workLocationType | workLocationType | The type of work location. See [workLocationType values](#worklocationtype-values). |

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
| workLocationDetails | [place](place.md) | Navigation property to a place entity from the Microsoft Graph Places Directory API. Only applicable when **workLocationType** is `office`. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workPlanOccurrence"
} -->

```json
{
  "id": "String (identifier)",
  "recurrenceId": "String",
  "start": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "end": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "workLocationType": "String",
  "timeOffDetails": {
    "@odata.type": "microsoft.graph.timeOffDetails"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-12-20 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "workPlanOccurrence resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->