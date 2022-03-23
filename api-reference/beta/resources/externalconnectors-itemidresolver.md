---
title: "itemIdResolver resource type"
description: Defines the rules for resolving a given URL to a connector item's id."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# itemIdResolver resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the rules for resolving a given URL to a connector item's id.


Inherits from [urlToItemResolverBase](../resources/externalconnectors-urltoitemresolverbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|itemId|String|Pattern representing the item id.|
|priority|Int32|Priority of each urlToItemResolverBase instance. Inherited from [urlToItemResolverBase](../resources/externalconnectors-urltoitemresolverbase.md).|
|urlMatchInfo|[microsoft.graph.externalConnectors.urlMatchInfo](../resources/externalconnectors-urlmatchinfo.md)|Configurations to match and resolve URL.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.itemIdResolver"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.itemIdResolver",
  "priority": "Integer",
  "itemId": "String",
  "urlMatchInfo": {
    "@odata.type": "microsoft.graph.externalConnectors.urlMatchInfo"
  }
}
```
