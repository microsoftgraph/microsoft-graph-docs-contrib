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

Represents a recording associated with an [online meeting](onlinemeeting.md).

## Methods

|  Method       |  Return Type  | Description|
|:---------------|:--------|:----------|
|[List callRecordings](../api/onlinemeeting-list-recordings.md) | [callRecording](callrecording.md) collection | Get the list of [callRecording](../resources/callrecording.md) objects associated with an [onlineMeeting](../resources/onlinemeeting.md).|
|[Get callRecording](../api/callrecording-get.md) | [callRecording](callrecording.md) | Get a [callRecording](../resources/callrecording.md) object associated with an [onlineMeeting](../resources/onlinemeeting.md).|
|[delta](../api/callrecording-delta.md) | [callRecording](callrecording.md) collection | Get a set of [callRecording](../resources/callrecording.md) resources that have been added for [onlineMeeting](../resources/onlinemeeting.md) instances organized by the specified user.|
|[getAllRecordings](../api/onlinemeeting-getallrecordings.md) | [callRecording](callrecording.md) collection | Get the [callRecording](../resources/callrecording.md) objects for all the [onlineMeeting](../resources/onlinemeeting.md) instances organized by the specified user.|
 
## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| content | Stream | The content of the recording. Read-only.|
| createdDateTime | DateTimeOffset |  Date and time at which the recording was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
| id | String | The unique identifier for the recording. Read-only. Inherited from [entity](../resources/entity.md).|
| meetingId | String | The unique identifier of the **onlineMeeting** related to this recording. Read-only.|
| meetingOrganizerId| String| The unique identifier of the organizer of the **onlineMeeting** related to this recording. Read-only.|
| meetingOrganizer| IdentitySet| The identity information of the organizer of the **onlineMeeting** related to this recording. Read-only.|
| recordingContentUrl| String| The URL which can be used to access the content of the recording. Read-only.|

## JSON representation

The following is a JSON representation of the resource:

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.callRecording"
}-->

```json
{
  "content": "Stream",
  "createdDateTime": "String (timestamp)",  
  "id": "String (identifier)",
  "meetingId": "String",
  "meetingOrganizerId": "String",
  "meetingOrganizer": "IdentitySet",
  "recordingContentUrl": "String"
}
```