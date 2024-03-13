---
title: "schedule resource type"
description: "Represents a collection of scheduling groups, shifts, times off, and time off reasons for a team."
author: "shanemalone"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# schedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of [schedulingGroup](schedulinggroup.md) objects, [shift](shift.md) objects, [timeOffReason](timeoffreason.md) objects, and [timeOff](timeoff.md) objects for a [team](../resources/team.md).

## Methods

| Method                                                    | Return Type             | Description                                        |
| :-------------------------------------------------------- | :---------------------- | :------------------------------------------------- |
| [Create or replace schedule](../api/team-put-schedule.md) | [schedule](schedule.md) | Create or replace a schedule.                      |
| [Get schedule](../api/schedule-get.md)                    | [schedule](schedule.md) | Get a schedule.                                    |
| [Share](../api/schedule-share.md)                         | None                    | Share a schedule time range with schedule members. |

## Properties

| Property                  | Type               | Description                                                                                                      |
| ------------------------- | ------------------ | ---------------------------------------------------------------------------------------------------------------- |
| activitiesIncludedWhenCopyingShiftsEnabled | Boolean | Indicates whether copied shifts should include the activities.                                             |
| enabled                   | Boolean            | Indicates whether the schedule is enabled for the team. Required.                                                |
| id                        | String             | ID of the schedule.                                                                                              |
| isCrossLocationShiftRequestApprovalRequired | Boolean | Indicates whether approval is required by a manager of this schedule for cross location shift requests.   |
| isCrossLocationShiftsEnabled | Boolean         | Indicates whether the cross-location marketplace feature is enabled for this schedule.                           |
| offerShiftRequestsEnabled | Boolean            | Indicates whether offer shift requests are enabled for the schedule.                                             |
| openShiftsEnabled         | Boolean            | Indicates whether open shifts are enabled for the schedule.                                                      |
| provisionStatus           | operationStatus    | The status of the schedule provisioning. The possible values are `notStarted`, `running`, `completed`, `failed`. |
| provisionStatusCode       | String             | Additional information about why schedule provisioning failed.                                                   |
| startDayOfWeek            | dayOfWeek          | Indicates the start day of the week. The possible values are: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`. |
| swapShiftsRequestsEnabled | Boolean            | Indicates whether swap shifts requests are enabled for the schedule.                                             |
| timeClockEnabled          | Boolean            | Indicates whether time clock is enabled for the schedule.                                                        |
| timeClockSettings         | [timeClockSettings](timeclocksettings.md)  | The time clock location settings for this schedule.                                      |
| timeOffRequestsEnabled    | Boolean            | Indicates whether time off requests are enabled for the schedule.                                                |
| timeZone                  | String             | Indicates the time zone of the schedule team using tz database format. Required.                                 |
| workforceIntegrationIds   | String collection | The IDs for the workforce integrations associated with this schedule.                                             |

## Relationships

|Name                   |Type           |Description                                                                                                                                      |
|-----------------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
|dayNotes|[dayNote](daynote.md) collection|The day notes in the schedule.|
| offerShiftRequests   |[offerShiftRequest](offershiftrequest.md) collection  | The offer requests for shifts in the schedule. |
| openShiftChangeRequests   |[openShiftChangeRequest](openshiftchangerequest.md) collection  | The open shift requests in the schedule. |
| openShifts   |[openShift](openshift.md) collection | The set of open shifts in a scheduling group in the schedule. |
| schedulingGroups   |[schedulingGroup](schedulinggroup.md) collection  | The logical grouping of users in the schedule (usually by role). |
| shifts   | [shift](shift.md) collection  | The shifts in the schedule. |
| shiftsRoleDefinitions|[shiftsRoleDefinition](shiftsroledefinition.md) collection|The definitions of the roles in the schedule. |
| swapShiftsChangeRequests   |[swapShiftsChangeRequest](swapshiftschangerequest.md) collection  | The swap requests for shifts in the schedule. |
| timeCards   |[timeCard](timecard.md) collection  | The time cards in the schedule.       |
| timesOff   |[timeOff](timeoff.md) collection  | The instances of times off in the schedule. |
| timeOffReasons   |[timeOffReason](timeoffreason.md) collection  | The set of reasons for a time off in the schedule. |
| timeOffRequests   |[timeOffRequest](timeoffrequest.md) collection  | The time off requests in the schedule. |
| workforceIntegrations   |[workforceIntegration](workforceintegration.md) collection  | An instance of a workforce integration per team with outbound data flow on synchronous change notifications (for supported entities). |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.schedule"
}-->

```json
{
  "id": "833fc4df-c88b-4398-992f-d8afcfe41df2",
  "enabled": true,
  "timeZone": "America/Chicago",
  "provisionStatus": "Completed",
  "provisionStatusCode": null,
  "isCrossLocationShiftRequestApprovalRequired": "Boolean",
  "isCrossLocationShiftsEnabled": "Boolean"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!--
{
  "type": "#page.annotation",
  "description": "schedule resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
