---
title: "meetingParticipants resource type"
description: "Participants in a meeting."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# meetingParticipants resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Participants in a meeting.

## Properties

| Property       | Type    | Description|
|:---------------|:--------|:----------|
| attendees | [meetingParticipantInfo](meetingparticipantinfo.md) collection |  |
| organizer | [meetingParticipantInfo](meetingparticipantinfo.md) |  |
| producers | [meetingParticipantInfo](meetingparticipantinfo.md) collection | For broadcast meeting only. |
| contributors | [meetingParticipantInfo](meetingparticipantinfo.md) collection | For broadcast meeting only. |

Question to @jsandoval-msft: according to Graph Review results we are deprecating "producers" and "contributors" and using "role" inside "attendees"/"organizer" to differentiate the role of meeting participants. Should we remove "producers" and "contributors" here? (in most cases they are null as we don't officially support live events yet)

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingParticipants"
}-->
```json
{
  "attendees": [{"@odata.type": "#microsoft.graph.meetingParticipantInfo"}],
  "organizer": {"@odata.type": "#microsoft.graph.meetingParticipantInfo"},
  "producers": [{"@odata.type": "#microsoft.graph.meetingParticipantInfo"}],
  "contributors": [{"@odata.type": "#microsoft.graph.meetingParticipantInfo"}],
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


