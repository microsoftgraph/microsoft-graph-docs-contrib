---
title: "unifiedRoleScheduleInstanceBase resource type"
description: "A template that exposes properties and relationships used in unifiedRoleAssignmentScheduleInstance and unifiedRoleEligibilityScheduleInstance resource types."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleScheduleInstanceBase resource type

Namespace: microsoft.graph

A template that exposes properties and relationships used in [unifiedRoleAssignmentScheduleInstance](unifiedroleassignmentscheduleinstance.md) and [unifiedRoleEligibilityScheduleInstance](unifiedroleeligibilityscheduleinstance.md) resource types.


Inherits from [entity](../resources/entity.md).

## Methods

None. 

<!--
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleScheduleInstanceBases](../api/unifiedrolescheduleinstancebase-list.md)|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) collection|Get a list of the [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) objects and their properties.|
|[Get unifiedRoleScheduleInstanceBase](../api/unifiedrolescheduleinstancebase-get.md)|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|Read the properties and relationships of an [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) object.|
|[Update unifiedRoleScheduleInstanceBase](../api/unifiedrolescheduleinstancebase-update.md)|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|Update the properties of an [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) object.|
|[Delete unifiedRoleScheduleInstanceBase](../api/unifiedrolescheduleinstancebase-delete.md)|None|Deletes an [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) object.|
|[List appScope](../api/unifiedrolescheduleinstancebase-list-appscope.md)|[appScope](../resources/appscope.md) collection|Get the appScope resources from the appScope navigation property.|
|[Add appScope](../api/unifiedrolescheduleinstancebase-post-appscope.md)|[appScope](../resources/appscope.md)|Add appScope by posting to the appScope collection.|
|[List directoryScope](../api/unifiedrolescheduleinstancebase-list-directoryscope.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the directoryScope navigation property.|
|[Add directoryScope](../api/unifiedrolescheduleinstancebase-post-directoryscope.md)|[directoryObject](../resources/directoryobject.md)|Add directoryScope by posting to the directoryScope collection.|
|[List principal](../api/unifiedrolescheduleinstancebase-list-principal.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/unifiedrolescheduleinstancebase-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[List unifiedRoleDefinition](../api/unifiedrolescheduleinstancebase-list-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|Get the unifiedRoleDefinition resources from the roleDefinition navigation property.|
|[Add unifiedRoleDefinition](../api/unifiedrolescheduleinstancebase-post-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Add roleDefinition by posting to the roleDefinition collection.|
-->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|Identifier of the app-specific scope when the assignment or role eligibility is scoped to an app. The scope of an assignment or role eligibility determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units.|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment or role eligibility. The scope of an assignment or role eligibility determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only.|
|id|String|The unique identifier for the schedule object. Inherited from [entity](../resources/entity.md).|
|principalId|String|Identifier of the principal that has been granted the role assignment or that's eligible for a role.|
|roleDefinitionId|String|Identifier of the [unifiedRoleDefinition](unifiedroledefinition.md) object that is being assigned to the principal or that the principal is eligible for.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app-specific scope when the assignment or role eligibility is scoped to an app. Nullable.|
|directoryScope|[directoryObject](../resources/directoryobject.md)|The directory object that is the scope of the assignment or role eligibility. Read-only.|
|principal|[directoryObject](../resources/directoryobject.md)|The principal that's getting a role assignment or role eligibility through the request.|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Detailed information for the roleDefinition object that is referenced through the **roleDefinitionId** property.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleScheduleInstanceBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleScheduleInstanceBase",
  "id": "String (identifier)",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String"
}
```

