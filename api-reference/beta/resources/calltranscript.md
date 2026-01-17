---
title: "callTranscript resource type"
description: "Represents a transcript associated with an online meeting and ad hoc calls."
author: "mankadnandan"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 10/16/2025
---

# callTranscript resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a transcript associated with an [online meeting](onlinemeeting.md) and [ad hoc calls](/graph/api/resources/adhoccall?view=graph-rest-beta&preserve-view=true).

## Methods

|  Method       |  Return Type  | Description|
|:---------------|:--------|:----------|
|[List transcripts](../api/onlinemeeting-list-transcripts.md) | [callTranscript](calltranscript.md) collection | Get the list of [callTranscript](../resources/calltranscript.md) objects associated with an [onlineMeeting](../resources/onlinemeeting.md).|
|[Get transcript](../api/calltranscript-get.md) | [callTranscript](calltranscript.md) | Get a [callTranscript](../resources/calltranscript.md) object associated with an [onlineMeeting](../resources/onlinemeeting.md) or an [ad hoc call](/graph/api/resources/adhoccall?view=graph-rest-beta&preserve-view=true).|
|[Get delta by organizer](../api/calltranscript-delta.md) | [callTranscript](calltranscript.md) collection | Get a set of [callTranscript](../resources/calltranscript.md) resources that were added for [onlineMeeting](../resources/onlinemeeting.md) instances organized by the specified user.|
|[List transcripts by organizer](../api/onlinemeeting-getalltranscripts.md) | [callTranscript](calltranscript.md) collection | Get the [callTranscript](../resources/calltranscript.md) objects for all the [onlineMeeting](../resources/onlinemeeting.md) instances initiated by the specified user.|
|[Get transcripts initiated by a specified user](../api/adhoccall-getalltranscripts.md) | [callTranscript](calltranscript.md) collection | Get the [callTranscript](calltranscript.md) objects for all the [ad hoc call](adhoccall.md) instances initiated by a specific user.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| callId | String | The unique identifier for the [call](call.md) that is related to this transcript. Read-only.|
| content| Stream| The content of the transcript. Read-only.|
| contentCorrelationId | String | The unique identifier that links the transcript with its corresponding recording. Read-only.|
| createdDateTime| DateTimeOffset|  Date and time at which the transcript was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
| endDateTime | DateTimeOffset |  Date and time at which the transcription ends. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
| id| String| The unique identifier for the transcript. Read-only.|
| meetingId | String | The unique identifier of the online meeting related to this transcript. Read-only.|
| meetingOrganizer| [identitySet](identityset.md)| The identity information of the organizer of the **onlineMeeting** related to this transcript. Read-only.|
| metadataContent| Stream| The time-aligned metadata of the utterances in the transcript. Read-only.|
| transcriptContentUrl| String| The URL that can be used to access the content of the transcript. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.callTranscript"
}-->

```json
{
  "callId": "String",
  "content": "Stream",
  "contentCorrelationId": "String",
  "createdDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "meetingId": "String",
  "meetingOrganizer": {"@odata.type": "microsoft.graph.identitySet"},
  "metadataContent": "Stream",
  "transcriptContentUrl": "String"
}
```
