---
title: "unifiedRoleEligibilitySchedule resource type"
description: "Represents a schedule for an eligible role assignment operations through Azure AD Privileged Identity Management."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleEligibilitySchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a schedule for a role eligibility in your tenant and is used to instantiate a [unifiedRoleEligibilityScheduleInstance](unifiedroleeligibilityscheduleinstance.md).

Inherits from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleEligibilitySchedules](../api/rbacapplication-list-roleeligibilityschedules.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) collection|Get the schedules for role eligibility operations.|
|[Get unifiedRoleEligibilitySchedule](../api/unifiedroleeligibilityschedule-get.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|Retrieve the schedule for a role eligibility operation.|
|[filterByCurrentUser](../api/unifiedroleeligibilityschedule-filterbycurrentuser.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) collection|Retrieve the schedules for role eligibilities for which the signed-in user is the principal.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|Identifier of the app-specific scope when the assignment scope is app-specific. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). Supports `$filter` (`eq`, `ne`, and on `null` values).|
|createdDateTime|DateTimeOffset|Time that the schedule was created. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).|
|createdUsing|String|Identifier of the roleEligibilityScheduleRequest that created this schedule. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). Supports `$filter` (`eq`, `ne`, and on `null` values).|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). Supports `$filter` (`eq`, `ne`, and on `null` values).|
|id|String|The unique identifier for the unifiedRoleEligibilitySchedule. Key, not nullable, Read-only. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). Supports `$filter` (`eq`).|
|memberType|String|Membership type of the eligible assignment. It can either be `Inherited`, `Direct`, or `Group`. Supports `$filter` (`eq`).|
|modifiedDateTime|DateTimeOffset|Last time the schedule was updated. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).|
|principalId|String| Identifier of the principal to which the eligible assignment is being granted to. Can be a group or a user. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).<br> Supports `$filter` (`eq`).|
|roleDefinitionId|String|Identifier of the unifiedRoleDefinition the assignment is for. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).<br> Supports `$filter` (`eq`).|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The schedule object of the eligible role assignment request.|
|status|String|Status for the `roleEligibilitySchedule`. It can include state related messages like `Provisioned`, `Revoked`, `Pending Provisioning`, and `Pending Approval`. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).<br> Supports `$filter` (`eq`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app specific scope when the assignment scope is app specific. Containment entity. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|directoryScope|[directoryObject](../resources/directoryobject.md)|Property referencing the directory object that is the scope of the eligible assignment. Provided so that callers can get the directory object using `$expand` at the same time as getting the eligible role assignment. Read-only. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|principal|[directoryObject](../resources/directoryobject.md)|Property referencing the principal that is getting an eligible role assignment through the request. Provided so that callers can get the principal using `$expand` at the same time as getting the eligible role assignment. Read-only. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Property indicating the roleDefinition the eligible assignment is for. Provided so that callers can get the role definition using `$expand` at the same time as getting the eligible role assignment. roleDefinition.Id will be auto expanded. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleEligibilitySchedule",
  "baseType": "microsoft.graph.unifiedRoleScheduleBase",
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

