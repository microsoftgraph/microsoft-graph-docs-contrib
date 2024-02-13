---
title: "shift resource type"
description: "Represents a unit of scheduled work in a schedule."
author: "shanemalone"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# shift resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a unit of scheduled work in a [schedule](schedule.md).

The duration of a shift can't be less than 1 minute or longer than 24 hours.

Inherits from [changeTrackedEntity](../resources/changetrackedentity.md).

## Methods

| Method                                                              | Return Type                  | Description                                                                                                  |
| :------------------------------------------------------------------ | :--------------------------- | :----------------------------------------------------------------------------------------------------------- |
| [Create shift](../api/schedule-post-shifts.md)                      | [shift](shift.md)            | Create a new **shift**.                                                                                      |
| [List shifts](../api/schedule-list-shifts.md)                       | [shift](shift.md) collection | Get the list of **shifts** in this schedule.                                                                 |
| [Get shift](../api/shift-get.md)                                    | [shift](shift.md)            | Get a **shift** by ID.                                                                                       |
| [Replace shift](../api/shift-put.md)                                | [shift](shift.md)            | Replace a **shift**.                                                                                         |
| [Delete shift](../api/shift-delete.md)                              | None                         | Delete a **shift** from the schedule.                                                                        |
| [Stage for deletion](../api/changetrackedentity-stagefordeletion.md)| None                         | Stage the deletion of a [shift](../resources/shift.md) instance in a [schedule](../resources/schedule.md) in draft mode.        |

## Properties

| Property             | Type                          | Description |
| -------------------- | ----------------------------- | ----------- |
| createdBy             | [identitySet](identityset.md)     | Identity of the user who created the **shift** object. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md). |
| createdDateTime      | DateTimeOffset              | The timestamp on which this **shift** was first created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md). |
| draftShift           | [shiftItem](shiftitem.md)     | Draft changes in the **shift**. Draft changes are only visible to managers. The changes are visible to employees when they're [shared](../api/schedule-share.md), which copies the changes from the **draftShift** to the **sharedShift** property. |
| id                   | String                      | The unique identifier for the **shift**. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md). |
| isStagedForDeletion   | Boolean                           | The **shift** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md). |
| lastModifiedBy       | [identitySet](identityset.md) | The identity of the user who last updated this **shift**. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md). |
| lastModifiedDateTime | DateTimeOffset              | The timestamp on which this **shift** was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md). |
| schedulingGroupId    | String                      | ID of the scheduling group the **shift** is part of. Required. |
| schedulingGroupInfo  | [schedulingGroupInfo](schedulinggroupinfo.md)  | Information of the scheduling group the **shift** is part of. |
| sharedShift          | [shiftItem](shiftitem.md)     | The shared version of this **shift** that is viewable by both employees and managers. Updates to the **sharedShift** property send notifications to users in the Teams client.|
| teamInfo             | [shiftsTeamInfo](shiftsteaminfo.md)                  | Information of the team that the **shift** is in. |
| userId               | String                      | ID of the user assigned to the **shift**. Required. |
| userInfo             | [shiftsUserInfo](shiftsuserinfo.md)                  | Information of the user assigned to the **shift**. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.shift",
   "baseType":"microsoft.graph.changeTrackedEntity"
}-->

```json
{
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "draftShift": { "@odata.type": "microsoft.graph.shiftItem" },
  "id": "String (identifier)",
  "isStagedForDeletion": "Boolean",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "String (timestamp)",
  "schedulingGroupId": "String",
  "schedulingGroupInfo": "microsoft.graph.schedulingGroupInfo",
  "sharedShift": { "@odata.type": "microsoft.graph.shiftItem" },
  "teamInfo": "microsoft.graph.shiftsTeamInfo",
  "userId": "String",
  "userInfo": "microsoft.graph.shiftsUserInfo"
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
