---
title: "plannerPropertyRule resource type"
description: "An abstract base type of all entity rule definitions for Microsoft Planner."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# plannerPropertyRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract base type of all entity rule definitions for Microsoft Planner. 

Base type of [plannerTaskPropertyRule](plannertaskpropertyrule.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|ruleKind|plannerRuleKind|Identifies which type of property rules is represented by this instance. The possible values are: `taskRule`, `bucketRule`, `planRule`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerPropertyRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerPropertyRule",
  "ruleKind": "String"
}
```
