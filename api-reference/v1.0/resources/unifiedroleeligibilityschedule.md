---
title: "unifiedRoleEligibilitySchedule resource type"
description: "Represents a schedule for a role eligibility in your tenant."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleEligibilitySchedule resource type

Namespace: microsoft.graph

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
|appScopeId|String|Identifier of the app-specific scope when the role eligibility is scoped to an app. The scope of a role eligibility determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). Supports `$filter` (`eq`, `ne`, and on `null` values).|
|createdDateTime|DateTimeOffset|When the schedule was created. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).|
|createdUsing|String|Identifier of the object through which this schedule was created. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). Supports `$filter` (`eq`, `ne`, and on `null` values).|
|directoryScopeId|String|Identifier of the directory object representing the scope of the role eligibility. The scope of a role eligibility determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). Supports `$filter` (`eq`, `ne`, and on `null` values).|
|id|String|The unique identifier for the schedule object. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`).|
|memberType|String|How the role eligibility is inherited. It can either be `Inherited`, `Direct`, or `Group`. It can further imply whether the **unifiedRoleEligibilitySchedule** can be managed by the caller. Supports `$filter` (`eq`, `ne`).|
|modifiedDateTime|DateTimeOffset|When the schedule was last modified. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).|
|principalId|String|Identifier of the principal that is eligible for a role.Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). Supports `$filter` (`eq`, `ne`).|
|roleDefinitionId|String|Identifier of the [unifiedRoleDefinition](unifiedroledefinition.md) object that a principal is eligible for. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md).|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The period of the role eligibility.|
|status|String|The status of the role eligibility request. Inherited from [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md). The possible values are: `Canceled`, `Denied`, `Failed`, `Granted`, `PendingAdminDecision`, `PendingApproval`, `PendingProvisioning`, `PendingScheduleCreation`, `Provisioned`, `Revoked`, and `ScheduleCreated`. Not nullable. Supports `$filter` (`eq`, `ne`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app-specific scope when the role eligibility is scoped to an app. Nullable. Supports `$expand`.|
|directoryScope|[directoryObject](../resources/directoryobject.md)|The directory object that is the scope of the role eligibility. Read-only. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|The principal that's eligible for a role through the request. Supports `$expand`.|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Detailed information for the roleDefinition object that is referenced through the **roleDefinitionId** property. Supports `$expand`.|

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

