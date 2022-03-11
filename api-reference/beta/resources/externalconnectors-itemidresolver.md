---
title: "itemIdResolver resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# itemIdResolver resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [urlToItemResolverBase](../resources/externalconnectors-urltoitemresolverbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|itemId|String|**TODO: Add Description**|
|priority|Int32|**TODO: Add Description** Inherited from [urlToItemResolverBase](../resources/externalconnectors-urltoitemresolverbase.md).|
|urlMatchInfo|[microsoft.graph.externalConnectors.urlMatchInfo](../resources/externalconnectors-urlmatchinfo.md)|**TODO: Add Description**|

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

