---
title: "visualProperties resource type"
description: "Represents the visual content, namely title and body, of a visual notification targeted to a user.  "
ms.localizationpriority: medium
author: "merzink"
ms.subservice: "notifications"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# visualProperties resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the visual content, namely title and body, of a visual notification targeted to a user. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|title|String|The title of a visual user notification. This field is required for visual notification payloads. |
|body|String|The body of a visual user notification. Body is optional.|


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.visualProperties",
  "baseType": null
}-->

```json
{
  "title": "String",
  "body": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "visualProperties resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

