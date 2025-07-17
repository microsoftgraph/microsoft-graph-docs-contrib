---
title: "authenticationRequirementPolicy resource type"
description: "Microsoft Entra ID can require users to pass an MFA check before accessing resources. If an MFA check is required, this resource identifies the policy that requires MFA."
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authenticationRequirementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Entra ID can require users to pass an MFA check before accessing resources. If an MFA check is required, this resource identifies the policy that requires MFA. 


## Properties
|Property|Type|Description|
|:---|:---|:---|
|detail|String|Provides additional detail on the feature identified in requirementProvider.|
|requirementProvider|requirementProvider|Identifies what Microsoft Entra feature requires MFA in this policy. Possible values are: `user`, `request`, `servicePrincipal`, `v1ConditionalAccess`, `multiConditionalAccess`, `tenantSessionRiskPolicy`, `accountCompromisePolicies`, `v1ConditionalAccessDependency`, `v1ConditionalAccessPolicyIdRequested`, `mfaRegistrationRequiredByIdentityProtectionPolicy`, `baselineProtection`, `mfaRegistrationRequiredByBaselineProtection`, `mfaRegistrationRequiredByMultiConditionalAccess`, `enforcedForCspAdmins`, `securityDefaults`, `mfaRegistrationRequiredBySecurityDefaults`, `proofUpCodeRequest`, `crossTenantOutboundRule`, `gpsLocationCondition`, `riskBasedPolicy`, `unknownFutureValue`, `scopeBasedAuthRequirementPolicy`, `authenticationStrengths` . Use the `Prefer: include-unknown-enum-members` request header to get the following value or values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `scopeBasedAuthRequirementPolicy`, `authenticationStrengths`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationRequirementPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationRequirementPolicy",
  "requirementProvider": "String",
  "detail": "String"
}
```
