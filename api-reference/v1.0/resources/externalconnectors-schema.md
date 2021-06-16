---
title: "schema resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# schema resource type

Namespace: microsoft.graph.externalConnectors



**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List schemata](../api/schema-list.md)|[schema](../resources/externalconnectors-schema.md) collection|Get a list of the [schema](../resources/schema.md) objects and their properties.|
|[Create schema](../api/externalconnectors-schema-create.md)|[schema](../resources/externalconnectors-schema.md)|Create a new [schema](../resources/externalconnectors-schema.md) object.|
|[Get schema](../api/externalconnectors-schema-get.md)|[schema](../resources/externalconnectors-schema.md)|Read the properties and relationships of a [schema](../resources/externalconnectors-schema.md) object.|
|[Update schema](../api/externalconnectors-schema-update.md)|[schema](../resources/externalconnectors-schema.md)|Update the properties of a [schema](../resources/externalconnectors-schema.md) object.|
|[Delete schema](../api/externalconnectors-schema-delete.md)|None|Deletes a [schema](../resources/externalconnectors-schema.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|baseType|String|**TODO: Add Description**|
|properties|[property](../resources/externalconnectors-property.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.schema",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.schema",
  "baseType": "String",
  "properties": [
    {
      "@odata.type": "microsoft.graph.externalConnectors.property"
    }
  ]
}
```

