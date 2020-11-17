---
title: "teamFunSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamFunSettings resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowCustomMemes|Boolean|**TODO: Add Description**|
|allowGiphy|Boolean|**TODO: Add Description**|
|allowStickersAndMemes|Boolean|**TODO: Add Description**|
|giphyContentRating|giphyRatingType|**TODO: Add Description**. Possible values are: `strict`, `moderate`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamFunSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamFunSettings",
  "allowGiphy": "Boolean",
  "giphyContentRating": "String",
  "allowStickersAndMemes": "Boolean",
  "allowCustomMemes": "Boolean"
}
```

