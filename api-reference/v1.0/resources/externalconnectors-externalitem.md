---
title: "externalItem resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# externalItem resource type

Namespace: microsoft.graph.externalConnectors



**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externalItems](../api/externalitem-list.md)|[externalItem](../resources/externalconnectors-externalitem.md) collection|Get a list of the [externalItem](../resources/externalitem.md) objects and their properties.|
|[Create externalItem](../api/externalconnectors-externalitem-create.md)|[externalItem](../resources/externalconnectors-externalitem.md)|Create a new [externalItem](../resources/externalconnectors-externalitem.md) object.|
|[Get externalItem](../api/externalconnectors-externalitem-get.md)|[externalItem](../resources/externalconnectors-externalitem.md)|Read the properties and relationships of an [externalItem](../resources/externalconnectors-externalitem.md) object.|
|[Update externalItem](../api/externalconnectors-externalitem-update.md)|[externalItem](../resources/externalconnectors-externalitem.md)|Update the properties of an [externalItem](../resources/externalconnectors-externalitem.md) object.|
|[Delete externalItem](../api/externalconnectors-externalitem-delete.md)|None|Deletes an [externalItem](../resources/externalconnectors-externalitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|acl|[acl](../resources/externalconnectors-acl.md) collection|**TODO: Add Description**|
|content|[externalItemContent](../resources/externalconnectors-externalitemcontent.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|properties|[properties](../resources/externalconnectors-properties.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.externalItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.externalItem",
  "id": "String (identifier)",
  "properties": {
    "@odata.type": "microsoft.graph.externalConnectors.properties"
  },
  "content": {
    "@odata.type": "microsoft.graph.externalConnectors.externalItemContent"
  },
  "acl": [
    {
      "@odata.type": "microsoft.graph.externalConnectors.acl"
    }
  ]
}
```

