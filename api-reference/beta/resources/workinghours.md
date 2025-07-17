---
title: "workingHours resource type"
description: "Represents the days of the week and hours in a specific time zone that the user works."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "outlook"
author: "SuryaLashmiS"
ms.date: 09/19/2024
---

# workingHours resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the days of the week and hours in a specific time zone that the user works.

Having access to a user's working hours is useful in scenarios that handle activity or resource planning.
You can [get](../api/user-get-mailboxsettings.md#example-3-get-specifically-the-working-hour-settings-of-the-signed-in-users-mailbox) and [set](../api/user-update-mailboxsettings.md#example-2) the
working hours of a user as part of the user's [mailbox settings](mailboxsettings.md).

You can choose to set a time zone for your working hours differently from the time zone you have set on your Outlook client.
This can be useful in cases like when you travel to a different time zone than you usually work in. You can set the Outlook client
to the destination time zone so that Outlook time values are displayed in local time while you are there.
When other people request work meetings with you in your usual place of work, they can still respect your working hours in the
appropriate time zone.

> **Note:** The [working hours experience](https://support.microsoft.com/office/set-your-work-hours-and-location-in-outlook-af2fddf9-249e-4710-9c95-5911edfd76f6#articleFooterSupportBridge=communityBridge) in new Outlook and Outlook on the web isn't currently supported.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| daysOfWeek | dayOfWeek collection | The days of the week on which the user works. |
| startTime | Edm.TimeOfDay | The time of the day that the user starts working. |
| endTime | Edm.TimeOfDay | The time of the day that the user stops working. |
| timeZone | [timeZoneBase](timezonebase.md) | The time zone to which the working hours apply. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workingHours"
}-->

```json
{
  "daysOfWeek": ["string"],
  "startTime": "string (TimeOfDay)",
  "endTime": "string (TimeOfDay)",
  "timeZone": {"@odata.type": "microsoft.graph.timeZoneBase"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "workingHours resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


