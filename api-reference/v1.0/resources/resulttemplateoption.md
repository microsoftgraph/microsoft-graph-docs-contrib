---
title: "resultTemplateOption resource type"
description: "Provides the search result template options to render search results from connectors."
ms.localizationpriority: medium
author: "cristianv-ms"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 08/08/2024
---

# resultTemplateOption resource type

Namespace: microsoft.graph

Provides the search result template options to render search results from connectors.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|enableResultTemplate|Boolean|Indicates whether search display layouts are enabled. If enabled, the user will get the result template to render the search results content in the **resultTemplates** property of the [response](/graph/api/resources/searchresponse). The result template is based on [Adaptive Cards](https://adaptivecards.io/). Optional. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.resultTemplateOption",
  "baseType": null
}-->

```json
 {
    "enableResultTemplate": "Boolean"
 }
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "resultTemplateOption resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
