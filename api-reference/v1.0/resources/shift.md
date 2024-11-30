---
title: "shift resource type"
description: "Represents a unit of scheduled work in the schedule."
ms.date: 11/21/2024
author: "victorcheng"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# shift resource type

Namespace: microsoft.graph

Represents a unit of scheduled work in a [schedule](schedule.md).

The duration of a shift can't be less than 1 minute or longer than 24 hours.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/schedule-list-shifts.md) | [shift](shift.md) collection | Get the list of **shifts** in this schedule.|
|[Create](../api/schedule-post-shifts.md) | [shift](shift.md) | Create a new **shift**.|
|[Get](../api/shift-get.md) | [shift](shift.md) | Get a **shift** by ID.|
|[Replace](../api/shift-put.md) | [shift](shift.md) | Replace a **shift**.|
|[Delete](../api/shift-delete.md) | None | Delete a **shift** from the schedule.|
|[Stage for deletion](../api/changetrackedentity-stagefordeletion.md)| None | Stage the deletion of a [shift](../resources/shift.md) instance in a [schedule](../resources/schedule.md) in draft mode. |

## Properties
|Name          |Type           |Description                                                                                                                                      |
|--------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| createdDateTime		|DateTimeOffset        |The timestamp on which this **shift** was first created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
| draftShift           | [shiftItem](shiftitem.md)     | Draft changes in the **shift**. Draft changes are only visible to managers. The changes are visible to employees when they are [shared](../api/schedule-share.md), which copies the changes from the **draftShift** to the **sharedShift** property.|
| id			|String      |ID of the **shift**. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
| isStagedForDeletion   | Boolean                           | The **shift** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md). |
| lastModifiedBy		| [identitySet](identityset.md)        |The identity that last updated this **shift**. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
| lastModifiedDateTime		|DateTimeOffset        |The timestamp on which this **shift** was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
| schedulingGroupId 		|String      |ID of the scheduling group the **shift** is part of. Required. |
| sharedShift          | [shiftItem](shiftitem.md)     | The shared version of this **shift** that is viewable by both employees and managers. Updates to the **sharedShift** property send notifications to users in the Teams client.|
| userId 			|String      |ID of the user assigned to the **shift**. Required. |

## JSON representation

The following JSON representation shows the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.shift"
}-->

```json
{
  "@odata.type": "#microsoft.graph.shift",
  "createdDateTime": "String (timestamp)",
  "draftShift": {"@odata.type": "microsoft.graph.shiftItem"},
  "id": "String (identifier)",
  "isStagedForDeletion": "Boolean",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "schedulingGroupId": "String",
  "sharedShift": {"@odata.type": "microsoft.graph.shiftItem"},
  "userId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "shift resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

