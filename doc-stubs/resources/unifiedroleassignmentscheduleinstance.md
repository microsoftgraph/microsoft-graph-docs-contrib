---
title: "unifiedRoleAssignmentScheduleInstance resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# unifiedRoleAssignmentScheduleInstance resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleAssignmentScheduleInstances](../api/unifiedroleassignmentscheduleinstance-list.md)|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) collection|Get a list of the [unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) objects and their properties.|
|[Create unifiedRoleAssignmentScheduleInstance](../api/unifiedroleassignmentscheduleinstance-post-unifiedroleassignmentscheduleinstances.md)|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md)|Create a new [unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) object.|
|[Get unifiedRoleAssignmentScheduleInstance](../api/unifiedroleassignmentscheduleinstance-get.md)|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md)|Read the properties and relationships of an [unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) object.|
|[Update unifiedRoleAssignmentScheduleInstance](../api/unifiedroleassignmentscheduleinstance-update.md)|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md)|Update the properties of an [unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) object.|
|[Delete unifiedRoleAssignmentScheduleInstance](../api/unifiedroleassignmentscheduleinstance-delete.md)|None|Deletes an [unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) object.|
|[filterByCurrentUser](../api/unifiedroleassignmentscheduleinstance-filterbycurrentuser.md)|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) collection|**TODO: Add Description**|
|[List unifiedRoleEligibilityScheduleInstance](../api/unifiedroleassignmentscheduleinstance-list-activatedusing.md)|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) collection|Get the unifiedRoleEligibilityScheduleInstance resources from the activatedUsing navigation property.|
|[Add unifiedRoleEligibilityScheduleInstance](../api/unifiedroleassignmentscheduleinstance-post-activatedusing.md)|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md)|Add activatedUsing by posting to the activatedUsing collection.|
|[List appScope](../api/unifiedroleassignmentscheduleinstance-list-appscope.md)|[appScope](../resources/appscope.md) collection|Get the appScope resources from the appScope navigation property.|
|[Add appScope](../api/unifiedroleassignmentscheduleinstance-post-appscope.md)|[appScope](../resources/appscope.md)|Add appScope by posting to the appScope collection.|
|[List directoryScope](../api/unifiedroleassignmentscheduleinstance-list-directoryscope.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the directoryScope navigation property.|
|[Add directoryScope](../api/unifiedroleassignmentscheduleinstance-post-directoryscope.md)|[directoryObject](../resources/directoryobject.md)|Add directoryScope by posting to the directoryScope collection.|
|[List principal](../api/unifiedroleassignmentscheduleinstance-list-principal.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/unifiedroleassignmentscheduleinstance-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[List unifiedRoleDefinition](../api/unifiedroleassignmentscheduleinstance-list-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|Get the unifiedRoleDefinition resources from the roleDefinition navigation property.|
|[Add unifiedRoleDefinition](../api/unifiedroleassignmentscheduleinstance-post-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Add roleDefinition by posting to the roleDefinition collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|assignmentType|String|**TODO: Add Description**|
|directoryScopeId|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|memberType|String|**TODO: Add Description**|
|principalId|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|roleAssignmentOriginId|String|**TODO: Add Description**|
|roleAssignmentScheduleId|String|**TODO: Add Description**|
|roleDefinitionId|String|**TODO: Add Description** Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|startDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md)|**TODO: Add Description**|
|appScope|[appScope](../resources/appscope.md)|**TODO: Add Description** Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|directoryScope|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description** Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|principal|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description** Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|**TODO: Add Description** Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentScheduleInstance",
  "baseType": "Microsoft.Identity.Governance.Common.Data.ExternalModels.V1.unifiedRoleScheduleInstanceBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleAssignmentScheduleInstance",
  "id": "String (identifier)",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "assignmentType": "String",
  "memberType": "String",
  "roleAssignmentOriginId": "String",
  "roleAssignmentScheduleId": "String"
}
```

