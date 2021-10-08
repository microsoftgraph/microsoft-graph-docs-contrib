---
title: "defaultUserRoleOverride resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# defaultUserRoleOverride resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List defaultUserRoleOverrides](../api/defaultuserroleoverride-list.md)|[defaultUserRoleOverride](../resources/defaultuserroleoverride.md) collection|Get a list of the [defaultUserRoleOverride](../resources/defaultuserroleoverride.md) objects and their properties.|
|[Create defaultUserRoleOverride](../api/defaultuserroleoverride-create.md)|[defaultUserRoleOverride](../resources/defaultuserroleoverride.md)|Create a new [defaultUserRoleOverride](../resources/defaultuserroleoverride.md) object.|
|[Get defaultUserRoleOverride](../api/defaultuserroleoverride-get.md)|[defaultUserRoleOverride](../resources/defaultuserroleoverride.md)|Read the properties and relationships of a [defaultUserRoleOverride](../resources/defaultuserroleoverride.md) object.|
|[Update defaultUserRoleOverride](../api/defaultuserroleoverride-update.md)|[defaultUserRoleOverride](../resources/defaultuserroleoverride.md)|Update the properties of a [defaultUserRoleOverride](../resources/defaultuserroleoverride.md) object.|
|[Delete defaultUserRoleOverride](../api/defaultuserroleoverride-delete.md)|None|Deletes a [defaultUserRoleOverride](../resources/defaultuserroleoverride.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|isDefault|Boolean|**TODO: Add Description**|
|rolePermissions|[unifiedRolePermission](../resources/unifiedrolepermission.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.defaultUserRoleOverride",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.defaultUserRoleOverride",
  "id": "String (identifier)",
  "isDefault": "Boolean",
  "rolePermissions": [
    {
      "@odata.type": "microsoft.graph.unifiedRolePermission"
    }
  ]
}
```

