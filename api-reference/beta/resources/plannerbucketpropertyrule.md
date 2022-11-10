---
title: "plannerBucketPropertyRule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerBucketPropertyRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

Inherits from [plannerPropertyRule](../resources/plannerpropertyrule.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|order|String collection|**TODO: Add Description**|
|ruleKind|plannerRuleKind|**TODO: Add Description**. The possible values are: `taskRule`, `bucketRule`, `planRule`, `unknownFutureValue`. Inherited from [plannerPropertyRule](../resources/plannerpropertyrule.md).|
|title|String collection|**TODO: Add Description**|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerBucketPropertyRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerBucketPropertyRule",
  "order": ["String"],
  "ruleKind": "String",
  "title": ["String"]
}
```
