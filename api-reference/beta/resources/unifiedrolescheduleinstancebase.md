---
title: "unifiedRoleScheduleInstanceBase resource type"
description: "Base property of unified role schedule instance that combines unified role assignment schedule instance and unified role eligibility schedule instance"
author: "shauliu1"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleScheduleInstanceBase resource type

Namespace: microsoft.graph

Base property of unified role schedule instance that combines unified role assignment schedule instances and unified role eligibility schedule instances.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|Identifier of the app-specific scope when the assignment scope is app-specific. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units. |
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only. |
|id|String|The unique identifier for the unifiedRoleAssignmentScheduleInstance. Key, not nullable, Read-only.|
|principalId|String|Identifier of the principal to which the assignment is being granted to. Can be a group or a user. |
|roleDefinitionId|String|Identifier of the unifiedRoleDefinition the assignment is for. Read only. <br> Supports `$filter` (`eq`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app specific scope when the assignment scope is app specific. Containment entity. |
|directoryScope|[directoryObject](../resources/directoryobject.md)|The directory object that is the scope of the assignment. Enables the retrieval of the directory object using `$expand` at the same time as getting the role assignment. Read-only.|
|principal|[directoryObject](../resources/directoryobject.md)|The principal that is getting a role assignment through the request. Enables the retrieval of the principal using `$expand` at the same time as getting the role assignment. Read-only.|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|The roleDefinition for the assignment. Enables the retrieval of the role definition using `$expand` at the same time as getting the role assignment. The roleDefinition.Id is automatically expanded.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleScheduleInstanceBase",
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
