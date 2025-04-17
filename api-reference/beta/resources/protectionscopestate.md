---
title: "protectionScopeState enum type"
toc.title: "protectionScopeState enum type (preview)"
description: "Indicates the computed data protection scope changed since the last check (NotModified, Modified)."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# protectionScopeState enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the set of applicable data protection policies and actions (the protection scope) changed for the given context since the last time it was computed or checked. Returned in [processContentResponse](../resources/processcontentresponse.md).

## Members

| Member             | Value | Description                                                                          |
| :----------------- | :---- | :----------------------------------------------------------------------------------- |
| notModified        | 0     | The applicable protection scope (policies and actions) hasn't changed.              |
| modified           | 1     | The applicable protection scope changed, requiring the client to update its state. |
| unknownFutureValue | 2     | Evolvable enumeration sentinel value. Don't use.                                    |

## JSON representation

The following JSON representation shows the enum type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.protectionScopeState"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.protectionScopeState",
  "members": [
    { "name": "notModified", "value": 0 },
    { "name": "modified", "value": 1 },
    { "name": "unknownFutureValue", "value": 2 }
 ]
}
```
