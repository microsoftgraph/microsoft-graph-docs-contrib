---
title: "callRecording resource type"
description: "Represents a recording associated with an online meeting."
author: "v-sdhakshina"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callRecording resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a recording associated with an [online meeting](onlinemeeting.md).

## Methods

|  Method       |  Return Type  | Description|
|:---------------|:--------|:----------|
|[List callRecordings](../api/onlinemeeting-list-recordings.md) | [callRecording](callrecording.md) collection | Get the list of recordings associated to an online meeting.| 
|[Get callRecording](../api/callrecording-get.md) | [callRecording](callrecording.md) | Read properties of a recording.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| content| Stream| A field that represents the content of the recording. Read-only.|
| createdDateTime| DateTimeOffset|  Date and time at which the recording was created. The `dateTimeOffset` type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
| id| String| The unique identifier for the recording. Read-only.|

## JSON representation

The following is a JSON representation of the resource:

```json
{
  "content": "stream",
  "createdDateTime": "dateTimeOffset",  
  "id": "string (identifier)"
}
```
