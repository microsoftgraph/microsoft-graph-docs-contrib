---
title: "timeOffDetails resource type"
description: "Represents details about a time-off entry."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 12/10/2025
---

# timeOffDetails resource type

Namespace: microsoft.graph

Represents details about a time-off entry.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| isAllDay | Boolean | Indicates whether the time-off entry spans the entire day. |
| subject | String | The subject or reason for the time-off entry. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.timeOffDetails"
} -->

```json
{
  "isAllDay": "Boolean",
  "subject": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-12-20 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeOffDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
