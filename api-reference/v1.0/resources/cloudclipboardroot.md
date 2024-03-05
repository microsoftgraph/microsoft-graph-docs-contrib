---
title: "cloudClipboardRoot resource type"
description: "Represents the information and properties of a cloudClipboardRoot"
author: "yuechen7"
ms.localizationpriority: medium
ms.prod: "project-rome"
doc_type: resourcePageType
---

# cloudClipboardRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of a cloudClipboardRoot and it's an entry point for [cloudClipboardItem](../resources/cloudclipboarditem.md) objects.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List items](../api/cloudclipboardroot-list-items.md)|[cloudClipboardItem](../resources/cloudclipboarditem.md) collection|Get the cloudClipboardItem resources from the items navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|items|[cloudClipboardItem](../resources/cloudclipboarditem.md) collection|Get a list of the cloudClipboard items and their properties.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudClipboardRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudClipboardRoot"
}
```

