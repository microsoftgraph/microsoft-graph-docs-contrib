---
title: "schedule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# schedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List schedule objects](../api/team-list-schedule.md)|[schedule](../resources/schedule.md) collection|Get a list of the [schedule](../resources/schedule.md) objects and their properties.|
|[Create schedule](../api/team-post-schedule.md)|[schedule](../resources/schedule.md)|Create a new [schedule](../resources/schedule.md) object.|
|[Get schedule](../api/schedule-get.md)|[schedule](../resources/schedule.md)|Read the properties and relationships of a [schedule](../resources/schedule.md) object.|
|[Update schedule](../api/schedule-update.md)|[schedule](../resources/schedule.md)|Update the properties of a [schedule](../resources/schedule.md) object.|
|[Delete schedule](../api/team-delete-schedule.md)|None|Delete a [schedule](../resources/schedule.md) object.|
|[share](../api/schedule-share.md)|None|**TODO: Add Description**|
|[List dayNotes](../api/schedule-list-daynotes.md)|[dayNote](../resources/daynote.md) collection|Get the dayNote resources from the dayNotes navigation property.|
|[Create dayNote](../api/schedule-post-daynotes.md)|[dayNote](../resources/daynote.md)|Create a new dayNote object.|
|[List offerShiftRequests](../api/schedule-list-offershiftrequests.md)|[offerShiftRequest](../resources/offershiftrequest.md) collection|Get the offerShiftRequest resources from the offerShiftRequests navigation property.|
|[Create offerShiftRequest](../api/schedule-post-offershiftrequests.md)|[offerShiftRequest](../resources/offershiftrequest.md)|Create a new offerShiftRequest object.|
|[List openShiftChangeRequests](../api/schedule-list-openshiftchangerequests.md)|[openShiftChangeRequest](../resources/openshiftchangerequest.md) collection|Get the openShiftChangeRequest resources from the openShiftChangeRequests navigation property.|
|[Create openShiftChangeRequest](../api/schedule-post-openshiftchangerequests.md)|[openShiftChangeRequest](../resources/openshiftchangerequest.md)|Create a new openShiftChangeRequest object.|
|[List openShifts](../api/schedule-list-openshifts.md)|[openShift](../resources/openshift.md) collection|Get the openShift resources from the openShifts navigation property.|
|[Create openShift](../api/schedule-post-openshifts.md)|[openShift](../resources/openshift.md)|Create a new openShift object.|
|[List schedulingGroups](../api/schedule-list-schedulinggroups.md)|[schedulingGroup](../resources/schedulinggroup.md) collection|Get the schedulingGroup resources from the schedulingGroups navigation property.|
|[Create schedulingGroup](../api/schedule-post-schedulinggroups.md)|[schedulingGroup](../resources/schedulinggroup.md)|Create a new schedulingGroup object.|
|[List shifts](../api/schedule-list-shifts.md)|[shift](../resources/shift.md) collection|Get the shift resources from the shifts navigation property.|
|[Create shift](../api/schedule-post-shifts.md)|[shift](../resources/shift.md)|Create a new shift object.|
|[List shiftsRoleDefinitions](../api/schedule-list-shiftsroledefinitions.md)|[shiftsRoleDefinition](../resources/shiftsroledefinition.md) collection|Get the shiftsRoleDefinition resources from the shiftsRoleDefinitions navigation property.|
|[Create shiftsRoleDefinition](../api/schedule-post-shiftsroledefinitions.md)|[shiftsRoleDefinition](../resources/shiftsroledefinition.md)|Create a new shiftsRoleDefinition object.|
|[List swapShiftsChangeRequests](../api/schedule-list-swapshiftschangerequests.md)|[swapShiftsChangeRequest](../resources/swapshiftschangerequest.md) collection|Get the swapShiftsChangeRequest resources from the swapShiftsChangeRequests navigation property.|
|[Create swapShiftsChangeRequest](../api/schedule-post-swapshiftschangerequests.md)|[swapShiftsChangeRequest](../resources/swapshiftschangerequest.md)|Create a new swapShiftsChangeRequest object.|
|[List timeCards](../api/schedule-list-timecards.md)|[timeCard](../resources/timecard.md) collection|Get the timeCard resources from the timeCards navigation property.|
|[Create timeCard](../api/schedule-post-timecards.md)|[timeCard](../resources/timecard.md)|Create a new timeCard object.|
|[List timeOffReasons](../api/schedule-list-timeoffreasons.md)|[timeOffReason](../resources/timeoffreason.md) collection|Get the timeOffReason resources from the timeOffReasons navigation property.|
|[Create timeOffReason](../api/schedule-post-timeoffreasons.md)|[timeOffReason](../resources/timeoffreason.md)|Create a new timeOffReason object.|
|[List timeOffRequests](../api/schedule-list-timeoffrequests.md)|[timeOffRequest](../resources/timeoffrequest.md) collection|Get the timeOffRequest resources from the timeOffRequests navigation property.|
|[Create timeOffRequest](../api/schedule-post-timeoffrequests.md)|[timeOffRequest](../resources/timeoffrequest.md)|Create a new timeOffRequest object.|
|[List timesOff](../api/schedule-list-timesoff.md)|[timeOff](../resources/timeoff.md) collection|Get the timeOff resources from the timesOff navigation property.|
|[Create timeOff](../api/schedule-post-timesoff.md)|[timeOff](../resources/timeoff.md)|Create a new timeOff object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activitiesIncludedWhenCopyingShiftsEnabled|Boolean|**TODO: Add Description**|
|enabled|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|offerShiftRequestsEnabled|Boolean|**TODO: Add Description**|
|openShiftsEnabled|Boolean|**TODO: Add Description**|
|provisionStatus|operationStatus|**TODO: Add Description**.The possible values are: `NotStarted`, `Running`, `Completed`, `Failed`.|
|provisionStatusCode|String|**TODO: Add Description**|
|startDayOfWeek|dayOfWeek|**TODO: Add Description**.The possible values are: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`.|
|swapShiftsRequestsEnabled|Boolean|**TODO: Add Description**|
|timeClockEnabled|Boolean|**TODO: Add Description**|
|timeClockSettings|[timeClockSettings](../resources/timeclocksettings.md)|**TODO: Add Description**|
|timeOffRequestsEnabled|Boolean|**TODO: Add Description**|
|timeZone|String|**TODO: Add Description**|
|workforceIntegrationIds|String collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|dayNotes|[dayNote](../resources/daynote.md) collection|**TODO: Add Description**|
|offerShiftRequests|[offerShiftRequest](../resources/offershiftrequest.md) collection|**TODO: Add Description**|
|openShiftChangeRequests|[openShiftChangeRequest](../resources/openshiftchangerequest.md) collection|**TODO: Add Description**|
|openShifts|[openShift](../resources/openshift.md) collection|**TODO: Add Description**|
|schedulingGroups|[schedulingGroup](../resources/schedulinggroup.md) collection|**TODO: Add Description**|
|shifts|[shift](../resources/shift.md) collection|**TODO: Add Description**|
|shiftsRoleDefinitions|[shiftsRoleDefinition](../resources/shiftsroledefinition.md) collection|**TODO: Add Description**|
|swapShiftsChangeRequests|[swapShiftsChangeRequest](../resources/swapshiftschangerequest.md) collection|**TODO: Add Description**|
|timeCards|[timeCard](../resources/timecard.md) collection|**TODO: Add Description**|
|timeOffReasons|[timeOffReason](../resources/timeoffreason.md) collection|**TODO: Add Description**|
|timeOffRequests|[timeOffRequest](../resources/timeoffrequest.md) collection|**TODO: Add Description**|
|timesOff|[timeOff](../resources/timeoff.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.schedule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.schedule",
  "id": "String (identifier)",
  "enabled": "Boolean",
  "timeZone": "String",
  "provisionStatus": "String",
  "provisionStatusCode": "String",
  "workforceIntegrationIds": [
    "String"
  ],
  "timeClockEnabled": "Boolean",
  "timeClockSettings": {
    "@odata.type": "microsoft.graph.timeClockSettings"
  },
  "openShiftsEnabled": "Boolean",
  "swapShiftsRequestsEnabled": "Boolean",
  "offerShiftRequestsEnabled": "Boolean",
  "timeOffRequestsEnabled": "Boolean",
  "startDayOfWeek": "String",
  "activitiesIncludedWhenCopyingShiftsEnabled": "Boolean"
}
```

