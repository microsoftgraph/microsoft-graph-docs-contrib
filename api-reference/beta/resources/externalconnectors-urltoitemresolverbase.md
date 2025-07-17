---
title: "urlToItemResolverBase resource type"
description: "Defines the rules for resolving a given URL to a connector item."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# urlToItemResolverBase resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the rules for resolving a URL to the ID of an [externalItem](externalconnectors-externalitem.md).

This is the base type for the [itemIdResolver](externalconnectors-itemidresolver.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|priority|Int32|The priority which defines the sequence in which the urlToItemResolverBase instances are evaluated. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
