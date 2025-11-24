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

Your work plan occurrences can be automatically generated from recurring work patterns or manually created for special arrangements. These occurrences are useful for handling exceptions to your regular schedules. The following list shows possible examples:

- Working different hours for a specific day
- Working from a different location 
- Taking time off

When a work plan occurrence exists for the same time period as a recurring pattern, the occurrence takes precedence, allowing for flexible schedule adjustments.

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
| [List](../api/workhoursandlocationssetting-occurrencesview.md) | [workPlanOccurrence](workplanoccurrence.md) collection | Get [work plan occurrences](../resources/workplanoccurrence.md) from your own work plan within a specified date range. |
| [Create](../api/workhoursandlocationssetting-post-occurrences.md) | [workPlanOccurrence](workplanoccurrence.md) | Create a new [workPlanOccurrence](../resources/workplanoccurrence.md) object in your own work plan. |
| [Update](../api/workplanoccurrence-update.md) | [workPlanOccurrence](workplanoccurrence.md) | Update the properties of a [workPlanOccurrence](../resources/workplanoccurrence.md) object in your own work plan. |
| [Delete](../api/workplanoccurrence-delete.md) | None | Delete a [workPlanOccurrence](../resources/workplanoccurrence.md) object from your own work plan. |
| [Set current location](../api/workplanoccurrence-setcurrentlocation.md) | None | Update your [work](../resources/workplanoccurrence.md) location for the current day or current active segment. |

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| end | [dateTimeTimeZone](datetimetimezone.md) | The end date and time for this occurrence. |
| id | String | Unique identifier for the occurrence. |
| recurrenceId | String | The identifier of the parent recurrence pattern that generated this occurrence. The value is `null` for time-off occurrences because they don't have a parent recurrence. |
| start | [dateTimeTimeZone](datetimetimezone.md) | The start date and time for this occurrence. |
| timeOffDetails | [timeOffDetails](timeoffdetails.md) | The details about the time off. Only applicable when **workLocationType** is set to `timeOff`. |
| workLocationType | [workLocationType](../resources/workplanoccurrence.md#worklocationtype-values) | The type of work location. The possible values are: `unspecified`, `office`, `remote`, `timeOff`, `unknownFutureValue`. |

### workLocationType values

| Member | Description |
|:-------|:------------|
| unspecified | Indicates that the user didn't specify the location. |
| office | Indicates that the user works from an office location. |
| remote | Indicates that the user works remotely. |
| timeOff | Indicates that the user is on time-off. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

| Relationship | Type | Description |
|:-------------|:-----|:------------|
| workLocationDetails | [place](place.md) | Details about the work location. Only applicable when **workLocationType** is set to `office`. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workPlanOccurrence"
} -->

```json
{
  "end": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "id": "String (identifier)",
  "recurrenceId": "String",
  "start": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "timeOffDetails": {"@odata.type": "microsoft.graph.timeOffDetails"},
  "workLocationType": "String"
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
