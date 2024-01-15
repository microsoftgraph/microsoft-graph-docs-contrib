---
title: "answerVariant resource type"
description: "Represents an answer variant that can be used to change certain properties of a search answer based on country or platform."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# answerVariant resource type

Namespace: microsoft.graph.search

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an answer variant that can be used to change certain properties of a search answer based on country or platform.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|description|String|The answer variation description that is shown on the search results page.|
|displayName|String|The answer variation name that is displayed in search results.|
|webUrl|String|The URL link for the answer variation. When users select this answer variation from the search results, they are directed to the specified URL.|
|languageTags|String collection|The list of countries or regions that are able to view this search answer.|
|platforms|microsoft.graph.platform collection|The list of devices and operating systems that are able to view this answer variation. Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.search.answerVariant"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.search.answerVariant",
  "description": "String",
  "displayName": "String",
  "languageTags": ["String"],
  "platforms": ["String"],
  "webUrl": "String"
}
```
