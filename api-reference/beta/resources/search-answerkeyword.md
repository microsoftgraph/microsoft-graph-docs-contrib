---
title: "answerKeyword resource type"
description: "Answer keywords allow users to define words and phrases that will trigger an administrative search answer to appear in search results."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# answerKeyword resource type

Namespace: microsoft.graph.search

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An answer keyword is used to configure words and phrases that will trigger an administrative search answer to appear in search results.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|keywords|String collection|A collection of keywords used to trigger the search answer.|
|matchSimilarKeywords|Boolean|If `true`, indicates that the search term contains similar words to the keywords that should trigger the search answer.|
|reservedKeywords|String collection|Unique keywords that will guarantee the search answer is triggered.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.search.answerKeyword"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.search.answerKeyword",
  "keywords": [
    "String"
  ],
  "reservedKeywords": [
    "String"
  ],
  "matchSimilarKeywords": "Boolean"
}
```

