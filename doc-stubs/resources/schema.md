---
title: "schema resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# schema resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List schemata](../api/schema-list.md)|[schema](../resources/schema.md) collection|Get a list of the [schema](../resources/schema.md) objects and their properties.|
|[Create schema](../api/schema-create.md)|[schema](../resources/schema.md)|Create a new [schema](../resources/schema.md) object.|
|[Get schema](../api/schema-get.md)|[schema](../resources/schema.md)|Read the properties and relationships of a [schema](../resources/schema.md) object.|
|[Update schema](../api/schema-update.md)|[schema](../resources/schema.md)|Update the properties of a [schema](../resources/schema.md) object.|
|[Delete schema](../api/schema-delete.md)|None|Deletes a [schema](../resources/schema.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|baseType|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|properties|[property](../resources/property.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.schema",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.schema",
  "id": "String (identifier)",
  "baseType": "String",
  "properties": [
    {
      "@odata.type": "microsoft.graph.property"
    }
  ]
}
```

