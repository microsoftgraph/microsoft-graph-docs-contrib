---
title: "appliedConditionalAccessPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# appliedConditionalAccessPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationStrength|[authenticationStrength](../resources/authenticationstrength.md)|**TODO: Add Description**|
|conditionsNotSatisfied|conditionalAccessConditions|**TODO: Add Description**. The possible values are: `none`, `application`, `users`, `devicePlatform`, `location`, `clientType`, `signInRisk`, `userRisk`, `time`, `deviceState`, `client`, `ipAddressSeenByAzureAD`, `ipAddressSeenByResourceProvider`, `unknownFutureValue`, `servicePrincipals`, `servicePrincipalRisk`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `servicePrincipals` , `servicePrincipalRisk`.|
|conditionsSatisfied|conditionalAccessConditions|**TODO: Add Description**. The possible values are: `none`, `application`, `users`, `devicePlatform`, `location`, `clientType`, `signInRisk`, `userRisk`, `time`, `deviceState`, `client`, `ipAddressSeenByAzureAD`, `ipAddressSeenByResourceProvider`, `unknownFutureValue`, `servicePrincipals`, `servicePrincipalRisk`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `servicePrincipals` , `servicePrincipalRisk`.|
|displayName|String|**TODO: Add Description**|
|enforcedGrantControls|String collection|**TODO: Add Description**|
|enforcedSessionControls|String collection|**TODO: Add Description**|
|excludeRulesSatisfied|[conditionalAccessRuleSatisfied](../resources/conditionalaccessrulesatisfied.md) collection|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|includeRulesSatisfied|[conditionalAccessRuleSatisfied](../resources/conditionalaccessrulesatisfied.md) collection|**TODO: Add Description**|
|result|appliedConditionalAccessPolicyResult|**TODO: Add Description**. The possible values are: `success`, `failure`, `notApplied`, `notEnabled`, `unknown`, `unknownFutureValue`, `reportOnlySuccess`, `reportOnlyFailure`, `reportOnlyNotApplied`, `reportOnlyInterrupted`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `reportOnlySuccess` , `reportOnlyFailure` , `reportOnlyNotApplied` , `reportOnlyInterrupted`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appliedConditionalAccessPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appliedConditionalAccessPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "enforcedGrantControls": [
    "String"
  ],
  "enforcedSessionControls": [
    "String"
  ],
  "conditionsSatisfied": "String",
  "conditionsNotSatisfied": "String",
  "includeRulesSatisfied": [
    {
      "@odata.type": "microsoft.graph.conditionalAccessRuleSatisfied"
    }
  ],
  "excludeRulesSatisfied": [
    {
      "@odata.type": "microsoft.graph.conditionalAccessRuleSatisfied"
    }
  ],
  "authenticationStrength": {
    "@odata.type": "microsoft.graph.authenticationStrength"
  },
  "result": "String"
}
```

