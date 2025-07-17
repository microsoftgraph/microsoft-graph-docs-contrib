---
title: "session resource type"
description: "Represents a user-user communication or a user-meeting communication in the case of a conference call."
ms.localizationpriority: medium
author: "mcm223"
ms.subservice: "cloud-communications"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# session resource type

Namespace: microsoft.graph.callRecords

Represents a user-user communication or a user-meeting communication in the case of a conference call.

One session can be returned multiple times if the communication involves more than one service identity. For more information, see [call record API FAQ](/graph/callrecords-api-faq).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List sessions](../api/callrecords-callrecord-list-sessions.md) | [microsoft.graph.callRecords.session](callrecords-session.md) collection | Retrieve the list of sessions associated with a [callRecord](callrecords-callrecord.md) object.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|callee|[microsoft.graph.callRecords.endpoint](callrecords-endpoint.md)|Endpoint that answered the session.|
|caller|[microsoft.graph.callRecords.endpoint](callrecords-endpoint.md)|Endpoint that initiated the session.|
|endDateTime|DateTimeOffset|UTC time when the last user left the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|failureInfo|[microsoft.graph.callRecords.failureInfo](callrecords-failureinfo.md)|Failure information associated with the session if the session failed.|
|id|string|Unique identifier for the session. Read-only.|
|isTest|Boolean|Specifies whether the session is a test.|
|modalities|microsoft.graph.callRecords.modality collection|List of modalities present in the session. Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`, `screenSharing`, `unknownFutureValue`.|
|startDateTime|DateTimeOffset|UTC time when the first user joined the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|segments|[microsoft.graph.callRecords.segment](callrecords-segment.md) collection|The list of segments involved in the session. Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.session",
  "keyProperty": "id"
}-->

```json
{
  "callee": {"@odata.type": "microsoft.graph.callRecords.endpoint"},  
  "caller": {"@odata.type": "microsoft.graph.callRecords.endpoint"},
  "endDateTime": "String (timestamp)",
  "failureInfo": {"@odata.type": "microsoft.graph.callRecords.failureInfo"},
  "id": "String (identifier)",
  "isTest": "Boolean",
  "modalities": ["string"],
  "startDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "session resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
