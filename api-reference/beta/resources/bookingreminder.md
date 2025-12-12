---
title: "bookingReminder resource type"
description: "Represents when and whom to send an email reminder."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# bookingReminder resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
 
Represents when and whom to send an email reminder.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|message|String|The message in the reminder.|
|offset|Duration|The amount of time before the start of an appointment that the reminder should be sent. It's denoted in [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|
|recipients|bookingReminderRecipients| The persons who should receive the reminder. The possible values are: `allAttendees`, `staff`, `customer` and `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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


