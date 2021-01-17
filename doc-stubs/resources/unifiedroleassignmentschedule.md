---
title: "unifiedRoleAssignmentSchedule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# unifiedRoleAssignmentSchedule resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleAssignmentSchedules](../api/unifiedroleassignmentschedule-list.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) collection|Get a list of the [unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) objects and their properties.|
|[Create unifiedRoleAssignmentSchedule](../api/unifiedroleassignmentschedule-post-unifiedroleassignmentschedules.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md)|Create a new [unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) object.|
|[Get unifiedRoleAssignmentSchedule](../api/unifiedroleassignmentschedule-get.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md)|Read the properties and relationships of an [unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) object.|
|[Update unifiedRoleAssignmentSchedule](../api/unifiedroleassignmentschedule-update.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md)|Update the properties of an [unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) object.|
|[Delete unifiedRoleAssignmentSchedule](../api/unifiedroleassignmentschedule-delete.md)|None|Deletes an [unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) object.|
|[filterByCurrentUser](../api/unifiedroleassignmentschedule-filterbycurrentuser.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) collection|**TODO: Add Description**|
|[List unifiedRoleEligibilitySchedule](../api/unifiedroleassignmentschedule-list-activatedusing.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) collection|Get the unifiedRoleEligibilitySchedule resources from the activatedUsing navigation property.|
|[Add unifiedRoleEligibilitySchedule](../api/unifiedroleassignmentschedule-post-activatedusing.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|Add activatedUsing by posting to the activatedUsing collection.|
|[List unifiedRoleScheduleInstanceBase](../api/unifiedroleassignmentschedule-list-activeinstance.md)|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) collection|Get the unifiedRoleScheduleInstanceBase resources from the activeInstance navigation property.|
|[Add unifiedRoleScheduleInstanceBase](../api/unifiedroleassignmentschedule-post-activeinstance.md)|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|Add activeInstance by posting to the activeInstance collection.|
|[List appScope](../api/unifiedroleassignmentschedule-list-appscope.md)|[appScope](../resources/appscope.md) collection|Get the appScope resources from the appScope navigation property.|
|[Add appScope](../api/unifiedroleassignmentschedule-post-appscope.md)|[appScope](../resources/appscope.md)|Add appScope by posting to the appScope collection.|
|[List directoryScope](../api/unifiedroleassignmentschedule-list-directoryscope.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the directoryScope navigation property.|
|[Add directoryScope](../api/unifiedroleassignmentschedule-post-directoryscope.md)|[directoryObject](../resources/directoryobject.md)|Add directoryScope by posting to the directoryScope collection.|
|[List principal](../api/unifiedroleassignmentschedule-list-principal.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/unifiedroleassignmentschedule-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[List unifiedRoleDefinition](../api/unifiedroleassignmentschedule-list-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|Get the unifiedRoleDefinition resources from the roleDefinition navigation property.|
|[Add unifiedRoleDefinition](../api/unifiedroleassignmentschedule-post-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Add roleDefinition by posting to the roleDefinition collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|assignmentType|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|createdUsing|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|directoryScopeId|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|id|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|memberType|String|**TODO: Add Description**|
|modifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|principalId|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|roleDefinitionId|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|**TODO: Add Description**|
|status|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|**TODO: Add Description**|
|activeInstance|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|appScope|[appScope](../resources/appscope.md)|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|directoryScope|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|principal|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentSchedule",
  "baseType": "Microsoft.Identity.Governance.Common.Data.ExternalModels.V1.unifiedRoleScheduleBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleAssignmentSchedule",
  "id": "String (identifier)",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "createdUsing": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "status": "String",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "assignmentType": "String",
  "memberType": "String"
}
```

