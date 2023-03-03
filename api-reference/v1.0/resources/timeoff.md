---
title: "timeOff resource type"
description: "Represents a unit of non-work in a schedule."
author: "akumar39"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType_
---

# timeOff resource type

Namespace: microsoft.graph

Represents a unit of non-work in a [schedule](../resources/schedule.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/schedule-list-timesoff.md) | [timeOff](timeoff.md) collection | Get the list of **timeOff** objects in this schedule.|
|[Create](../api/schedule-post-timesoff.md) | [timeOff](timeoff.md) | Create a new **timeOff** object.|
|[Get](../api/timeoff-get.md) | [timeOff](timeoff.md) | Get a **timeOff** object by ID.|
|[Replace](../api/timeoff-put.md) | [timeOff](timeoff.md) | Replace a **timeOff** object.|
|[Delete](../api/timeoff-delete.md) | None | Delete a **timeOff** object from the schedule.|

## Properties
|Name          |Type           |Description                                                                                                                                      |
|--------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| createdDateTime		| DateTimeOffset        |The time stamp at which this **timeOff** was first created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| draftTimeOff		| [timeOffItem](timeoffitem.md)        |The draft version of this **timeOff** that is viewable by managers. Required.|
| id			| String      |ID of the **timeOff**.|
| lastModifiedBy		| [identitySet](identityset.md)        |The identity that last updated this **timeOff**. |
| lastModifiedDateTime		| DateTimeOffset        |The time stamp at which this **timeOff** was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| sharedTimeOff 	| [timeOffItem](timeoffitem.md)  |The shared version of this **timeOff** that is viewable by both employees and managers. Required.|
| userId 			| String      |ID of the user assigned to the **timeOff**. Required.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeOff",
   "baseType":"microsoft.graph.changeTrackedEntity"
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "draftTimeOff": {"@odata.type": "microsoft.graph.timeOffItem"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "sharedTimeOff": {"@odata.type": "microsoft.graph.timeOffItem"},
  "userId": "String"
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeOff resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

