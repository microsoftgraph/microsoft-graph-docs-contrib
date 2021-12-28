---
title: "authenticationRequirementPolicy resource type"
description: "Azure AD can require users to pass an MFA check before accessing resources. If an MFA check is required, this resource identifies the policy that requires MFA."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationRequirementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure AD can require users to pass an MFA check before accessing resources. If an MFA check is required, this resource identifies the policy that requires MFA. 


## Properties
|Property|Type|Description|
|:---|:---|:---|
|detail|String|Provides additional detail on the feature identified in requirementProvider.|
|requirementProvider|requirementProvider|Identifies what Azure AD feature requires MFA in this policy. Possible values are: `user`, `request`, `servicePrincipal`, `v1ConditionalAccess`, `multiConditionalAccess`, `tenantSessionRiskPolicy`, `accountCompromisePolicies`, `v1ConditionalAccessDependency`, `v1ConditionalAccessPolicyIdRequested`, `mfaRegistrationRequiredByIdentityProtectionPolicy`, `baselineProtection`, `mfaRegistrationRequiredByBaselineProtection`, `mfaRegistrationRequiredByMultiConditionalAccess`, `enforcedForCspAdmins`, `securityDefaults`, `mfaRegistrationRequiredBySecurityDefaults`, `proofUpCodeRequest`, `crossTenantOutboundRule`, `gpsLocationCondition`, `riskBasedPolicy`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
