---
title: "documentSetVersionItem resource type"
description: "Represents an item which is a part of a captured document set version."
author: "swapnil1993"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: resourcePageType
---

# documentSetVersionItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an [item](../resources/listitem.md) which is a part of a captured [documentSetVersion](../resources/documentsetversion.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|itemId|String| The unique identifier for the item. |
|title|String| The title of the item. |
|versionId|String| The version ID of the item.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.documentSetVersionItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.documentSetVersionItem",
  "itemId": "String",
  "title": "String",
  "versionId": "String"
}
```

