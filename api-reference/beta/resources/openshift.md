---
title: "openShift resource type"
description: "Represents an unassigned open shift in a schedule."
author: "shanemalone"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# openShift resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an unassigned open shift in a [schedule](../resources/schedule.md).

Inherits from [changeTrackedEntity](../resources/changetrackedentity.md).

## Methods

| Method                                                                  | Return Type                           | Description                                                                                       |
| :---------------------------------------------------------------------- | :------------------------------------ | :------------------------------------------------------------------------------------------------ |
| [List openShifts](../api/openshift-list.md)                             | [openShift](openshift.md) collection  | Get the list of **openShift** in a schedule.                                                      |
| [Create openShift](../api/openshift-post.md)                            | [openShift](openshift.md)             | Create a new **openShift**.                                                                       |
| [Get openShift](../api/openshift-get.md)                                | [openShift](openshift.md)             | Get an **openShift** by ID.                                                                       |
| [Update openShift](../api/openshift-update.md)                          | [openShift](openshift.md)             | Update an **openShift**.                                                                          |
| [Delete openShift](../api/openshift-delete.md)                          | None                                  | Delete an **openShift** from the schedule.                                                        |
| [Get open shifts across all joined teams](../api/team-getopenshifts.md) | [openShift](openshift.md) collection  | Get all **openShift** objects across all teams a user is a direct member of. |
| [Stage for deletion](../api/changetrackedentity-stagefordeletion.md)    | None                                  | Stage the deletion of an [openShift](../resources/openshift.md) instance in a [schedule](../resources/schedule.md) in draft mode.    |

## Properties

| Property              | Type                              | Description                                                   |
|:----------------------|:----------------------------------|:--------------------------------------------------------------|
| createdBy             | [identitySet](identityset.md)     | Identity of the user who created the **openShift** object. Inherited from [changeTrackedEntity](changetrackedentity.md).      |
| createdDateTime       | DateTimeOffset                    | Date and time when the **openShift** was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](changetrackedentity.md).                               |
| draftOpenShift        | [openShiftItem](openshiftitem.md) | Draft changes in the **openShift** are only visible to managers until they're [shared](../api/schedule-share.md).              |
| id                    | String                            | Unique identifier for the **openShift** object. Read-only. Inherited from [changeTrackedEntity](changetrackedentity.md).        |
| isStagedForDeletion   | Boolean                           | The **openShift** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md).     |
| lastModifiedBy        | [identitySet](identityset.md)     | Identity of the user who last modified the **openShift** object. Inherited from [changeTrackedEntity](changetrackedentity.md).|
| lastModifiedDateTime  | DateTimeOffset                    | Date and time when the **openShift** was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](changetrackedentity.md).|
| schedulingGroupId     | String                            | The ID of the [schedulingGroup](schedulinggroup.md) that contains the **openShift**.  |
| schedulingGroupInfo  | [schedulingGroupInfo](schedulinggroupinfo.md)  | Information about the scheduling group to which the **shift** belongs. |
| sharedOpenShift       | [openShiftItem](openshiftitem.md) | The shared version of this **openShift** that is viewable by both employees and managers.                         |
| teamInfo             | [shiftsTeamInfo](shiftsteaminfo.md)                  | Information of the team that the **openShift** is in. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.openShift",
  "baseType": "microsoft.graph.changeTrackedEntity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.openShift",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "draftOpenShift": {"@odata.type": "microsoft.graph.openShiftItem"},
  "id": "String (identifier)",
  "isStagedForDeletion": "Boolean",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "schedulingGroupId": "String",
  "schedulingGroupInfo": "microsoft.graph.schedulingGroupInfo",
  "sharedOpenShift": {"@odata.type": "microsoft.graph.openShiftItem"},
  "teamInfo": "microsoft.graph.shiftsTeamInfo"
}
```
