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

Your work plan recurrence allows you to establish repeating weekly work schedules. The following list shows examples:
- Office work every Monday, Wednesday, and Friday from 9 AM to 5 PM
- Remote work on Tuesdays and Thursdays

You can create multiple recurrences to accommodate different work patterns throughout the week. Time-off entries can't be set as recurring patterns and must be added as individual [workPlanOccurrence](workplanoccurrence.md) objects.

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
| [List](../api/workhoursandlocationssetting-list-recurrences.md) | [workPlanRecurrence](workplanrecurrence.md) collection | Get the [recurrences](../resources/workplanrecurrence.md) from your own work plan via the **recurrences** navigation property. |
| [Create](../api/workhoursandlocationssetting-post-recurrences.md) | [workPlanRecurrence](workplanrecurrence.md) | Create a new [workPlanRecurrence](../resources/workplanrecurrence.md) object in your own work plan. |
| [Update](../api/workplanrecurrence-update.md) | [workPlanRecurrence](workplanrecurrence.md) | Update the properties of a [workPlanRecurrence](../resources/workplanrecurrence.md) object in your own work plan. |
| [Delete](../api/workplanrecurrence-delete.md) | None | Delete a [workPlanRecurrence](../resources/workplanrecurrence.md) object from your own work plan. |

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| end | [dateTimeTimeZone](datetimetimezone.md) | The end date and time for the recurring work plan. |
| id | String | Unique identifier for the recurrence. |
| placeId | String | Identifier of a place from the Microsoft Graph Places Directory API. Only applicable when **workLocationType** is set to `office`. |
| recurrence | [patternedRecurrence](patternedrecurrence.md) | The recurrence pattern that defines when this work plan repeats. |
| start | [dateTimeTimeZone](datetimetimezone.md) | The start date and time for the recurring work plan. |
| workLocationType | [workLocationType](../resources/workplanoccurrence.md#worklocationtype-values) | The type of work location. It can't be set to `timeOff`. Supports a subset of the values for **workLocationType**. The possible values are: `unspecified`, `office`, `remote`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workPlanRecurrence"
} -->

```json
{
  "end": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "id": "String (identifier)",
  "placeId": "String",
  "recurrence": {"@odata.type": "microsoft.graph.patternedRecurrence"},
  "start": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "workLocationType": "String"
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
