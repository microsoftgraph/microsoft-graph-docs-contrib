---
title: "timeOff resource type"
description: "Represents a unit of nonwork in a schedule."
author: "shanemalone"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# timeOff resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a unit of nonwork in a [schedule](../resources/schedule.md).

Inherits from [changeTrackedEntity](../resources/changetrackedentity.md).

## Methods

| Method                                     | Return type                      | Description                                           |
| :----------------------------------------- | :------------------------------- | :---------------------------------------------------- |
| [List timeOff](../api/schedule-list-timesoff.md)   | [timeOff](timeoff.md) collection | Get the list of **timeOff** objects in a schedule. |
| [Create timeOff](../api/schedule-post-timesoff.md) | [timeOff](timeoff.md)            | Create a new **timeOff** object.                      |
| [Get timeOff](../api/timeoff-get.md)               | [timeOff](timeoff.md)            | Get a **timeOff** object by ID.                       |
| [Replace timeOff](../api/timeoff-put.md)           | [timeOff](timeoff.md)            | Replace a **timeOff** object.                         |
| [Delete timeOff](../api/timeoff-delete.md)         | None                             | Delete a **timeOff** object from the schedule.        |
| [Stage for deletion](../api/changetrackedentity-stagefordeletion.md)| None    |Stage the deletion of a [timeOff](timeoff.md) in a [schedule](schedule.md) in draft mode.|

## Properties

| Property             | Type                          | Description                 |
|:---------------------|:------------------------------|:----------------------------|
| createdBy             | [identitySet](identityset.md)     | Identity of the user who created the **timeOff** object. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md). |
| createdDateTime      | DateTimeOffset                | The date and time when this **timeOff** was first created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md). |
| draftTimeOff		| [timeOffItem](timeoffitem.md)        |The draft version of this **timeOff** item that is viewable by managers. It must be shared before it is visible to team members. Required.|
| id                   | String                        | The unique identifier for the **timeOff**. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md). |
| isStagedForDeletion   | Boolean                      | The **timeOff** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md).     |
| lastModifiedBy       | [identitySet](identityset.md) | The identity of the user who last updated this **timeOff**. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md). |
| lastModifiedDateTime | DateTimeOffset                | The date and time when this **timeOff** was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md). |
| sharedTimeOff        | [timeOffItem](timeoffitem.md) | The shared version of this **timeOff** that is viewable by both employees and managers. Updates to the **sharedTimeOff** property send notifications to users in the Teams client. Required. |
| teamInfo             | [shiftsTeamInfo](shiftsteaminfo.md)                  | Information of the team that the **timeOff** is in. |
| userId               | String                      | ID of the user assigned to the **timeOff**. Required. |
| userInfo             | [shiftsUserInfo](shiftsuserinfo.md)                  | Information of the user assigned to the **timeOff**. |

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
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "draftTimeOff": {"@odata.type": "microsoft.graph.timeOffItem"},
  "id": "String (identifier)",
  "isStagedForDeletion": "Boolean",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "sharedTimeOff": {"@odata.type": "microsoft.graph.timeOffItem"},
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
  "description": "timeOff resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
