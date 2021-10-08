---
title: "unifiedRoleDefinition resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# unifiedRoleDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleDefinitions](../api/unifiedroledefinition-list.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|Get a list of the [unifiedRoleDefinition](../resources/unifiedroledefinition.md) objects and their properties.|
|[Create unifiedRoleDefinition](../api/unifiedroledefinition-create.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Create a new [unifiedRoleDefinition](../resources/unifiedroledefinition.md) object.|
|[Get unifiedRoleDefinition](../api/unifiedroledefinition-get.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Read the properties and relationships of an [unifiedRoleDefinition](../resources/unifiedroledefinition.md) object.|
|[Update unifiedRoleDefinition](../api/unifiedroledefinition-update.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Update the properties of an [unifiedRoleDefinition](../resources/unifiedroledefinition.md) object.|
|[Delete unifiedRoleDefinition](../api/unifiedroledefinition-delete.md)|None|Deletes an [unifiedRoleDefinition](../resources/unifiedroledefinition.md) object.|
|[List inheritsPermissionsFrom](../api/unifiedroledefinition-list-inheritspermissionsfrom.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|Get the unifiedRoleDefinition resources from the inheritsPermissionsFrom navigation property.|
|[Create unifiedRoleDefinition](../api/unifiedroledefinition-post-inheritspermissionsfrom.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Create a new unifiedRoleDefinition object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|isBuiltIn|Boolean|**TODO: Add Description**|
|isEnabled|Boolean|**TODO: Add Description**|
|resourceScopes|String collection|**TODO: Add Description**|
|rolePermissions|[unifiedRolePermission](../resources/unifiedrolepermission.md) collection|**TODO: Add Description**|
|templateId|String|**TODO: Add Description**|
|version|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|inheritsPermissionsFrom|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleDefinition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleDefinition",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isBuiltIn": "Boolean",
  "isEnabled": "Boolean",
  "resourceScopes": [
    "String"
  ],
  "rolePermissions": [
    {
      "@odata.type": "microsoft.graph.unifiedRolePermission"
    }
  ],
  "templateId": "String",
  "version": "String"
}
```

