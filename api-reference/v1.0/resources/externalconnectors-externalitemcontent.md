---
title: "externalItemContent resource type"
description: "The content of an item indexed via a Microsoft Search connection."
author: "mecampos"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# externalItemContent resource type

Namespace: microsoft.graph.externalConnectors

The content of an [externalItem](externalconnectors-externalitem.md) indexed via a Microsoft Search [connection](externalconnectors-externalconnection.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|type|microsoft.graph.externalConnectors.externalItemContentType|The type of content in the value property. Possible values are: `text`, `html`, `unknownFutureValue`. These are the content types that the indexer supports, and not the file extension types allowed.|
|value|String|The content for the externalItem. Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.externalItemContent"
}
-->
``` json
{
  "type": "String",
  "value": "String"
}
```

