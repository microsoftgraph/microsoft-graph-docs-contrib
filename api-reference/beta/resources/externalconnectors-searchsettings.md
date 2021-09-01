---
title: "searchSettings resource type"
description: "Search settings are where all configurable settings relating to search over connector content can be found."
author: "emzho"
ms.localizationpriority: normal
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
  "searchResultTemplates": [
    {
      "id": "String (identifier)",
      "rules": [
        {
          "property": "itemTitle",
          "operation": "contains",
          "valuesJoinedBy": "or",
          "values": [
              "contoso",
              "smart"
          ]
        }
      ],
      "layout": "{\r\n\"type\": \"AdaptiveCard\",\r\n\"version\": \"1.0\",\r\n\"body\": [\r\n{\r\n\"type\": \"TextBlock\",\r\n\"text\": \"A contoso ticket.\"\r\n}\r\n] \r\n}",
      "priority": 0
    },
        {
      "id": "String (identifier)",
      "rules": [
        {
          "property": "itemDescription",
          "operation": "contains",
          "valuesJoinedBy": "and",
          "values": [
              "contoso",
              "ticket"
          ]
        }
      ],
      "layout": "{\r\n\"type\": \"AdaptiveCard\",\r\n\"version\": \"1.0\",\r\n\"body\": [\r\n{\r\n\"type\": \"TextBlock\",\r\n\"text\": \"A contoso ticket.\"\r\n}\r\n] \r\n}",
      "priority": 1
    }
  ]
}
```

