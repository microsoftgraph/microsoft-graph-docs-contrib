---
title: "schema resource type"
description: "The connection schema determines how your content added into a connection will be used in various Microsoft Graph experiences."
author: "mecampos"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# schema resource type

Namespace: microsoft.graph.externalConnectors

The [connection](externalconnectors-externalconnection.md) schema determines how your external content will be used in various Microsoft Graph experiences. Schema is a flat list of all the properties that you plan to add to the connection along with their attributes, labels, and aliases. You must register the schema before adding items into the connection.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create schema](../api/externalconnectors-schema-create.md)|[schema](../resources/externalconnectors-schema.md)|Create a new [schema](../resources/externalconnectors-schema.md) object.|
|[Get schema](../api/externalconnectors-schema-get.md)|[schema](../resources/externalconnectors-schema.md)|Read the properties and relationships of a [schema](../resources/externalconnectors-schema.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|baseType|String|Must be set to `microsoft.graph.externalConnector.externalItem`. Required.|
|properties|[property](../resources/externalconnectors-property.md) collection|The properties defined for the items in the connection. The minimum number of properties is one, the maximum is 128.|

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
  "baseType": "String",
  "properties": [
    {
      "name": "String",
      "type": "String",
    }
  ]
}
```

