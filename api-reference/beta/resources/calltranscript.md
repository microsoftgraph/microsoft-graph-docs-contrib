---
title: "callTranscript resource type"
description: "Represents a transcript associated with an online meeting."
author: "mankadnandan"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callTranscript resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a transcript associated with an [online meeting](onlinemeeting.md).

## Methods
|  Method       |  Return Type  | Description| 
|:---------------|:--------|:----------|
|[List callTranscripts](../api/onlinemeeting-list-transcripts.md) | [callTranscript](calltranscript.md) collection | Get the list of transcripts associated to an online meeting.| 
|[Get callTranscript](../api/calltranscript-get.md) | [callTranscript](calltranscript.md) | Read properties of a transcript.| 

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| content| Stream| A field that represents the content of the transcript. Read-only.|
| createdDateTime| DateTimeOffset|  Date and time at which the transcript was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
| id| String| The unique identifier for the transcript. Read-only.|
| metadataContent| Stream| A field that represents the time-aligned metadata of the utterances in the transcript. Read-only.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.callTranscript"
}-->

```json
{
  "content": "stream",
  "createdDateTime": "dateTimeOffset",  
  "id": "string (identifier)",
  "metadataContent": "stream"
}
```
