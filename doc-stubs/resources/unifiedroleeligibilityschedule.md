---
title: "unifiedRoleEligibilitySchedule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# unifiedRoleEligibilitySchedule resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleEligibilitySchedules](../api/unifiedroleeligibilityschedule-list.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) collection|Get a list of the [unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) objects and their properties.|
|[Create unifiedRoleEligibilitySchedule](../api/unifiedroleeligibilityschedule-post-unifiedroleeligibilityschedules.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|Create a new [unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) object.|
|[Get unifiedRoleEligibilitySchedule](../api/unifiedroleeligibilityschedule-get.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|Read the properties and relationships of an [unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) object.|
|[Update unifiedRoleEligibilitySchedule](../api/unifiedroleeligibilityschedule-update.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|Update the properties of an [unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) object.|
|[Delete unifiedRoleEligibilitySchedule](../api/unifiedroleeligibilityschedule-delete.md)|None|Deletes an [unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) object.|
|[filterByCurrentUser](../api/unifiedroleeligibilityschedule-filterbycurrentuser.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) collection|**TODO: Add Description**|
|[List unifiedRoleScheduleInstanceBase](../api/unifiedroleeligibilityschedule-list-activeinstance.md)|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) collection|Get the unifiedRoleScheduleInstanceBase resources from the activeInstance navigation property.|
|[Add unifiedRoleScheduleInstanceBase](../api/unifiedroleeligibilityschedule-post-activeinstance.md)|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|Add activeInstance by posting to the activeInstance collection.|
|[List appScope](../api/unifiedroleeligibilityschedule-list-appscope.md)|[appScope](../resources/appscope.md) collection|Get the appScope resources from the appScope navigation property.|
|[Add appScope](../api/unifiedroleeligibilityschedule-post-appscope.md)|[appScope](../resources/appscope.md)|Add appScope by posting to the appScope collection.|
|[List directoryScope](../api/unifiedroleeligibilityschedule-list-directoryscope.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the directoryScope navigation property.|
|[Add directoryScope](../api/unifiedroleeligibilityschedule-post-directoryscope.md)|[directoryObject](../resources/directoryobject.md)|Add directoryScope by posting to the directoryScope collection.|
|[List principal](../api/unifiedroleeligibilityschedule-list-principal.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/unifiedroleeligibilityschedule-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[List unifiedRoleDefinition](../api/unifiedroleeligibilityschedule-list-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|Get the unifiedRoleDefinition resources from the roleDefinition navigation property.|
|[Add unifiedRoleDefinition](../api/unifiedroleeligibilityschedule-post-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Add roleDefinition by posting to the roleDefinition collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
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
  "@odata.type": "microsoft.graph.unifiedRoleEligibilitySchedule",
  "baseType": "Microsoft.Identity.Governance.Common.Data.ExternalModels.V1.unifiedRoleScheduleBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleEligibilitySchedule",
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
  "memberType": "String"
}
```

