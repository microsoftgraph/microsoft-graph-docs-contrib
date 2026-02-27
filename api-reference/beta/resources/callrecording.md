---
title: "callRecording resource type"
description: "Represents a recording associated with an online meeting or an ad hoc call."
author: "v-sdhakshina"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 10/16/2025
---

# callRecording resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a recording associated with an [online meeting](onlinemeeting.md) or an [ad hoc call](/graph/api/resources/adhoccall?view=graph-rest-beta&preserve-view=true). 

## Methods

|  Method       |  Return Type  | Description|
|:---------------|:--------|:----------|
|[List](../api/onlinemeeting-list-recordings.md) | [callRecording](callrecording.md) collection | Get the list of [callRecording](../resources/callrecording.md) objects associated with a scheduled [onlineMeeting](../resources/onlinemeeting.md).|
|[Get](../api/callrecording-get.md) | [callRecording](../resources/callrecording.md) | Get a [callRecording](../resources/callrecording.md) object associated with a scheduled [meeting](../resources/onlinemeeting.md) and an [ad hoc call](adhoccall.md) after the instance has ended.|
|[Get delta by organizer](../api/callrecording-delta.md) | [callRecording](callrecording.md) collection | Get a set of [callRecording](../resources/callrecording.md) resources that were added for [onlineMeeting](../resources/onlinemeeting.md) instances organized by the specified user.|
|[List recordings by organizer](../api/onlinemeeting-getallrecordings.md) | [callRecording](callrecording.md) collection | Get the [callRecording](../resources/callrecording.md) objects for all the [onlineMeeting](../resources/onlinemeeting.md) instances initiated by the specified user.|
|[Get recordings initiated by a specified user](../api/adhoccall-getallrecordings.md) | [callRecording](callrecording.md) collection | Get the [callRecording](callrecording.md) objects for all the [ad hoc call](adhoccall.md) instances initiated by a specific user.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| callId | String | The unique identifier for the [call](call.md) that is related to this recording. Read-only.|
| content | Stream | The content of the recording. Read-only.|
| contentCorrelationId | String | The unique identifier that links the transcript with its corresponding recording. Read-only.|
| createdDateTime | DateTimeOffset |  Date and time at which the recording was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
| endDateTime | DateTimeOffset |  Date and time at which the recording ends. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
| id | String | The unique identifier for the recording. Read-only. Inherited from [entity](../resources/entity.md).|
| meetingId | String | The unique identifier of the **onlineMeeting** related to this recording. Read-only.|
| meetingOrganizer|  [identitySet](identityset.md)| The identity information of the organizer of the **onlineMeeting** related to this recording. Read-only.|
| recordingContentUrl| String| The URL that can be used to access the content of the recording. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.callRecording"
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
  "recordingContentUrl": "String"
}
```
