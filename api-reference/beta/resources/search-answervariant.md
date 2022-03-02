---
title: "answerVariant resource type"
description: "An answer variant can be used to change certain properties of a search answer based on country or platform."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# answerVariant resource type

Namespace: microsoft.graph.search

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An answer variant can be used to change certain fields of a search answer based on country or platform.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Answer variation description shown on search results page.|
|displayName|String|Answer variation name displayed in search results.|
|webUrl|String|Answer variation URL link. When users click this answer variation in search results, they will go to this URL.|
|languageTags|String collection|List of countries or regions able to view this search answer.|
|platforms|microsoft.graph.platform collection|List of devices and operating systems able to view this answer variation. Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.search.answerVariant"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.search.answerVariant",
  "displayName": "String",
  "webUrl": "String",
  "description": "String",
  "languageTags": ["String"],
  "platforms": ["String"]
}
```

