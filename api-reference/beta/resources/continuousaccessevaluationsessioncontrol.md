---
title: "continuousAccessEvaluationSessionControl resource type"
description: "Session control to control continuous access evaluation settings."
author: "lujiangfeng666"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# continuousAccessEvaluationSessionControl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Session control to control continuous access evaluation settings.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|mode|continuousAccessEvaluationMode| Specifies continuous access evaluation settings. The possible values are: `strictEnforcement`, `disabled`, `unknownFutureValue`.|

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
