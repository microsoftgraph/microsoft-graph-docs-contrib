---
title: "itemBody resource type"
description: "Represents properties of the body of an item, such as a message, event or group post."
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
|contentType|bodyType|The type of the contentindicated by enum value of bodyType|

## JSON representation

Here is a JSON representation of the resource
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.itembody",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.itembody",
   "content": "string",
    "contentType": "string"
}
```
