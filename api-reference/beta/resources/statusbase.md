---
title: "statusBase resource type"
description: "statusBase resource"
localization_priority: Normal
author: "arvinh@microsoft.com"
ms.prod: "ms.prod"
doc_type: "resourcePageType"
---

# statusBase resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The statusBase resource type describes the status of the provisioning summary event. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|status|String| Possible values are: `success`, `failure`, `skipped`, `unknownFutureValue`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.statusBase",
  "baseType": null
}-->

```json
{
  "status": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "statusBase resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->