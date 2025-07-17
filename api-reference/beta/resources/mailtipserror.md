---
title: "mailTipsError resource type"
description: "An error that occurs during an action."
ms.localizationpriority: medium
author: "SuryaLashmiS"
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# mailTipsError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An error that occurs during an action.

## Properties
| Property	   | Type	|Description|
|:-----|:-----|:-----|
| message | String | The error message. |
| code | String | The error code. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.mailTipsError"
}-->

```json
{
  "message": "string",
  "code": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "mailTipsError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


