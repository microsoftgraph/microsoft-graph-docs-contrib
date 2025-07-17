---
title: "unifiedRoleScheduleBase resource type"
description: "A template that exposes properties and relationships used in unifiedRoleAssignmentSchedule and unifiedRoleEligibilitySchedule resource types."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# unifiedRoleScheduleBase resource type

Namespace: microsoft.graph

A template that exposes properties and relationships used in [unifiedRoleAssignmentSchedule](unifiedroleassignmentschedule.md) and [unifiedRoleEligibilitySchedule](unifiedroleeligibilityschedule.md) resource types.


Inherits from [entity](../resources/entity.md).

## Methods

None.

<!--
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleScheduleBases](../api/unifiedroleschedulebase-list.md)|[unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md) collection|Get a list of the [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md) objects and their properties.|
|[Get unifiedRoleScheduleBase](../api/unifiedroleschedulebase-get.md)|[unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|Read the properties and relationships of an [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md) object.|
|[Update unifiedRoleScheduleBase](../api/unifiedroleschedulebase-update.md)|[unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|Update the properties of an [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md) object.|
|[Delete unifiedRoleScheduleBase](../api/unifiedroleschedulebase-delete.md)|None|Deletes an [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md) object.|
|[List appScope](../api/unifiedroleschedulebase-list-appscope.md)|[appScope](../resources/appscope.md) collection|Get the appScope resources from the appScope navigation property.|
|[Add appScope](../api/unifiedroleschedulebase-post-appscope.md)|[appScope](../resources/appscope.md)|Add appScope by posting to the appScope collection.|
|[List directoryScope](../api/unifiedroleschedulebase-list-directoryscope.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the directoryScope navigation property.|
|[Add directoryScope](../api/unifiedroleschedulebase-post-directoryscope.md)|[directoryObject](../resources/directoryobject.md)|Add directoryScope by posting to the directoryScope collection.|
|[List principal](../api/unifiedroleschedulebase-list-principal.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/unifiedroleschedulebase-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[List unifiedRoleDefinition](../api/unifiedroleschedulebase-list-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|Get the unifiedRoleDefinition resources from the roleDefinition navigation property.|
|[Add unifiedRoleDefinition](../api/unifiedroleschedulebase-post-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Add roleDefinition by posting to the roleDefinition collection.|

-->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|Identifier of the app-specific scope when the assignment or eligibility is scoped to an app. The scope of an assignment or eligibility determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units.|
|createdDateTime|DateTimeOffset|When the schedule was created.|
|createdUsing|String|Identifier of the object through which this schedule was created.|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment or eligibility. The scope of an assignment or eligibility determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only.|
|id|String|The unique identifier for the schedule object. Inherited from [entity](../resources/entity.md).|
|modifiedDateTime|DateTimeOffset|When the schedule was last modified.|
|principalId|String|Identifier of the principal that has been granted the role assignment or eligibility.|
|roleDefinitionId|String|Identifier of the [unifiedRoleDefinition](unifiedroledefinition.md) object that is being assigned to the principal or that a principal is eligible for.|
|status|String|The status of the role assignment or eligibility request.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app-specific scope when the role eligibility or assignment is scoped to an app. Nullable.|
|directoryScope|[directoryObject](../resources/directoryobject.md)|The directory object that is the scope of the role eligibility or assignment. Read-only.|
|principal|[directoryObject](../resources/directoryobject.md)|The principal that's getting a role assignment or that's eligible for a role through the request.|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Detailed information for the roleDefinition object that is referenced through the **roleDefinitionId** property.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleScheduleBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleScheduleBase",
  "id": "String (identifier)",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "createdUsing": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "status": "String"
}
```

