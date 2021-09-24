---
title: "unifiedRoleAssignmentSchedule resource type"
description: "Represents a schedule for an active role assignment operations through Azure AD Privileged Identity Management."
author: "shauliu1"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleAssignmentSchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the schedule for an active role assignment through Azure AD Privileged Identity Management. A **unifiedRoleAssignmentSchedule** is created by a [unifiedRoleAssignmentScheduleRequest](unifiedroleassignmentschedulerequest.md) and is used to instantiate a [unifiedRoleAssignmentScheduleInstance](unifiedroleassignmentscheduleinstance.md). This resource supports list and get operations to retrieve the schedule for the purpose of viewing current and future assignments.

Inherits from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleAssignmentSchedules](../api/unifiedroleassignmentschedule-list.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) collection|Get a list of the [unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) objects and their properties.|
|[Get unifiedRoleAssignmentSchedule](../api/unifiedroleassignmentschedule-get.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md)|Read the properties and relationships of an [unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) object.|
|[filterByCurrentUser](../api/unifiedroleassignmentschedule-filterbycurrentuser.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) collection|Get a list of the [unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) objects and their properties granted to a particular user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|Identifier of the app-specific scope when the assignment scope is app-specific. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|assignmentType|String|Type of the assignment. It can either be `Assigned` or `Activated`.|
|createdDateTime|DateTimeOffset|Time that the schedule was created. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|createdUsing|String|ID of the roleAssignmentScheduleRequest that created this schedule. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|id|String|The unique identifier for the unifiedRoleAssignmentSchedule. Key, not nullable, Read-only. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|memberType|String|Membership type of the assignment. It can either be `Inherited`, `Direct`, or `Group`.|
|modifiedDateTime|DateTimeOffset|Last time the schedule was updated. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|principalId|String| Objectid of the principal to which the assignment is being granted to. Can be a group or a user. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). <br> Supports `$filter` (`eq`).|
|roleDefinitionId|String|ID of the unifiedRoleDefinition the assignment is for. Read only. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). <br> Supports `$filter` (`eq`).|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The schedule object of the role assignment request.|
|status|String|Status for the `roleAssignmentSchedule`. It can include state related messages like `Provisioned`, `Revoked`, `Pending Provisioning`, and `Pending Approval`. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).<br> Supports `$filter` (`eq`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|If the roleAssignmentSchedule is activated by a roleEligibilitySchedule, this is the link to that schedule.|
|activeInstance|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|Will be deprecated. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app specific scope when the assignment scope is app specific. Containment entity. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|directoryScope|[directoryObject](../resources/directoryobject.md)|Property referencing the directory object that is the scope of the assignment. Provided so that callers can get the directory object using `$expand` at the same time as getting the role assignment. Read-only. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|principal|[directoryObject](../resources/directoryobject.md)|Property referencing the principal that is getting a role assignment through the request. Provided so that callers can get the principal using `$expand` at the same time as getting the role assignment. Read-only. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Property indicating the roleDefinition the assignment is for. Provided so that callers can get the role definition using `$expand` at the same time as getting the role assignment. roleDefinition.Id will be auto expanded. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|

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

