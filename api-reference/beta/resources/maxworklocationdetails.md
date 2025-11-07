---
title: "maxWorkLocationDetails enum type"
description: "Controls the level of location detail that can be shared."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: enumPageType
ms.date: 12/20/2024
---

# maxWorkLocationDetails enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Controls the level of work location detail that can be shared with colleagues.

## Members

| Member | Value | Description |
|:-------|:------|:------------|
| unknown | 0 | The level of location details to share is unknown. |
| none | 1 | No location details are shared. |
| approximate | 2 | Only general work location type is shared, such as "Office" or "Remote." |
| specific | 3 | Detailed location information is shared, such as building and desk information. |
| unknownFutureValue | 4 | Evolvable enumeration sentinel value. Don't use. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-12-20 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "maxWorkLocationDetails enum",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->