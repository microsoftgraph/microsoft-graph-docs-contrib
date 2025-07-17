---
title: "segment resource type"
description: "The segment type"
ms.localizationpriority: medium
author: "mcm223"
ms.subservice: "cloud-communications"
doc_type: "resourcePageType"
ms.date: 04/03/2024
---

# segment resource type

Namespace: microsoft.graph.callRecords

Represents a portion of a User-User communication or a User-Meeting communication
in the case of a Conference call. A typical VOIP call has one segment per session. In certain
scenarios, such as PSTN calls, there are multiple segments per session due to additional
server-to-server communication required to connect the call.

## Methods

No methods exist to directly access segments. Use the [Get callRecord](../api/callrecords-callrecord-get.md)
API with `$expand=sessions($expand=segments)` or the [List session](../api/callrecords-callrecord-list-sessions.md) API with
`$expand=segments` to get the segments for a [callRecord](callrecords-callrecord.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|callee|[microsoft.graph.callRecords.endpoint](callrecords-endpoint.md)|Endpoint that answered this segment.|
|caller|[microsoft.graph.callRecords.endpoint](callrecords-endpoint.md)|Endpoint that initiated this segment.|
|endDateTime|DateTimeOffset|UTC time when the segment ended. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|failureInfo|[microsoft.graph.callRecords.failureInfo](callrecords-failureinfo.md)|Failure information associated with the segment if it failed.|
|id|String|Unique identifier for the segment. Read-only.|
|media|[microsoft.graph.callRecords.media](callrecords-media.md) collection|Media associated with this segment.|
|startDateTime|DateTimeOffset|UTC time when the segment started. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|

## Relationships

None

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.segment",
  "keyProperty": "id"
}-->

```json
{
  "callee": {"@odata.type": "microsoft.graph.callRecords.endpoint"},
  "caller": {"@odata.type": "microsoft.graph.callRecords.endpoint"},
  "endDateTime": "String (timestamp)",
  "failureInfo": {"@odata.type": "microsoft.graph.callRecords.failureInfo"},
  "id": "String (identifier)",
  "media": [{"@odata.type": "microsoft.graph.callRecords.media"}],
  "startDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "segment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
