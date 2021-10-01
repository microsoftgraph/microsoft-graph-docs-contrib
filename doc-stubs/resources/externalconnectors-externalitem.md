---
title: "externalItem resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# externalItem resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/externalconnectors-entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externalItems](../api/externalconnectors-externalitem-list.md)|[microsoft.graph.externalConnectors.externalItem](../resources/externalconnectors-externalitem.md) collection|Get a list of the [externalItem](../resources/externalconnectors-externalitem.md) objects and their properties.|
|[Create externalItem](../api/externalconnectors-externalitem-create.md)|[microsoft.graph.externalConnectors.externalItem](../resources/externalconnectors-externalitem.md)|Create a new [externalItem](../resources/externalconnectors-externalitem.md) object.|
|[Get externalItem](../api/externalconnectors-externalitem-get.md)|[microsoft.graph.externalConnectors.externalItem](../resources/externalconnectors-externalitem.md)|Read the properties and relationships of an [externalItem](../resources/externalconnectors-externalitem.md) object.|
|[Update externalItem](../api/externalconnectors-externalitem-update.md)|[microsoft.graph.externalConnectors.externalItem](../resources/externalconnectors-externalitem.md)|Update the properties of an [externalItem](../resources/externalconnectors-externalitem.md) object.|
|[Delete externalItem](../api/externalconnectors-externalitem-delete.md)|None|Deletes an [externalItem](../resources/externalconnectors-externalitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|acl|[microsoft.graph.externalConnectors.acl](../resources/externalconnectors-acl.md) collection|**TODO: Add Description**|
|content|[microsoft.graph.externalConnectors.externalItemContent](../resources/externalconnectors-externalitemcontent.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/externalconnectors-entity.md).|
|previews|[microsoft.graph.externalConnectors.externalItemPreview](../resources/externalconnectors-externalitempreview.md) collection|**TODO: Add Description**|
|properties|[microsoft.graph.externalConnectors.properties](../resources/externalconnectors-properties.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.externalItem",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.externalItem",
  "id": "String (identifier)",
  "acl": [
    {
      "@odata.type": "microsoft.graph.externalConnectors.acl"
    }
  ],
  "content": {
    "@odata.type": "microsoft.graph.externalConnectors.externalItemContent"
  },
  "previews": [
    {
      "@odata.type": "microsoft.graph.externalConnectors.externalItemPreview"
    }
  ],
  "properties": {
    "@odata.type": "microsoft.graph.externalConnectors.properties"
  }
}
```

