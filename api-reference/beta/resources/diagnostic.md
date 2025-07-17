---
title: "diagnostic resource type"
description: "Information about an error or warning for a OneNote operation."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onenote
author: "jewan-microsoft"
ms.date: 07/25/2024
---

# diagnostic resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Information about an error or warning for a OneNote operation.
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|message|String|The message describing the condition that triggered the error or warning.|
|url|String|The link to the documentation for this issue.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.diagnostic"
}-->

```json
{
  "message": "string",
  "url": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "diagnostic resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


