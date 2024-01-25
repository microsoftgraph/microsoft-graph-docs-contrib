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

Represents an answer variant that can be used to change certain properties of a search answer based on country or platform.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|description|String|The answer variation description that is shown on the search results page.|
|displayName|String|The answer variation name that is displayed in search results.|
|languageTag|String|The country or region that can view this answer variation.|
|platform|microsoft.graph.devicePlatformType|The device or operating system that can view this answer variation. Possible values are: `android`, `androidForWork`, `ios`, `macOS`, `windowsPhone81`, `windowsPhone81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidASOP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`.|
|webUrl|String|The URL link for the answer variation. When users select this answer variation from the search results, they're directed to the specified URL.|

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
  "languageTag": "String",
  "platform": "String",
  "webUrl": "String"
}
```
