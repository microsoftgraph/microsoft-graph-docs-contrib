---
title: "policyEvaluationDetail resource type"
description: "Represents the result of evaluating an individual Entra Resource Policy for a Microsoft Graph request."
author: "milanevk"
ms.date: 11/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# policyEvaluationDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of evaluating an individual Entra Resource Policy (ERP) for a Microsoft Graph request. The **policyDetails** property of [resourcePolicyEvaluationEvent](../resources/resourcepolicyevaluationevent.md) contains these results and is returned only when requested with `$select`.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applicabilityEvaluationError|String|The applicability check error, if any, truncated to 256 characters.|
|appliedPolicyEffects|[policyEffect](../resources/enums.md#policyeffect-values)|The single effect applied by the policy. The possible values are: `compliant`, `deny`, `unknownFutureValue`.|
|assignedPolicyDisplayName|String|The display name of the assigned policy.|
|assignmentUniqueName|String|The unique name of the policy assignment.|
|evaluationError|String|The effect evaluation error, if any, truncated to 256 characters.|
|fetchDetails|[fetchDetail](../resources/fetchdetail.md) collection|The details of side-channel Microsoft Graph reads performed during evaluation. Currently emitted as an empty collection.|
|isApplicable|Boolean|When `true`, the policy applies to the request. Not nullable.|
|isCompliant|Boolean|When `true`, the request complies with the policy. Not nullable.|
|isEnforced|Boolean|When `true`, the policy assignment uses the `Enforce` enforcement mode. This value doesn't indicate whether the request was denied. Not nullable.|
|policyLoadingError|String|The policy loading error, if any, truncated to 256 characters.|
|policyMessage|String|The policy message, such as a deny reason, truncated to 256 characters.|
|policyVersion|String|The version of the policy, in `major.minor.patch` format.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyEvaluationDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyEvaluationDetail",
  "assignmentUniqueName": "String",
  "assignedPolicyDisplayName": "String",
  "appliedPolicyEffects": "String",
  "isEnforced": "Boolean",
  "isCompliant": "Boolean",
  "isApplicable": "Boolean",
  "policyMessage": "String",
  "evaluationError": "String",
  "applicabilityEvaluationError": "String",
  "policyLoadingError": "String",
  "policyVersion": "String",
  "fetchDetails": [
    {
      "@odata.type": "microsoft.graph.fetchDetail",
      "path": "String",
      "durationMs": "Integer"
    }
  ]
}
```
