---
title: "attributeSet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# attributeSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List attributeSets](../api/attributeset-list.md)|[attributeSet](../resources/attributeset.md) collection|Get a list of the [attributeSet](../resources/attributeset.md) objects and their properties.|
|[Create attributeSet](../api/attributeset-create.md)|[attributeSet](../resources/attributeset.md)|Create a new [attributeSet](../resources/attributeset.md) object.|
|[Get attributeSet](../api/attributeset-get.md)|[attributeSet](../resources/attributeset.md)|Read the properties and relationships of an [attributeSet](../resources/attributeset.md) object.|
|[Update attributeSet](../api/attributeset-update.md)|[attributeSet](../resources/attributeset.md)|Update the properties of an [attributeSet](../resources/attributeset.md) object.|
|[Delete attributeSet](../api/attributeset-delete.md)|None|Deletes an [attributeSet](../resources/attributeset.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|maxAttributesPerSet|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.attributeSet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attributeSet",
  "description": "String",
  "id": "String (identifier)",
  "maxAttributesPerSet": "Integer"
}
```

