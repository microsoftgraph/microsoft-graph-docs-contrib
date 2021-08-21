---
title: "searchSettings resource type"
description: "Search settings are where all configurable settings relating to search over connector content can be found."
author: "emzho"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# searchSettings resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Search settings are where all configurable settings relating to search over connector content can be found, such as definition of display templates for search results i.e. searchResultTemplates.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|searchResultTemplates|[microsoft.graph.externalConnectors.displayTemplate](../resources/externalconnectors-displaytemplate.md) collection|A search result template enables the developer to define the appearance of the content and configure conditions that dictate when the template should be displayed on enabled search engine results pages.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.searchSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.searchSettings",
  "searchResultTemplates": [
    {
      "@odata.type": "microsoft.graph.externalConnectors.displayTemplate"
    }
  ]
}
```

