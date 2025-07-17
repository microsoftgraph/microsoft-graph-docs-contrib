---
author: "daspek"
description: "Specifies in which order a content type appears in the selection UI."
title: "contentTypeOrder resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "sharepoint"
ms.date: 07/22/2024
---

# contentTypeOrder resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies in which order a [contentType](contenttype.md)  appears in the selection UI.

## Properties

| Property     | Type    | Description                                                                   |
| :----------- | :------ | :---------------------------------------------------------------------------- |
| default  | Boolean | Indicates whether this is the default content type.                               |
| position | Int32   | Specifies the position in which the content type appears in the selection UI.     |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- { "blockType": "resource", "@type": "microsoft.graph.contentTypeOrder", "@type.aka": "oneDrive.contentTypeOrderFacet" } -->

```json
{
  "default": "Boolean",
  "position": "Int32"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ContentTypeOrder",
  "suppressions": []
}
-->
