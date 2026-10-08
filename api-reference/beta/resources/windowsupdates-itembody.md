---
title: "itemBody resource type"
description: "Represents a container for holding content and its type."
ms.localizationpriority: medium
author: "andredm7"
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# itemBody resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for holding content and its type.

## Properties

| Property    | Type                                    | Description                                                                                                                     |
|:------------|:----------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------|
| content     | String                                  | The content of the item.                                                                                                        |
| contentType | microsoft.graph.windowsUpdates.bodyType | The type of the content indicated by the enum value of **bodyType**. The possible values are: `text`, `html`, `unknownFutureValue`. |

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
