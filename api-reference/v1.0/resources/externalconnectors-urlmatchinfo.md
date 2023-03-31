---
title: "urlMatchInfo resource type"
description: Collects the settings for the pattern that a URL must follow to be processed by an instance of urlToItemResolverBase.
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# urlMatchInfo resource type

Namespace: microsoft.graph.externalConnectors

Collects the settings for the pattern that a URL must follow to be processed by an instance of [urlToItemResolverBase](../resources/externalconnectors-urltoitemresolverbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|baseUrls|String collection|A list of the URL prefixes that must match URLs to be processed by this URL-to-item-resolver.|
|urlPattern|String|A regular expression that will be matched towards the URL that is processed by this URL-to-item-resolver. The ECMAScript specification for regular expressions (ECMA-262) is used for the evaluation. The named groups defined by the regular expression will be used later to extract values from the URL.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.urlMatchInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.urlMatchInfo",
  "baseUrls": [
    "String"
  ],
  "urlPattern": "String"
}
```
