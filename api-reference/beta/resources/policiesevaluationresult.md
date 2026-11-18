---
title: "policiesEvaluationResult resource type"
description: "Contains the outcome returned by the Evaluate policy and Evaluate assigned policies actions on resourcePolicyRoot."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# policiesEvaluationResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the outcome returned by the [Evaluate policy](../api/resourcepolicyroot-evaluatepolicy.md) and [Evaluate assigned policies](../api/resourcepolicyroot-evaluateassignedpolicies.md) actions on [resourcePolicyRoot](../resources/resourcepolicyroot.md).

The reported policy effect is independent of enforcement mode. **isBlocked** indicates whether the service would block the simulated request. These actions don't perform that request.

When **isResultDetailed** is false, **details** can still contain policy loading or evaluation errors. Use **errorDetails** on each detail to diagnose failures.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appliedPoliciesEffects|[policyEffects](../resources/enums.md#policyeffects-values)|The aggregate policy effect, independent of enforcement mode. If any policy returns `deny`, the result is `deny`; otherwise, including when no policies apply, it is `compliant`. Read-only. This flagged enumeration allows multiple members to be selected simultaneously. The possible values are: `compliant`, `deny`, `unknownFutureValue`.|
|details|[policiesEvaluationDetail](../resources/policiesevaluationdetail.md) collection|The per-policy evaluation results. Entries with **errorDetails** can be returned even when detailed successful results weren't requested. Read-only.|
|httpMethod|[requestHttpMethod](../resources/enums.md#requesthttpmethod-values)|The HTTP method of the request that was evaluated. Read-only. The possible values are: `post`, `patch`, `put`, `get`, `delete`, `unknownFutureValue`.|
|isBlocked|Boolean|Indicates whether the resource policy service would block the simulated request. Evaluation actions don't perform the simulated request. Read-only.|
|message|String|A human-readable evaluation outcome or reason evaluation was skipped. A noncompliance message names at most four policy assignments and can append 'and others'. Read-only.|
|normalizedRequestInput|[Json](../resources/json.md)|The input document passed to the policy engine, including request context and resource data. Populated only when **includeNormalizedRequestInput** is `true` and evaluation isn't skipped. Read-only.|
|resourceUri|String|The URI of the request or resource that was evaluated. Read-only.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policiesEvaluationResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policiesEvaluationResult",
  "resourceUri": "String",
  "httpMethod": "String",
  "appliedPoliciesEffects": "String",
  "isBlocked": "Boolean",
  "message": "String",
  "normalizedRequestInput": {
    "@odata.type": "microsoft.graph.Json"
  },
  "details": [
    {
      "@odata.type": "microsoft.graph.policiesEvaluationDetail"
    }
  ]
}
```
