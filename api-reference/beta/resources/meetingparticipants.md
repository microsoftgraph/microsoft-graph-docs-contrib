---
title: "meetingParticipants resource type"
description: "Participants in a meeting."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# meetingParticipants resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Participants in a meeting.

## Properties

| Property                  | Type                                                           | Description                           |
| :------------------------ | :------------------------------------------------------------- | :------------------------------------ |
| attendees                 | [meetingParticipantInfo](meetingparticipantinfo.md) collection | Information of the meeting attendees. |
| organizer                 | [meetingParticipantInfo](meetingparticipantinfo.md)            | Information of the meeting organizer. |
| producers (deprecated)    | [meetingParticipantInfo](meetingparticipantinfo.md) collection | For broadcast meeting only.           |
| contributors (deprecated) | [meetingParticipantInfo](meetingparticipantinfo.md) collection | For broadcast meeting only.           |

> [!CAUTION]
> The **producers** and **contributors** properties are deprecated. All meeting participants are returned in the
> **attendees** collection. Use the **role** property of [meetingParticipantInfo](meetingparticipantinfo.md)
> to identify the meeting role of the attendee.

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.meetingParticipants"
}-->
```json
{
  "attendees": [{"@odata.type": "#microsoft.graph.meetingParticipantInfo"}],
  "organizer": {"@odata.type": "#microsoft.graph.meetingParticipantInfo"},
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "meetingParticipants resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


