---
title: "workingHours resource type"
description: "Represents the days of the week and hours in a specific time zone that the user works."
ms.localizationpriority: medium
author: "SuryaLashmiS"
ms.prod: "outlook"
doc_type: resourcePageType
---

# workingHours resource type

Namespace: microsoft.graph

Represents the days of the week and hours in a specific time zone that the user works.

Having access to a user's working hours is useful in scenarios that handle activity or resource planning.
You can [get](../api/user-get-mailboxsettings.md#example-3-get-specifically-the-working-hour-settings-of-the-signed-in-users-mailbox) and [set](../api/user-update-mailboxsettings.md#example-2) the
working hours of a user as part of the user's [mailbox settings](mailboxsettings.md).

You can choose to set a time zone for your working hours differently from the time zone you have set on your Outlook client.
This can be useful in cases like when you travel to a different time zone than you usually work in. You can set the Outlook client
to the destination time zone so that Outlook time values are displayed in local time while you are there.
When other people request work meetings with you in your usual place of work, they can still respect your working hours in the
appropriate time zone.

[Note] 

This property will return the legacy work hours experience, recently a new experience was introduced that replaces the legacy work hours experience,
but legacy work hours will continue to be supported.  Because the legacy experience supports only a single start time and end time for the entire work week,
the legacy work hours will approximate the modern work hours and location.  

If a user sets a modern work hours and location experince, the times for the legacy work hours will be configured to the minimum start time and maximum end time of the modern work hours.  

Until a user sets up modern working hours, changes to legacy working hours will also update the times in their modern working hours.  However, once a user sets up (or updates) their modern working hours,
future changes to legacy working hours will not propagate and overwrite the modern working hours.  

The exception to this rule is working hours time zone.  Whenever the legacy working hours time zone changes, it will update the time zone for the modern working hours.
This is to ensure that others can view accurate availability when a user on a legacy client travels across time zones.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| daysOfWeek | dayOfWeek collection | The days of the week on which the user works. |
| endTime | Edm.TimeOfDay | The time of the day that the user stops working. |
| startTime | Edm.TimeOfDay | The time of the day that the user starts working. |
| timeZone | [timeZoneBase](timezonebase.md) | The time zone to which the working hours apply. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workingHours"
}-->

```json
{
  "daysOfWeek": ["string"],
  "endTime": "String (timeofday)",
  "startTime": "String (timeofday)",
  "timeZone": {"@odata.type": "microsoft.graph.timeZoneBase"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workingHours resource",
  "keywords": "",
  "section": "documentation",
  "suppressions": [
    "Warning: /api-reference/v1.0/resources/workinghours.md/microsoft.graph.workingHours/daysOfWeek:
      Inconsistent types between parameter (String) and table (Object)"
  ],
  "tocPath": ""
}-->

