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

Represents an unassigned open shift in a [schedule](../resources/schedule.md).

Inherits from [changeTrackedEntity](../resources/changetrackedentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List openShifts](../api/openshift-list.md)|[openShift](../resources/openshift.md) collection|List [openShift](../resources/openshift.md) objects in a team.|
|[Create openShift](../api/openshift-post.md)|[openShift](../resources/openshift.md)|Create an instance of an [openShift](../resources/openshift.md) object.|
|[Get openShift](../api/openshift-get.md)|[openShift](../resources/openshift.md)|Retrieve the properties and relationships of an [openShift](../resources/openshift.md) object.|
|[Update openShift](../api/openshift-update.md)|[openShift](../resources/openshift.md)|Update the properties of an [openShift](../resources/openshift.md) object.|
|[Delete openShift](../api/openshift-delete.md)|None|Delete an [openShift](../resources/openshift.md) object.|
|[getOpenShifts](../api/team-getopenshifts.md)|[openShift](../resources/openshift.md) collection|Get a list of openShift objects from across all schedules the user has access to.|
|[stageForDeletion](../api/openshift-stagefordeletion.md)|None|Stage an [openShift](../resources/openshift.md) for deletion.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](identityset.md)|Identity of the person who created the **openShift** object. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|createdDateTime|DateTimeOffset|Date and time when the **openShift** was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|draftOpenShift|[openShiftItem](../resources/openshiftitem.md)|Draft changes in the open shift. Only visible to managers until [shared](../api/schedule-share.md).|
|id|String| Unique identifier for the **openShift** object. Read-only. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|isStagedForDeletion|Boolean|The open shift is marked for deletion. Finalized when the schedule is [shared](../api/schedule-share.md).|
|lastModifiedBy|[identitySet](identityset.md)|Identity of the person who last modified the **openShift** object. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|lastModifiedDateTime|DateTimeOffset|Date and time when the **openShift** was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|schedulingGroupId|String|The ID of the schedule group the open shift is in.|
|schedulingGroupName|String|The name of the scheduling group the open shift is in (computed).|
|sharedOpenShift|[openShiftItem](../resources/openshiftitem.md)|Published changes in the open shift (Shared with team).|
|teamId|String|The ID of the team the open shift is in (computed).|
|teamName|String|The name of the team the open shift is in (computed).|

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
  "schedulingGroupName": "String",
  "sharedOpenShift": {"@odata.type": "microsoft.graph.openShiftItem"},
  "teamId": "String",
  "teamName": "String"
}
```
