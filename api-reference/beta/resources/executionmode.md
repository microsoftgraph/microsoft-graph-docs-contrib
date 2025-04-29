---
title: "executionMode enum type"
toc.title: "executionMode enum type (preview)"
description: "Specifies how a calling application should evaluate policies based on computed scopes (Inline or Offline)."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# executionMode enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies how a calling application should evaluate policies based on computed scopes (Inline or Offline).

Returned within [policyScopeBase](../resources/policyscopebase.md) derived types.

## Members

| Member             | Value | Description                                                                                                   |
| :----------------- | :---- | :------------------------------------------------------------------------------------------------------------ |
| evaluateInline     | 1     | The application should evaluate policies synchronously (inline) before allowing the user action to complete.   |
| evaluateOffline    | 2     | The application can allow the user action and evaluate policies asynchronously (offline), potentially applying remediation later. |
| unknownFutureValue | 3     | Evolvable enumeration sentinel value. Do not use.                                                             |

## JSON representation

The following JSON representation shows the enum type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.executionMode"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.executionMode",
  "members": [
    { "name": "evaluateInline", "value": 1 },
    { "name": "evaluateOffline", "value": 2 },
    { "name": "unknownFutureValue", "value": 3 }
 ]
}
```
