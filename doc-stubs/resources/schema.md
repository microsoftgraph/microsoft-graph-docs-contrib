---
title: "schema resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# schema resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List schema](../api/externalconnection-list-schema.md)|[schema](../resources/schema.md) collection|Get the schema resources from the schema navigation property.|
|[Create schema](../api/externalconnection-post-schema.md)|[schema](../resources/schema.md)|Create a new schema object.|
|[Update schema](../api/externalconnection-update-schema.md)|[schema](../resources/schema.md)|Update the properties of a schema object.|
|[Get schema](../api/externalconnection-get-schema.md)|[schema](../resources/schema.md)|Read the properties and relationships of a [schema](../resources/schema.md) object.|
|[Delete schema](../api/externalconnection-delete-schema.md)|None|Delete a [schema](../resources/schema.md) object.|
|[List schemata](../api/schema-list.md)|[schema](../resources/schema.md) collection|Get a list of the [schema](../resources/schema.md) objects and their properties.|
|[Create schema](../api/schema-create.md)|[schema](../resources/schema.md)|Create a new [schema](../resources/schema.md) object.|
|[Get schema](../api/schema-get.md)|[schema](../resources/schema.md)|Read the properties and relationships of a [schema](../resources/schema.md) object.|
|[Update schema](../api/schema-update.md)|[schema](../resources/schema.md)|Update the properties of a [schema](../resources/schema.md) object.|
|[Delete schema](../api/schema-delete.md)|None|Deletes a [schema](../resources/schema.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|baseType|String|**TODO: Add Description**|
|properties|[property](../resources/property.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.schema",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.schema",
  "baseType": "String",
  "properties": [
    {
      "@odata.type": "microsoft.graph.property"
    }
  ]
}
```

