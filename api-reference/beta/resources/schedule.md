---
title: "schedule resource type"
description: "A schedule is a collection of schedulingGroups, shifts, timeOffReasons and timesOff within a team."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# schedule resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of [schedulingGroup](schedulinggroup.md) objects, [shift](shift.md) objects, [timeOffReason](timeoffreason.md) objects, and [timeOff](timeoff.md) objects within a [team](../resources/team.md). 

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Put schedule](../api/schedule-put.md) | [schedule](schedule.md) | Creates or updates the schedule.|
|[Get schedule](../api/schedule-get.md) | [schedule](schedule.md) | Gets the schedule.|
|[Share schedule](../api/schedule-share-timerange.md) | None | Shares a time-range of the schedule with the schedule members.|

## Properties
|Name                   |Type           |Req.|Nav.|computed|Description                                                                                                                                      |
|-----------------------|---------------|:--:|:--:|--------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| id			        |`string`  |✓   |  |  |Id of the `schedule`.|
| enabled 			    |`bool`    |✓   |   |  | Indicates if the scheudle is enabled for the team.|
| timeZone 		        |`string`  | ✓  |  |  | Indicates the time zone of the schedule team. |
| provisionStatus       |`enum`    |    |   |✓  | The status of the schedule provision. |
| provisionStatusCode   |`string`  |    |   |✓  | Additional information in case schedule provision failed. |


## Relationships
|Name                   |Type           |Req.|Nav.|computed|Description                                                                                                                                      |
|-----------------------|---------------|:--:|:--:|--------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| shifts   |`collection(shift)`  |    |✓ contained non-expandable  |  | The shifts in the schedule. |
| timesOff   |`collection(timeOff)`  |    |✓ contained non-expandable   |  | The times off in the schedule. |
| timeOffReasons   |`collection(timeOffReason)`  |    |✓ contained non-expandable   |  | The set of reasons for a time off in the schedule. |
| schedulingGroups   |`collection(schedulingGroup)`  |    |✓ contained non-expandable   |  | The logical grouping of users in the schedule to groups (e.g. by roles). |


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.schedule"
}-->

```json
{
  "id": "string",
  "enabled": true,
  "timeZone": "string",
  "provisionStatus": "notStarted",
  "provisionStatusCode": "string"
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
  "suppressions": [
    "Error: /api-reference/beta/resources/schedule.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
