---
title: "urlToItemResolverBase resource type"
description: "Defines the rules for resolving a given URL to a connector item."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# urlToItemResolverBase resource type

Namespace: microsoft.graph.externalConnectors

Defines the rules for resolving a URL to the ID of an [externalItem](externalconnectors-externalitem.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|priority|Int32|The priority which defines the sequence in which the urlToItemResolverBase instances are evaluated. |

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

## See also

Types that inherit from the [urlToItemResolverBase](externalconnectors-urlToItemResolverBase.md) abstract base type.
- [itemIdResolver](externalconnectors-itemidresolver.md)