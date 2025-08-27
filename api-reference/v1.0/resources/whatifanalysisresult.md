---
title: "whatIfAnalysisResult resource type"
toc.title: "What If evaluation"
description: "Represents the result of a Conditional Access What If evaluation, which indicates the policies that would apply based on the sign-in details you provide."
author: "kvenkit"
ms.date: 07/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# whatIfAnalysisResult resource type

Namespace: microsoft.graph

Represents the result of a Conditional Access What If evaluation, which indicates the policies that would apply based on the sign-in details you provide. For more information, see the [Conditional Access Policy What If tool](/entra/identity/conditional-access/what-if-tool).


Inherits from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Evaluate](../api/conditionalaccessroot-evaluate.md)|[whatIfAnalysisResult](../resources/whatifanalysisresult.md) collection|List the results of the What If evaluation of Conditional Access Policies targeting a sign-in attempt.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|analysisReasons|whatIfAnalysisReasons|Specifies the reasons why a policy didn't apply. `analysisReasons` is set to `notSet` when `policyApplies` is `true` and one of the following values when `policyApplies` is `false`: `notEnoughInformation`, `invalidCondition`, `users`, `workloadIdentities`, `application`, `userActions`, `authenticationContext`, `devicePlatform`, `devices`, `clientApps`, `location`, `signInRisk`, `emptyPolicy`, `invalidPolicy`, `policyNotEnabled`, `userRisk`, `time`, `insiderRisk`, `authenticationFlow`, `unknownFutureValue`.|
|conditions|[conditionalAccessConditionSet](../resources/conditionalaccessconditionset.md)|Specifies the rules that must be met for the policy to apply. Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|description|String|Not used. Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|displayName|String|Specifies a display name for the conditionalAccessPolicy object. Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|grantControls|[conditionalAccessGrantControls](../resources/conditionalaccessgrantcontrols.md)|Specifies the grant controls that must be fulfilled to pass the policy. Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|id|String|Specifies the identifier of a conditionalAccessPolicy object. Inherited from [entity](../resources/entity.md).|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|policyApplies|Boolean|Specifies whether the policy applies to the sign-in properties provided in the request body. If `policyApplies` is `true`, the policy applies to the sign-in based on the sign-in properties provided. If `policyApplies` is `false`, the policy doesn't apply to the sign-in based on the sign-in properties provided and the `analysisReasons` property is populated to show the reason for the policy not applying. |
|sessionControls|[conditionalAccessSessionControls](../resources/conditionalaccesssessioncontrols.md)|Specifies the session controls that are enforced after sign-in. Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|state|conditionalAccessPolicyState|Specifies the state of the conditionalAccessPolicy object. Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md). The possible values are: `enabled`, `disabled`, `enabledForReportingButNotEnforced`, `unknownFutureValue`.|
|templateId|String|Specifies the unique identifier of a [Conditional Access template](../resources/conditionalaccesstemplate.md). Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.whatIfAnalysisResult",
  "baseType": "microsoft.graph.conditionalAccessPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.whatIfAnalysisResult",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "state": "String",
  "conditions": {
    "@odata.type": "microsoft.graph.conditionalAccessConditionSet"
  },
  "grantControls": {
    "@odata.type": "microsoft.graph.conditionalAccessGrantControls"
  },
  "sessionControls": {
    "@odata.type": "microsoft.graph.conditionalAccessSessionControls"
  },
  "policyApplies": "Boolean",
  "analysisReasons": "String",
  "templateId": "String"
}
```

