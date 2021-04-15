---
title: "innerErrorDetail resource type"
description: "An inner error contained in an errorDetail object."
localization_priority: Normal
author: "snlraju-msft"
ms.author: mecampos
ms.prod: ""
doc_type: "resourcePageType"
---

# innerErrorDetail resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An inner error contained in an [errorDetail](errordetail.md) object.

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Properties

| Property | Type   | Description                                  |
|:---------|:-------|:---------------------------------------------|
| message  | string | The human-readable error message. Read-only. |
| source   | string | The source of the error. Read-only.          |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.innerErrorDetail",
  "baseType": null
}-->

```json
{
  "message": "string",
  "source": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "innerErrorDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


