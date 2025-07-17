---
title: "itemIdResolver resource type"
description: Defines the rules for resolving a given URL to a connector item's ID."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
ms.date: 07/22/2024
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
The following JSON representation shows the resource type.
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
