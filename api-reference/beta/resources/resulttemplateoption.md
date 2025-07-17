---
title: "resultTemplateOption resource type"
description: "Provides the search display layouts options for render connectors search results."
ms.localizationpriority: medium
author: "cristianv-ms"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 07/25/2024
---

# resultTemplateOption resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the search result templates options for render connectors search results.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|enableResultTemplate|Boolean|Indicates whether search display layouts are enabled. If enabled, the user will get the result template to render the search results content in the **resultTemplates** property of the [response](/graph/api/resources/searchresponse?view=graph-rest-beta&preserve-view=true). The result template is based on [Adaptive Cards](https://adaptivecards.io/). This property is optional.|

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
    "enableResultTemplate": true
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
