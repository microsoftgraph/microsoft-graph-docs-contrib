---
title: "protectionScopeState enum type"
description: "Indicates whether the computed data protection scope has changed since the last check (NotModified, Modified)."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# protectionScopeState enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates whether the set of applicable data protection policies and actions (the protection scope) has changed for the given context since the last time it was computed or checked. Returned in [processContentResponse](../resources/processcontentresponse.md).

## Members

| Member             | Value | Description                                                                          |
| :----------------- | :---- | :----------------------------------------------------------------------------------- |
| notModified        | 0     | The applicable protection scope (policies and actions) has not changed.              |
| modified           | 1     | The applicable protection scope has changed, requiring the client to update its state. |
| unknownFutureValue | 2     | Evolvable enumeration sentinel value. Do not use.                                    |

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
