---
title: "unifiedRoleAssignmentScheduleInstance resource type"
description: "Represents the instance for an active role assignment in your tenant."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Assignment schedule instance
ms.date: 07/22/2024
---

# unifiedRoleAssignmentScheduleInstance resource type

Namespace: microsoft.graph

Represents the instance for an active role assignment in your tenant. The active assignment might have been made through [PIM assignments and activation requests](../api/rbacapplication-post-roleassignmentschedulerequests.md), or directly through the [role assignments API](../resources/unifiedroleassignment.md).

Inherits from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/rbacapplication-list-roleassignmentscheduleinstances.md)|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) collection|Get the instances of active role assignments.|
|[Get](../api/unifiedroleassignmentscheduleinstance-get.md)|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md)|Get the instance of an active role assignment.|
|[Filter by current user](../api/unifiedroleassignmentscheduleinstance-filterbycurrentuser.md)|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) collection|Get the instances of active role assignments for the calling principal.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|Identifier of the app-specific scope when the assignment is scoped to an app. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units. Supports `$filter` (`eq`, `ne`, and on `null` values). Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md).|
|assignmentType|String|The type of the assignment that can either be `Assigned` or `Activated`. Supports `$filter` (`eq`, `ne`).|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only. Supports `$filter` (`eq`, `ne`, and on `null` values). Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md).|
|endDateTime|DateTimeOffset| The end date of the schedule instance.|
|id|String|The unique identifier for the **unifiedRoleAssignmentScheduleInstance** object. Inherited from [entity](../resources/entity.md).|
|memberType|String|How the assignment is inherited. It can either be `Inherited`, `Direct`, or `Group`. It can further imply whether the **unifiedRoleAssignmentSchedule** can be managed by the caller. Supports `$filter` (`eq`, `ne`).|
|principalId|String|Identifier of the principal that has been granted the role assignment. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md). Supports `$filter` (`eq`, `ne`). |
|roleAssignmentOriginId|String|The identifier of the role assignment in Microsoft Entra. Supports `$filter` (`eq`, `ne`).|
|roleAssignmentScheduleId|String|The identifier of the **unifiedRoleAssignmentSchedule** object from which this instance was created. Supports `$filter` (`eq`, `ne`).|
|roleDefinitionId|String|The identifier of the [unifiedRoleDefinition](unifiedroledefinition.md) object that is being assigned to the principal. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md). Supports `$filter` (`eq`, `ne`).|
|startDateTime|DateTimeOffset|When this instance starts.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md)|If the request is from an eligible administrator to activate a role, this parameter shows the related eligible assignment for that activation. Otherwise, it's `null`. Supports `$expand` and `$select` nested in `$expand`.|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app-specific scope when the assignment is scoped to an app. Nullable. Supports `$expand`.|
|directoryScope|[directoryObject](../resources/directoryobject.md)|The directory object that is the scope of the assignment. Read-only. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|The principal that's getting a role assignment through the request. Supports `$expand` and `$select` nested in `$expand` for **id** only.|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Detailed information for the roleDefinition object that is referenced through the **roleDefinitionId** property. Supports `$expand` and `$select` nested in `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentScheduleInstance",
  "baseType": "microsoft.graph.unifiedRoleScheduleInstanceBase",
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
