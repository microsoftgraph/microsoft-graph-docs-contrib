# workingHours resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the working hours and days of the week in a specific time zone.

You can get and set the working hours for a user as part of the user's [mailbox settings](mailboxSettings.md). 

You can choose to set 
a time zone for your working hours differently from the preferred time zone for your Outlook client. This is useful when you are 
travelling abroad, you can adapt the client time zone to the foreign time zone so that Outlook time values are displayed in local time.
When others arrange work meetings with you, they can still respect your working hours in your home country time zone.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| daysOfWeek | String collection | The days of the week on which the user works. |
| startTime | Edm.TimeOfDay | The time of the day that the user starts working. |
| endTime | Edm.TimeOfDay | The time of the day that the user stops working. |
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
  "startTime": "TimeOfDay",
  "endTime": "TimeOfDay",
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
  "tocPath": ""
}-->