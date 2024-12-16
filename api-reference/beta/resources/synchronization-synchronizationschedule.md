---
title: "synchronizationSchedule resource type"
description: "Defines the schedule used to run a synchronizationJob."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 07/23/2024
---

# synchronizationSchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the schedule used to run a [synchronizationJob](synchronization-synchronizationjob.md).

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|expiration|DateTimeOffset|Date and time when this job will expire. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|interval|Duration|The interval between synchronization iterations. The value is represented in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)  format for durations. For example, `P1M` represents a period of one month and `PT1M` represents a period of one minute.|
|state|synchronizationScheduleState|The possible values are: `Active`, `Disabled`, `Paused`.|


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationSchedule"
}-->

```json
{
  "expiration": "String (timestamp)",
  "interval": "String (duration)",
  "state": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationSchedule resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


