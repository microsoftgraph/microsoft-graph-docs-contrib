---
title: "unifiedRbacResourceNamespace resource type"
description: "An object that represents a collection of related actions in a directory."
author: "abhijeetsinha"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# unifiedRbacResourceNamespace resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An object that represents a collection of related actions. Inherits from [entity](entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRbacResourceNamespaces](../api/rbacapplicationmultiple-list-resourcenamespaces.md)|[unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) collection|Get a list of the [unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) objects and their properties.|
|[Get unifiedRbacResourceNamespace](../api/unifiedrbacresourcenamespace-get.md)|[unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md)|Read the properties and relationships of an [unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the directory resource namespace, such as `microsoft.aad.b2c`. Required.|
|name|String|Name of the directory resource namespace. Typically, the same name as the **id** property, such as `microsoft.aad.b2c`. Required. Supports `$filter` (`eq`, `startsWith`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|resourceActions|[unifiedRbacResourceAction](unifiedrbacresourceaction.md) collection|Operations that an authorized principal are allowed to perform.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRbacResourceNamespace",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRbacResourceNamespace",
  "id": "String (identifier)",
  "name": "String"
}
```
