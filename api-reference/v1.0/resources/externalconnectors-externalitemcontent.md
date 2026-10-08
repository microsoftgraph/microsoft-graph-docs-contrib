---
title: "externalItemContent resource type"
description: "The content of an item indexed via a Microsoft Search connection."
author: "mecampos"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# externalItemContent resource type

Namespace: microsoft.graph.externalConnectors

The content of an [externalItem](externalconnectors-externalitem.md) indexed via a Microsoft Search [connection](externalconnectors-externalconnection.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|type|microsoft.graph.externalConnectors.externalItemContentType|The type of content in the value property. The possible values are: `text`, `html`, `unknownFutureValue`. These are the content types that the indexer supports, and not the file extension types allowed.|
|value|String|The content for the externalItem. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

