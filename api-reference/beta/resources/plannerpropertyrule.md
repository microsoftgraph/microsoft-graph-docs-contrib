---
title: "plannerPropertyRule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerPropertyRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ruleKind|plannerRuleKind|**TODO: Add Description**.The possible values are: `taskRule`, `bucketRule`, `planRule`, `unknownFutureValue`.|

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

