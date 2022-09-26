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
| id| String| The transcript's unique identifier. Read-only.|
| createdDateTime| dateTimeOffset|  Date and time at which the transcript was created. Read-only.|
| content| Stream| A field representing the content of the transcript. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.callTranscript"
}-->

```json
{
  "id": "string (identifier)",
  "createdDateTime": "dateTimeOffset",
  "content": "stream"
}
```
