---
title: "applicationMode enum type"
description: "Specifies how a sensitivity label is intended to be applied or suggested (Manual, Automatic, Recommended)."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# applicationMode enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates how a sensitivity label was applied or how it should be suggested to the user. Used in [sensitivityLabel](../resources/sensitivitylabel.md), [matchingLabel](../resources/matchinglabel.md), and [currentLabel](../resources/currentlabel.md).

## Members

| Member      | Value | Description                                                                   |
| :---------- | :---- | :---------------------------------------------------------------------------- |
| manual      | 0     | The label was or should be applied manually by the user.                      |
| automatic   | 1     | The label was or should be applied automatically based on policy conditions.    |
| recommended | 2     | The label was or should be recommended to the user based on policy conditions. |

## JSON representation

The following JSON representation shows the enum type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationMode"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationMode",
  "members": [
    { "name": "manual", "value": 0 },
    { "name": "automatic", "value": 1 },
    { "name": "recommended", "value": 2 }
 ]
}
```