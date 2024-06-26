---
title: "continuousAccessEvaluationSessionControl resource type"
description: "Session control to control continuous access evaluation settings."
author: "lujiangfeng666"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# continuousAccessEvaluationSessionControl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Session control to control continuous access evaluation settings.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|mode|continuousAccessEvaluationMode| Specifies continuous access evaluation settings. The possible values are: `strictEnforcement`, `disabled`, `unknownFutureValue`, `strictLocation`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `strictLocation`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.continuousAccessEvaluationSessionControl"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.continuousAccessEvaluationSessionControl",
  "mode": "String"
}
```
