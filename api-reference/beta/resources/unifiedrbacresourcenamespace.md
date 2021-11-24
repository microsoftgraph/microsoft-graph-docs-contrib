---
title: "unifiedRbacResourceNamespace resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# unifiedRbacResourceNamespace resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRbacResourceNamespaces](../api/unifiedrbacresourcenamespace-list.md)|[unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) collection|Get a list of the [unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) objects and their properties.|
|[Get unifiedRbacResourceNamespace](../api/unifiedrbacresourcenamespace-get.md)|[unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md)|Read the properties and relationships of an [unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) object.|
|[Update unifiedRbacResourceNamespace](../api/unifiedrbacresourcenamespace-update.md)|[unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md)|Update the properties of an [unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) object.|
|[Delete unifiedRbacResourceNamespace](../api/unifiedrbacresourcenamespace-delete.md)|None|Deletes an [unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) object.|
|[List resourceActions](../api/unifiedrbacresourcenamespace-list-resourceactions.md)|[unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) collection|Get the unifiedRbacResourceAction resources from the resourceActions navigation property.|
|[Create unifiedRbacResourceAction](../api/unifiedrbacresourcenamespace-post-resourceactions.md)|[unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md)|Create a new unifiedRbacResourceAction object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|resourceActions|[unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) collection|**TODO: Add Description**|

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
