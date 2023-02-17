---
title: "unifiedRoleAssignmentSchedule resource type"
description: "Represents a schedule for an active role assignment in your tenant."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleAssignmentSchedule resource type

Namespace: microsoft.graph

Represents a schedule for an active role assignment in your tenant and is used to instantiate a [unifiedRoleAssignmentScheduleInstance](unifiedroleassignmentscheduleinstance.md). The active assignment may have been made through [PIM assignments and activation requests](../api/rbacapplication-post-roleassignmentschedulerequests.md), or directly through the [role assignments API](../resources/unifiedroleassignment.md).

Inherits from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleAssignmentSchedules](../api/rbacapplication-list-roleassignmentschedules.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) collection|Get the schedules for active role assignment operations.|
|[Get unifiedRoleAssignmentSchedule](../api/unifiedroleassignmentschedule-get.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md)|Retrieve the schedule for an active role assignment operation.|
|[filterByCurrentUser](../api/unifiedroleassignmentschedule-filterbycurrentuser.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) collection|Retrieve the schedules for active role assignment operations for which the signed-in user is the principal.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|Identifier of the app-specific scope when the assignment is scoped to an app. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units. Supports `$filter` (`eq`, `ne`, and on `null` values). Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).|
|assignmentType|String|Type of the assignment which can either be `Assigned` or `Activated`. Supports `$filter` (`eq`, `ne`).|
|createdDateTime|DateTimeOffset|When the schedule was created. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).|
|createdUsing|String|Identifier of the **unifiedRoleAssignmentScheduleRequest** object through which this schedule was created. Nullable. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). Supports `$filter` (`eq`, `ne`, and on `null` values).|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only. Supports `$filter` (`eq`, `ne`, and on `null` values). Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).|
|id|String|The unique identifier for the **unifiedRoleAssignmentScheduleRequest** object. Supports `$filter` (`eq`). Inherited from [entity](../resources/entity.md).|
|memberType|String|How the assignments is inherited. It can either be `Inherited`, `Direct`, or `Group`. It can further imply whether the **unifiedRoleAssignmentSchedule** can be managed by the caller. Supports `$filter` (`eq`, `ne`).|
|modifiedDateTime|DateTimeOffset|When the schedule was last modified. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).|
|principalId|String|Identifier of the principal that has been granted the role assignment. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). Supports `$filter` (`eq`, `ne`).|
|roleDefinitionId|String|Identifier of the [unifiedRoleDefinition](unifiedroledefinition.md) object that is being assigned to the principal. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). Supports `$filter` (`eq`, `ne`).|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The period of the role assignment. It can represent a single occurrence or multiple recurrences.|
|status|String|The status of the **unifiedRoleAssignmentScheduleRequest** object. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). The possible values are: `Canceled`, `Denied`, `Failed`, `Granted`, `PendingAdminDecision`, `PendingApproval`, `PendingProvisioning`, `PendingScheduleCreation`, `Provisioned`, `Revoked`, and `ScheduleCreated`. Not nullable. Supports `$filter` (`eq`, `ne`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|If the request is from an eligible administrator to activate a role, this parameter will show the related eligible assignment for that activation. Otherwise, it is `null`. Supports `$expand`.|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app-specific scope when the assignment is scoped to an app. Nullable. Supports `$expand`.|
|directoryScope|[directoryObject](../resources/directoryobject.md)|The directory object that is the scope of the assignment. Read-only. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|The principal that's getting a role assignment through the request. Supports `$expand`.|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Detailed information for the roleDefinition object that is referenced through the **roleDefinitionId** property. Supports `$expand`.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentSchedule",
  "baseType": "microsoft.graph.unifiedRoleScheduleBase",
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

