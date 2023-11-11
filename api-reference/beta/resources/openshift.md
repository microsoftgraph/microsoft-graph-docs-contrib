---
title: "openShift resource type"
description: "Represents an unassigned open shift in a schedule."
author: "raulfernandes"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# openShift resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an unassigned, open shift in a [schedule](../resources/schedule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List openShifts in schedule](../api/openshift-list.md)|[openShift](../resources/openshift.md) collection|Get a list of the [openShift](../resources/openshift.md) objects and their properties.|
|[Create openShift](../api/openshift-post.md)|[openShift](../resources/openshift.md)|Create a new [openShift](../resources/openshift.md) object.|
|[Get openShift](../api/openshift-get.md)|[openShift](../resources/openshift.md)|Read the properties and relationships of an [openShift](../resources/openshift.md) object.|
|[Update openShift](../api/openshift-update.md)|[openShift](../resources/openshift.md)|Update the properties of an [openShift](../resources/openshift.md) object.|
|[Delete openShift](../api/openshift-delete.md)|None|Delete an [openShift](../resources/openshift.md) object.|
|[stageForDeletion](../api/openshift-stagefordeletion.md)|None|Stage an [openShift](../resources/openshift.md) for deletion (The open shift draft state is set to be deleted, the open shift will be deleted when the schedule is shared).|
|[List openShifts in joined teams](../api/team-getopenshifts.md)|[openShift](../resources/openshift.md) collection|Get a list of the [openShift](../resources/openshift.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|draftOpenShift|[openShiftItem](../resources/openshiftitem.md)|Draft changes in the open shift (only visible to managers until [shared](../api/schedule-share.md)).|
|isStagedForDeletion|Boolean|The open shift is marked for deletion (finalized when the schedule is [shared](../api/schedule-share.md))|
|schedulingGroupId|String|The ID of the schedule group the open shift is in|
|schedulingGroupName|String|The name of the scheduling group the open shift is in (computed)|
|sharedOpenShift|[openShiftItem](../resources/openshiftitem.md)|Published changes in the open shift (Shared with team).|
|teamId|String|The ID of the team the open shift is in (computed)|
|teamName|String|The name of the team the open shift is in (computed)|

## Relationships
None.

## JSON representation
The following payload is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "sharedOpenShift": {
    "@odata.type": "microsoft.graph.openShiftItem"
  },
  "draftOpenShift": {
    "@odata.type": "microsoft.graph.openShiftItem"
  },
  "schedulingGroupId": "String",
  "isStagedForDeletion": "Boolean",
  "schedulingGroupName": "String",
  "teamId": "String",
  "teamName": "String"
}
```

