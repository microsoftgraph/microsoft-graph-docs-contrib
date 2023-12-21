---
title: "timeOff resource type"
description: "Represents a unit of non-work in a schedule."
author: "aaku"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# timeOff resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a unit of non-work in a [schedule](../resources/schedule.md).

Inherits from [changeTrackedEntity](../resources/changetrackedentity.md).

## Methods

| Method                                     | Return type                      | Description                                           |
| :----------------------------------------- | :------------------------------- | :---------------------------------------------------- |
| [List timeOff](../api/schedule-list-timesoff.md)   | [timeOff](timeoff.md) collection | Get the list of **timeOff** objects in a schedule. |
| [Create timeOff](../api/schedule-post-timesoff.md) | [timeOff](timeoff.md)            | Create a new **timeOff** object.                      |
| [Get timeOff](../api/timeoff-get.md)               | [timeOff](timeoff.md)            | Get a **timeOff** object by ID.                       |
| [Replace timeOff](../api/timeoff-put.md)           | [timeOff](timeoff.md)            | Replace a **timeOff** object.                         |
| [Delete timeOff](../api/timeoff-delete.md)         | None                             | Delete a **timeOff** object from the schedule.        |
| [Stage for deletion](../api/changetrackedentity-stagefordeletion.md)| None    |Stage the deletion of a **timeOff** instance in a [schedule](schedule.md) in draft mode.|

## Properties

| Property             | Type                          | Description                 |
|:---------------------|:------------------------------|:----------------------------|
| createdDateTime      | DateTimeOffset                | The time stamp at which this **timeOff** was first created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| draftTimeOff         | [timeOffItem](timeoffitem.md) | Draft changes in the **timeOff** are only visible to managers until they are [shared](../api/schedule-share.md).|
| id                   | String                        | ID of the **timeOff**. |
| isStagedForDeletion   | Boolean                      | The **timeOff** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md).     |
| lastModifiedBy       | [identitySet](identityset.md) | The identity that last updated this **timeOff**. |
| lastModifiedDateTime | DateTimeOffset                | The time stamp at which this **timeOff** was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.  |
| sharedTimeOff        | [timeOffItem](timeoffitem.md) | The shared version of this **timeOff** that is viewable by both employees and managers. |
| userId               | String                        | ID of the user assigned to the **timeOff**. Required. |

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
