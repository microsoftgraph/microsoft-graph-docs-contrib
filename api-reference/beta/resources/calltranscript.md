---
title: "callTranscript resource type"
description: "Represents a transcript associated with an online meeting."
author: "mankadnandan"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# callTranscript resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a transcript associated with an [online meeting](onlinemeeting.md).

## Methods
|  Method       |  Return Type  | Description| 
|:---------------|:--------|:----------|
|[List callTranscripts](../api/onlinemeeting-list-transcripts.md) | [callTranscript](calltranscript.md) collection | Get the list of [callTranscript](../resources/calltranscript.md) objects associated with an [onlineMeeting](../resources/onlinemeeting.md).| 
|[Get callTranscript](../api/calltranscript-get.md) | [callTranscript](calltranscript.md) | Get a [callTranscript](../resources/calltranscript.md) object associated with an [onlineMeeting](../resources/onlinemeeting.md).|
|[delta](../api/calltranscript-delta.md) | [callTranscript](calltranscript.md) collection | Get a set of [callTranscript](../resources/calltranscript.md) resources that have been added for [onlineMeeting](../resources/onlinemeeting.md) instances organized by the specified user.|
|[getAllTranscripts](../api/onlinemeeting-getAllTranscripts.md) | [callTranscript](calltranscript.md) collection | Get the [callTranscript](../resources/calltranscript.md) objects for all the [onlineMeeting](../resources/onlinemeeting.md) instances organized by the specified user.|
 

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| callId | String | The unique identifier for the **call** related to this recording. Read-only.|
| content| Stream| The content of the transcript. Read-only.|
| contentCorrelationId | String | The unique identifier for correlating a set of recording and transcript.|
| createdDateTime| DateTimeOffset|  Date and time at which the transcript was created. he timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
| endDateTime | DatetimeOffset |  Date and time at which the recording ends. he timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.| 
| id| String| The unique identifier for the transcript. Read-only.|
| meetingId | String | The unique identifier of the online meeting related to this transcript. Read-only.|
| meetingOrganizer| [identitySet](identityset.md)| The identity information of the organizer of the **onlineMeeting** related to this transcript. Read-only.|
| meetingOrganizerId| String| The unique identifier of the organizer of the **onlineMeeting** related to this transcript. Read-only.|
| metadataContent| Stream| The time-aligned metadata of the utterances in the transcript. Read-only.|
| transcriptContentUrl| String| The URL which can be used to access the content of the transcript. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

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
  "meetingOrganizerId": "String",
  "metadataContent": "Stream",
  "transcriptContentUrl": "String"
}
```
