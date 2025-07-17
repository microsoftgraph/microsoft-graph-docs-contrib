---
title: "meetingTimeSuggestion resource type"
description: "A meeting suggestion that includes information like meeting time, attendance likelihood, individual "
ms.localizationpriority: medium
author: "vrod9429"
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# meetingTimeSuggestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A meeting suggestion that includes information like meeting time, attendance likelihood, individual 
availability, and available meeting locations.

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingTimeSuggestion"
}-->

```json
{
  "attendeeAvailability": [{"@odata.type": "microsoft.graph.attendeeAvailability"}],
  "confidence": 1024.0,
  "locations": [{"@odata.type": "microsoft.graph.location"}],
  "meetingTimeSlot": {"@odata.type": "microsoft.graph.timeSlot"},
  "order": 1024,
  "organizerAvailability": "String",
  "suggestionReason": "String"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|attendeeAvailability|[attendeeAvailability](attendeeavailability.md) collection|An array that shows the availability status of each attendee for this meeting suggestion.|
|confidence|Double|A percentage that represents the likelhood of all the attendees attending.|
|locations|[location](location.md) collection|An array that specifies the name and geographic location of each meeting location for this meeting suggestion.|
|meetingTimeSlot|[timeSlot](timeslot.md)|A time period suggested for the meeting.|
|order|Int32|Order of meeting time suggestions sorted by their computed confidence value from high to low, then by chronology if there are suggestions with the same confidence. |
|organizerAvailability|freeBusyStatus| Availability of the meeting organizer for this meeting suggestion. Possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`.|
|suggestionReason|String|Reason for suggesting the meeting time.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "meetingTimeSuggestion resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


