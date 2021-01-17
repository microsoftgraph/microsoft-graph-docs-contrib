---
title: "unifiedRoleScheduleInstanceBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# unifiedRoleScheduleInstanceBase resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleScheduleInstanceBases](../api/unifiedrolescheduleinstancebase-list.md)|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) collection|Get a list of the [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) objects and their properties.|
|[Create unifiedRoleScheduleInstanceBase](../api/unifiedrolescheduleinstancebase-create.md)|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|Create a new [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) object.|
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

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|**TODO: Add Description**|
|directoryScopeId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|principalId|String|**TODO: Add Description**|
|roleDefinitionId|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appScope|[appScope](../resources/appscope.md)|**TODO: Add Description**|
|directoryScope|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|
|principal|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|**TODO: Add Description**|

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

