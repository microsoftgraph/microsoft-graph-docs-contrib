---
title: "policiesEvaluationDetail resource type"
description: "Contains a per-policy result in the **details** property of policiesEvaluationResult."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# policiesEvaluationDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains a per-policy result in the **details** property of [policiesEvaluationResult](../resources/policiesevaluationresult.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appliedPolicyEffects|[policyEffects](../resources/enums.md#policyeffects-values)|The effect returned for this policy. Enforcement mode determines whether the effect is applied, not the reported effect. Read-only. This flagged enumeration allows multiple members to be selected simultaneously. The possible values are: `compliant`, `deny`, `unknownFutureValue`.|
|assignedPolicyDisplayName|String|The display name of the evaluated policy definition. Read-only.|
|assignmentUniqueName|String|The unique name of the evaluated assignment. Read-only.|
|enforcementMode|[enforcementMode](../resources/enums.md#enforcementmode-values)|The enforcement mode of the evaluated assignment. Null for inline policy evaluations. Read-only. The possible values are: `doNotEnforce`, `enforce`, `unknownFutureValue`.|
|errorDetails|[policyEvaluationErrorDetail](../resources/policyevaluationerrordetail.md)|The loading or evaluation errors for this policy, or null when there are no errors. Read-only.|
|reasons|String collection|The client-facing reasons supplied by a successfully evaluated noncompliant policy. Returned only when detailed results are requested and the policy supplies reasons. Read-only.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policiesEvaluationDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policiesEvaluationDetail",
  "assignmentUniqueName": "String",
  "assignedPolicyDisplayName": "String",
  "appliedPolicyEffects": "String",
  "enforcementMode": "String",
  "reasons": [
    "String"
  ],
  "errorDetails": {
    "@odata.type": "microsoft.graph.policyEvaluationErrorDetail"
  }
}
```
