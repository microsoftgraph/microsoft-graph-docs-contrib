---
title: "itemIdResolver resource type"
description: Defines the rules for resolving a given URL to a connector item's ID."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# itemIdResolver resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the rules for resolving a URL to the ID of an [externalItem](externalconnectors-externalitem.md).

Inherits from [urlToItemResolverBase](../resources/externalconnectors-urltoitemresolverbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|itemId|String|Pattern that specifies how to form the ID of the external item that the URL represents. The named groups from the regular expression in **urlPattern** within the [urlMatchInfo](../resources/externalconnectors-urlmatchinfo.md) can be referenced by inserting the group name inside curly brackets.|
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
