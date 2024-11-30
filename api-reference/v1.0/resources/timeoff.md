---
title: "timeOff resource type"
description: "Represents a unit of nonwork in a schedule."
ms.date: 11/21/2024
author: "victorcheng"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# timeOff resource type

Namespace: microsoft.graph

Represents a unit of nonwork in a [schedule](../resources/schedule.md).

Inherits from [changeTrackedEntity](../resources/changetrackedentity.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/schedule-list-timesoff.md) | [timeOff](timeoff.md) collection | Get the list of **timeOff** objects in this schedule.|
|[Create](../api/schedule-post-timesoff.md) | [timeOff](timeoff.md) | Create a new **timeOff** object.|
|[Get](../api/timeoff-get.md) | [timeOff](timeoff.md) | Get a **timeOff** object by ID.|
|[Replace](../api/timeoff-put.md) | [timeOff](timeoff.md) | Replace a **timeOff** object.|
|[Delete](../api/timeoff-delete.md) | None | Delete a **timeOff** object from the schedule.|
|[Stage for deletion](../api/changetrackedentity-stagefordeletion.md)| None |Stage the deletion of a [timeOff](timeoff.md) in a [schedule](schedule.md) in draft mode.|

## Properties
|Name          |Type           |Description                                                                                                                                      |
|--------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| createdDateTime		| DateTimeOffset        |The timestamp at which this **timeOff** was first created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
| draftTimeOff		| [timeOffItem](timeoffitem.md)        |The draft version of this **timeOff** item that is viewable by managers. It must be shared before it's visible to team members. Required.|
| id			| String      |ID of the **timeOff**. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
| isStagedForDeletion   | Boolean                      | The **timeOff** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md).     |
| lastModifiedBy		| [identitySet](identityset.md)        |The identity that last updated this **timeOff**. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
| lastModifiedDateTime		| DateTimeOffset        |The timestamp at which this **timeOff** was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
| sharedTimeOff 	| [timeOffItem](timeoffitem.md) |The shared version of this **timeOff** that is viewable by both employees and managers. Updates to the **sharedTimeOff** property send notifications to users in the Teams client. Required.|
| userId 			| String      |ID of the user assigned to the **timeOff**. Required.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeOff",
   "baseType":"microsoft.graph.changeTrackedEntity"
}-->

```json
{
  "@odata.type": "#microsoft.graph.timeOff",
  "createdDateTime": "String (timestamp)",
  "draftTimeOff": {"@odata.type": "microsoft.graph.timeOffItem"},
  "id": "String (identifier)",
  "isStagedForDeletion": "Boolean",
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

