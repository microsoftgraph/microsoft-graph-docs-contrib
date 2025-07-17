---
title: "documentSetVersionItem resource type"
description: "Represents an item that is a part of a captured document set version."
author: "swapnil1993"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# documentSetVersionItem resource type

Namespace: microsoft.graph

Represents an [item](../resources/listitem.md) that is a part of a captured [documentSetVersion](../resources/documentsetversion.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|itemId|String| The unique identifier for the item. |
|title|String| The title of the item. |
|versionId|String| The version ID of the item.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

