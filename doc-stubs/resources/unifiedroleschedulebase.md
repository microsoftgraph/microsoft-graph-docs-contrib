---
title: "unifiedRoleScheduleBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# unifiedRoleScheduleBase resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleScheduleBases](../api/unifiedroleschedulebase-list.md)|[unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md) collection|Get a list of the [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md) objects and their properties.|
|[Create unifiedRoleScheduleBase](../api/unifiedroleschedulebase-create.md)|[unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|Create a new [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md) object.|
|[Get unifiedRoleScheduleBase](../api/unifiedroleschedulebase-get.md)|[unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|Read the properties and relationships of an [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md) object.|
|[Update unifiedRoleScheduleBase](../api/unifiedroleschedulebase-update.md)|[unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md)|Update the properties of an [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md) object.|
|[Delete unifiedRoleScheduleBase](../api/unifiedroleschedulebase-delete.md)|None|Deletes an [unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md) object.|
|[List unifiedRoleScheduleInstanceBase](../api/unifiedroleschedulebase-list-activeinstance.md)|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) collection|Get the unifiedRoleScheduleInstanceBase resources from the activeInstance navigation property.|
|[Add unifiedRoleScheduleInstanceBase](../api/unifiedroleschedulebase-post-activeinstance.md)|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|Add activeInstance by posting to the activeInstance collection.|
|[List appScope](../api/unifiedroleschedulebase-list-appscope.md)|[appScope](../resources/appscope.md) collection|Get the appScope resources from the appScope navigation property.|
|[Add appScope](../api/unifiedroleschedulebase-post-appscope.md)|[appScope](../resources/appscope.md)|Add appScope by posting to the appScope collection.|
|[List directoryScope](../api/unifiedroleschedulebase-list-directoryscope.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the directoryScope navigation property.|
|[Add directoryScope](../api/unifiedroleschedulebase-post-directoryscope.md)|[directoryObject](../resources/directoryobject.md)|Add directoryScope by posting to the directoryScope collection.|
|[List principal](../api/unifiedroleschedulebase-list-principal.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/unifiedroleschedulebase-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[List unifiedRoleDefinition](../api/unifiedroleschedulebase-list-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|Get the unifiedRoleDefinition resources from the roleDefinition navigation property.|
|[Add unifiedRoleDefinition](../api/unifiedroleschedulebase-post-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Add roleDefinition by posting to the roleDefinition collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|createdUsing|String|**TODO: Add Description**|
|directoryScopeId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|modifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|principalId|String|**TODO: Add Description**|
|roleDefinitionId|String|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activeInstance|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|**TODO: Add Description**|
|appScope|[appScope](../resources/appscope.md)|**TODO: Add Description**|
|directoryScope|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|
|principal|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleScheduleBase",
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

