---
title: "callTranscript resource type"
description: "Represents a transcript associated to a Microsoft Teams Online Meeting."
author: "mankadnandan"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callTranscript resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A callTranscript represents a transcript associated to an Online Meeting.

## Methods
|  Method       |  Return Type  | Description| 
|:---------------|:--------|:----------|
|[List callTranscripts](../api/callTranscript-list.md) | [callTranscript](callTranscript.md) collection | Get the list of transcripts associated to an Online Meeting.| 
|[Get callTranscript](../api/callTranscript-get.md) | [callTranscript](callTranscript.md) | Read properties of a transcript.| 
|[Get callTranscript content](../api/callTranscript-get-content.md) | [callTranscript](callTranscript.md) content bytes | Get the transcript's content bytes.| 

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| id| String| The transcript's unique identifier. Read-only.|
| createdDateTime| dateTimeOffset|  Date and time at which the transcript was created. Read-only.|

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
}
```