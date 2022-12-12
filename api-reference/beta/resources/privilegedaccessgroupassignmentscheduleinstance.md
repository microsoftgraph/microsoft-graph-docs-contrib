---
title: "privilegedAccessGroupAssignmentScheduleInstance resource type"
description: "**TODO: Add Description**"
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupAssignmentScheduleInstance resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessGroupAssignmentScheduleInstances](../api/privilegedaccessgroup-list-assignmentscheduleinstances.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) collection|Get a list of the [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) objects and their properties.|
|[Create privilegedAccessGroupAssignmentScheduleInstance](../api/privilegedaccessgroup-post-assignmentscheduleinstances.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md)|Create a new [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) object.|
|[Get privilegedAccessGroupAssignmentScheduleInstance](../api/privilegedaccessgroupassignmentscheduleinstance-get.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md)|Read the properties and relationships of a [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) object.|
|[Update privilegedAccessGroupAssignmentScheduleInstance](../api/privilegedaccessgroupassignmentscheduleinstance-update.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md)|Update the properties of a [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) object.|
|[Delete privilegedAccessGroupAssignmentScheduleInstance](../api/privilegedaccessgroup-delete-assignmentscheduleinstances.md)|None|Delete a [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) object.|
|[filterByCurrentUser](../api/privilegedaccessgroupassignmentscheduleinstance-filterbycurrentuser.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) collection|**TODO: Add Description**|
|[List privilegedAccessGroupEligibilityScheduleInstance](../api/privilegedaccessgroup-list-eligibilityscheduleinstances.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) collection|Get the privilegedAccessGroupEligibilityScheduleInstance resources from the activatedUsing navigation property.|
|[Add privilegedAccessGroupEligibilityScheduleInstance](../api/privilegedaccessgroupassignmentscheduleinstance-post-activatedusing.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md)|Add activatedUsing by posting to the activatedUsing collection.|
|[Remove privilegedAccessGroupEligibilityScheduleInstance](../api/privilegedaccessgroupassignmentscheduleinstance-delete-activatedusing.md)|None|Remove a [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) object.|
|[List group](../api/user-list-joinedgroups.md)|[group](../resources/group.md) collection|Get the group resources from the group navigation property.|
|[Add group](../api/privilegedaccessgroupassignmentscheduleinstance-post-group.md)|[group](../resources/group.md)|Add group by posting to the group collection.|
|[Remove group](../api/privilegedaccessgroupassignmentscheduleinstance-delete-group.md)|None|Remove a [group](../resources/group.md) object.|
|[List principal](../api/user-list-createdobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/privilegedaccessgroupassignmentscheduleinstance-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[Remove principal](../api/privilegedaccessgroupassignmentscheduleinstance-delete-principal.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|**TODO: Add Description**.The possible values are: `owner`, `member`, `unknownFutureValue`.|
|assignmentScheduleId|String|**TODO: Add Description**|
|assignmentType|privilegedAccessGroupAssignmentType|**TODO: Add Description**.The possible values are: `assigned`, `activated`, `unknownFutureValue`.|
|endDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md).|
|groupId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|memberType|privilegedAccessGroupMemberType|**TODO: Add Description**.The possible values are: `direct`, `group`, `unknownFutureValue`.|
|principalId|String|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md)|**TODO: Add Description**|
|group|[group](../resources/group.md)|**TODO: Add Description**|
|principal|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessGroupAssignmentScheduleInstance",
  "baseType": "microsoft.graph.privilegedAccessScheduleInstance",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessGroupAssignmentScheduleInstance",
  "id": "String (identifier)",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "principalId": "String",
  "accessId": "String",
  "groupId": "String",
  "memberType": "String",
  "assignmentType": "String",
  "assignmentScheduleId": "String"
}
```

