---
title: "resultTemplate resource type"
description: "Represents a dictionary of resultTemplateIds and associated values, which include the name and JSON schema of the result templates."
ms.localizationpriority: medium
author: "cristianv-ms"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 08/08/2024
---

# resultTemplate resource type

Namespace: microsoft.graph

Represents a dictionary of **resultTemplateIds** and associated values, which includes the name and JSON schema of the result templates.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|body|Json|JSON schema of the result template.|
|displayName|String|Name of the result template.|
|key|String|ID of a result template. The **key** property must map to a **resultTemplateId** in the [searchHit](searchhit.md) collection.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.resultTemplate",
  "baseType": null
}-->


```json
{
    "displayName": "String",
     "body":{
         "@odata.type":"microsoft.graph.Json"
      }
}
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "resultTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


