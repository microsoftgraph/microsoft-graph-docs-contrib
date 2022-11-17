---
title: "plannerPropertyRule resource type"
description: "An abstract base type of all entity rule definitions for Microsoft Planner."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerPropertyRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract base type of all entity rule definitions for Microsoft Planner. For more details, see [plannerTaskPropertyRule](plannertaskpropertyrule.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|ruleKind|plannerRuleKind|Identifies which type of property rules is represented by this instance. The possible values are: `taskRule`, `bucketRule`, `planRule`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
