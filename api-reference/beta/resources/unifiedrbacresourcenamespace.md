---
title: "unifiedRbacResourceNamespace resource type"
description: "Represents the namespace of the area to which the role permission belongs."
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
toc.title: Resource namespace
ms.date: 06/12/2024
---

# unifiedRbacResourceNamespace resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the namespace of the area or service such as Microsoft Entra ID, Intune, and Exchange that defines role permissions.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/rbacapplicationmultiple-list-resourcenamespaces.md)|[unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) collection|Get a list of the [unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) objects and their properties.|
|[Get](../api/unifiedrbacresourcenamespace-get.md)|[unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md)|Read the properties and relationships of an [unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the resource namespace that defines permissions, such as `microsoft.aad.b2c`. Required.|
|name|String|Name of the resource namespace. Typically, the same name as the **id** property, such as `microsoft.aad.b2c`. Required. Supports `$filter` (`eq`, `startsWith`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|resourceActions|[unifiedRbacResourceAction](unifiedrbacresourceaction.md) collection|Operations that an authorized principal is allowed to perform.|

## JSON representation
The following JSON representation shows the resource type.
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
