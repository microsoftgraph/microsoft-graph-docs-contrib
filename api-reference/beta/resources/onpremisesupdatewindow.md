---
title: "updateWindow resource type"
description: "updateWindow resource type."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# updateWindow resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|updateWindowEndTime|TimeOfDay||
|updateWindowStartTime|TimeOfDay||

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.updateWindow"
}-->

```json
{
  "updateWindowEndTime": "String (timestamp)",
  "updateWindowStartTime": "String (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "updateWindow resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->