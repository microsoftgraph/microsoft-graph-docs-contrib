---
title: "unifiedRoleAssignment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# unifiedRoleAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleAssignments](../api/unifiedroleassignment-list.md)|[unifiedRoleAssignment](../resources/unifiedroleassignment.md) collection|Get a list of the [unifiedRoleAssignment](../resources/unifiedroleassignment.md) objects and their properties.|
|[Create unifiedRoleAssignment](../api/unifiedroleassignment-create.md)|[unifiedRoleAssignment](../resources/unifiedroleassignment.md)|Create a new [unifiedRoleAssignment](../resources/unifiedroleassignment.md) object.|
|[Get unifiedRoleAssignment](../api/unifiedroleassignment-get.md)|[unifiedRoleAssignment](../resources/unifiedroleassignment.md)|Read the properties and relationships of an [unifiedRoleAssignment](../resources/unifiedroleassignment.md) object.|
|[Update unifiedRoleAssignment](../api/unifiedroleassignment-update.md)|[unifiedRoleAssignment](../resources/unifiedroleassignment.md)|Update the properties of an [unifiedRoleAssignment](../resources/unifiedroleassignment.md) object.|
|[Delete unifiedRoleAssignment](../api/unifiedroleassignment-delete.md)|None|Deletes an [unifiedRoleAssignment](../resources/unifiedroleassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|**TODO: Add Description**|
|condition|String|**TODO: Add Description**|
|directoryScopeId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|principalId|String|**TODO: Add Description**|
|principalOrganizationId|String|**TODO: Add Description**|
|resourceScope|String|**TODO: Add Description**|
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
  "@odata.type": "microsoft.graph.unifiedRoleAssignment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleAssignment",
  "id": "String (identifier)",
  "appScopeId": "String",
  "condition": "String",
  "directoryScopeId": "String",
  "principalId": "String",
  "principalOrganizationId": "String",
  "resourceScope": "String",
  "roleDefinitionId": "String"
}
```

