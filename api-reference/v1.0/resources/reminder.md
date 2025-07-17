---
title: "reminder resource type"
description: "A reminder for an event in a user calendar."
ms.localizationpriority: medium
author: "iamgirishck"
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# reminder resource type

Namespace: microsoft.graph

A reminder for an [event](event.md) in a user [calendar](calendar.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|changeKey|String|Identifies the version of the reminder. Every time the reminder is changed, **changeKey** changes as well. This allows Exchange to apply changes to the correct version of the object.|
|eventEndTime|[DateTimeTimeZone](datetimetimezone.md)|The date, time and time zone that the event ends.|
|eventId|String|The unique ID of the event. Read only.|
|eventLocation|[Location](location.md)|The location of the event.|
|eventStartTime|[DateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the event starts.|
|eventSubject|String|The text of the event's subject line.|
|eventWebLink|String|The URL to open the event in Outlook on the web.<br/><br/>The event opens in the browser if you're logged in to your mailbox via Outlook on the web. You're prompted to log in if you aren't already logged in with the browser.<br/><br/>This URL can't be accessed from within an iFrame.|
|reminderFireTime|[DateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the reminder is set to occur.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.reminder"
}-->

```json
{
  "changeKey": "string",
  "eventEndTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "eventId": "string",
  "eventLocation": {"@odata.type": "microsoft.graph.location"},
  "eventStartTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "eventSubject": "string",
  "eventWebLink": "string",
  "reminderFireTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "reminder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

