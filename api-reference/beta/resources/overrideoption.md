---
title: "overrideOption enum type"
description: "Flags enumeration that defines the options available for a user to override a Data Loss Prevention (DLP) policy restriction."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: low
ms.subservice: "security"
doc_type: enumPageType
---

# overrideOption enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Flags enumeration that defines the options available for a user to override a Data Loss Prevention (DLP) policy restriction.

Typically presented alongside a policy tip or notification. Used in [notifyUserAction](../resources/notifyuseraction.md).

## Members

| Member                    | Value | Description                                                          |
| :------------------------ | :---- | :------------------------------------------------------------------- |
| notAllowed                | 0     | Overrides are not permitted.                                         |
| allowFalsePositiveOverride| 1     | Allow override if the user reports the match as a false positive.    |
| allowWithJustification    | 2     | Allow override if the user provides a business justification.        |
| allowWithoutJustification | 4     | Allow override without requiring any justification (simple override). |
| unknownFutureValue        | 8     | Evolvable enumeration sentinel value. Do not use.                    |
| allowWithAcknowledgement  | 16    | Allow override after the user acknowledges a message.                |

## JSON representation

The following JSON representation shows the enum type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.overrideOption",
  "isFlags": true
}-->
``` json
{
  "@odata.type": "#microsoft.graph.overrideOption",
  "isFlags": true,
  "members": [
    { "name": "notAllowed", "value": 0 },
    { "name": "allowFalsePositiveOverride", "value": 1 },
    { "name": "allowWithJustification", "value": 2 },
    { "name": "allowWithoutJustification", "value": 4 },
    { "name": "unknownFutureValue", "value": 8 },
    { "name": "allowWithAcknowledgement", "value": 16 }
 ]
}
```
