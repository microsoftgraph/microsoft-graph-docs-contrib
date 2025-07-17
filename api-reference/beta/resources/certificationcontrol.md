---
title: "certificationControl resource type"
description: "Contains compliance certification data associated with secure score control."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "security"
author: "preetikr"
ms.date: 07/22/2024
---

# certificationControl resource type

Namespace: microsoft.graph

Contains compliance certification data associated with secure score control.

## Properties

|Property |Type |Description |
|:--|:--|:--|
|name | string | Certification control name. |
|url | string | URL for the Microsoft Service Trust Portal. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.certificationControl"
}-->

```json
{
  "name": "String",
  "url": "Collection(microsoft.graph.certificationControl)"
}
```


<!-- {
  "type": "#page.annotation",
  "description": "certificationControl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


