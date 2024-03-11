---
title: "itemBody resource type"
description: "Represents a container for holding content and its type."
ms.localizationpriority: medium
author: "skandula"
ms.service: "windows-10"
doc_type: resourcePageType
---

# itemBody resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for holding content and its type.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|content|String|The content of the item.|
|contentType|microsoft.graph.bodyType|The type of the content indicated by the enum value of **bodyType**. Possible values are: `text`, `html`.|

## Relationships

None. 

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.itemBody",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.itemBody",
  "content": "String",
  "contentType": "String"
}
```
