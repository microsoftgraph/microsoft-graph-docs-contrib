---
title: "coachmarkLocation detail"
description: "Represents details about a coachmark location."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# coachmarkLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about a coachmark location.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|length|Int32|Length of coachmark.|
|offset|Int32|Offset of coachmark.|
|type|coachmarkLocationType|Type of coachmark location. The possible values are: `unknown`, `fromEmail`, `subject`, `externalTag`, `displayName`, `messageBody`, `unknownFutureValue`.|

### coachmarkLocationType values

|Member|Description |
|:---|:---|
|unknown| Coachmark location type as unknown. |
|fromEmail| Coachmark from email address. |
|subject| Coachmark from email subject. |
|externalTag| Coachmark from external tag. |
|displayName| Coachmark from display name. |
|messageBody| Coachmark from email body. |
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.coachmarkLocation"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.coachmarkLocation",
    "offset": "Int32",
    "length": "Int32",
    "type": "String"
}
```
