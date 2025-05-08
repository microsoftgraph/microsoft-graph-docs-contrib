---
title: "labelActionSource enum type"
description: "Specifies the source or trigger for a sensitivity label application (Manual, Automatic, Recommended, Default)."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# labelActionSource enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the origin or reason why a sensitivity label was applied to content. Used in the [sensitivityLabel](../resources/sensitivitylabel.md) resource.

## Members

| Member             | Value | Description                                                                   |
| :----------------- | :---- | :---------------------------------------------------------------------------- |
| manual             | 0     | The label was applied manually by the user.                                   |
| automatic          | 1     | The label was applied automatically based on policy conditions.                 |
| recommended        | 2     | The label was applied by the user after being recommended by policy conditions. |
| none               | 3     | The label was applied by default policy settings (often refers to 'default'). |
| unknownFutureValue | 4     | Evolvable enumeration sentinel value. Do not use.                             |

## JSON representation

The following JSON representation shows the enum type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.labelActionSource"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.labelActionSource",
  "members": [
    { "name": "manual", "value": 0 },
    { "name": "automatic", "value": 1 },
    { "name": "recommended", "value": 2 },
    { "name": "none", "value": 3 },
    { "name": "unknownFutureValue", "value": 4 }
 ]
}
```