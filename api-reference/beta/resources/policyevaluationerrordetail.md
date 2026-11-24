---
title: "policyEvaluationErrorDetail resource type"
description: "Contains policy loading and evaluation errors in the **errorDetails** property of policiesEvaluationDetail."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# policyEvaluationErrorDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains policy loading and evaluation errors in the **errorDetails** property of [policiesEvaluationDetail](../resources/policiesevaluationdetail.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applicabilityEvaluationError|String|The error from evaluating policy applicability, or null when no applicability error occurred.|
|effectEvaluationError|String|The error from evaluating the policy effect, or null when no effect evaluation error occurred.|
|policyLoadingError|String|The error from loading the policy, or null when no loading error occurred.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyEvaluationErrorDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyEvaluationErrorDetail",
  "policyLoadingError": "String",
  "applicabilityEvaluationError": "String",
  "effectEvaluationError": "String"
}
```
