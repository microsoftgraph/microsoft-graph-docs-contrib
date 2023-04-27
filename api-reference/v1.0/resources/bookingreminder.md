---
title: "bookingReminder resource type"
description: "Represents when and whom to send an email reminder."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingReminder resource type

Namespace: microsoft.graph

Represents when and whom to send an email reminder.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|message|String|The message in the reminder.|
|offset|Duration|The amount of time before the start of an appointment that the reminder should be sent. It's denoted in [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|
|recipients|bookingReminderRecipients|The persons who should receive the reminder. Possible values are: `allAttendees`, `staff`, `customer`, `unknownFutureValue`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingReminder"
}-->

```json
{
  "message": "String",
  "offset": "String (timestamp)",
  "recipients": {"@odata.type": "microsoft.graph.bookingReminderRecipients"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "bookingReminder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


