---
title: "unifiedRoleEligibilityScheduleInstance resource type"
description: "Represents a schedule instance for an eligible role assignment operations through Azure AD Privileged Identity Management."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleEligibilityScheduleInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the instance for a role eligibility in your tenant.

Inherits from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleEligibilityScheduleInstances](../api/rbacapplication-list-roleeligibilityscheduleinstances.md)|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) collection|GGet the instances of role eligibilities.|
|[Get unifiedRoleEligibilityScheduleInstance](../api/unifiedroleeligibilityscheduleinstance-get.md)|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md)|Get the instance of a role eligibility.|
|[filterByCurrentUser](../api/unifiedroleeligibilityscheduleinstance-filterbycurrentuser.md)|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) collection|Get the instances of eligible roles for the calling principal.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|Identifier of the app-specific scope when the assignment scope is app-specific. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md). Supports `$filter` (`eq`, `ne`, and on `null` values).|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md). Supports `$filter` (`eq`, `ne`, and on `null` values).|
|endDateTime|DateTimeOffset|Time that the roleEligibilityScheduleInstance will expire.|
|id|String|The unique identifier for the roleEligibilityScheduleInstance. Key, not nullable, Read-only.Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md).|
|memberType|String|Membership type of the assignment. It can either be `Inherited`, `Direct`, or `Group`.|
|principalId|String|Identifier of the principal to which the assignment is being granted to. Can be a group or a user. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md).|
|roleDefinitionId|String|Identifier of the unifiedRoleDefinition the assignment is for. Read only. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md).<br> Supports `$filter` (`eq`).|
|roleEligibilityScheduleId|String|Identifier of the parent roleEligibilitySchedule for this instance.|
|startDateTime|DateTimeOffset|Time that the roleEligibilityScheduleInstance will start.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app specific scope when the assignment scope is app specific. Containment entity. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md). Supports `$expand`.|
|directoryScope|[directoryObject](../resources/directoryobject.md)|Property referencing the directory object that is the scope of the assignment. Provided so that callers can get the directory object using `$expand` at the same time as getting the eligible role assignments. Read-only. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md). Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|Property referencing the principal that is getting an eligible role assignment through the request. Provided so that callers can get the principal using `$expand` at the same time as getting the eligible role assignments. Read-only. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md). Supports `$expand`.|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Property indicating the roleDefinition the assignment is for. Provided so that callers can get the role definition using `$expand` at the same time as getting the eligible role assignments. roleDefinition.Id will be auto expanded. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md). Supports `$expand`.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleEligibilityScheduleInstance",
  "baseType": "microsoft.graph.unifiedRoleScheduleInstanceBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleEligibilityScheduleInstance",
  "id": "String (identifier)",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "memberType": "String",
  "roleEligibilityScheduleId": "String"
}
```

