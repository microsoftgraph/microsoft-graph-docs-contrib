---
title: "urlToItemResolverBase resource type"
description: "**Defines the rules for resolving a given URL to a connector item."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---
---

# urlToItemResolverBase resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the rules for resolving a given URL to a connector item.
This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|priority|Int32|Priority of each urlToItemResolverBase instance. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.urlToItemResolverBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.urlToItemResolverBase",
  "priority": "Integer"
}
```
