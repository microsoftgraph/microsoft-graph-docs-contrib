---
title: "policyRoot resource type"
description: "Resource type exposing navigation properties for the policies singleton."
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# policyRoot resource type

Namespace: microsoft.graph

Resource type exposing navigation properties for the policies singleton.

## Methods
None

## Properties
None


## Relationships
| Relationship                              | Type                                                                                                      | Description                                                                                                                                                          |
|:------------------------------------------|:----------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| authenticationMethodsPolicy               | [authenticationMethodsPolicy](authenticationmethodspolicy.md)                                             | The authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD). |
| authenticationFlowsPolicy                 | [authenticationFlowsPolicy](authenticationflowspolicy.md)                                                 | The policy configuration of the self-service sign-up experience of external users.                                                                                   |
| b2cAuthenticationMethodsPolicy            | [b2cAuthenticationMethodsPolicy](b2cauthenticationmethodspolicy.md)                                       | The Azure AD B2C policies that define how end users register via local accounts.                                                                                     |
| activityBasedTimeoutPolicies              | [activityBasedTimeoutPolicy](activitybasedtimeoutpolicy.md) collection                                    | The policy that controls the idle time out for web sessions for applications.                                                                                        |
| authorizationPolicy                       | [authorizationPolicy](authorizationpolicy.md) collection                                                  | The policy that controls Azure AD authorization settings.                                                                                                            |
| claimsMappingPolicies                     | [claimsMappingPolicy](claimsmappingpolicy.md) collection                                                  | The claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.                                   |
| homeRealmDiscoveryPolicies                | [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) collection                                        | The policy to control Azure AD authentication behavior for federated users.                                                                                          |
| permissionGrantPolicies                   | [permissionGrantPolicy](permissiongrantpolicy.md) collection                                              | The policy that specifies the conditions under which consent can be granted.                                                                                         |
| tokenIssuancePolicies                     | [tokenIssuancePolicy](tokenissuancepolicy.md) collection                                                  | The policy that specifies the characteristics of SAML tokens issued by Azure AD.                                                                                     |
| tokenLifetimePolicies                     | [tokenLifetimePolicy](tokenlifetimepolicy.md) collection                                                  | The policy that controls the lifetime of a JWT access token, an ID token, or a SAML 1.1/2.0 token issued by Azure AD.                                                |
| featureRolloutPolicies                    | [featureRolloutPolicy](featurerolloutpolicy.md) collection                                                | The feature rollout policy associated with a directory object.                                                                                                       |
| accessReviewPolicy                        | [accessReviewPolicy](accessreviewpolicy.md)                                                               | The policy that contains directory-level access review settings.                                                                                                     |
| adminConsentRequestPolicy                 | [adminConsentRequestPolicy](adminconsentrequestpolicy.md)                                                 | The policy by which consent requests are created and managed for the entire tenant.                                                                                  |
| conditionalAccessPolicies                 | [conditionalAccessPolicy](conditionalaccesspolicy.md)                                                     | The custom rules that define an access scenario.                                                                                                                     |
| identitySecurityDefaultsEnforcementPolicy | [identitySecurityDefaultsEnforcementPolicy](identitysecuritydefaultsenforcementpolicy.md)                 | The policy that represents the security defaults that protect against common attacks.                                                                                |
| mobileAppManagementPolicies               | [mobilityManagementPolicy](mobilitymanagementpolicy.md) collection                                        | The policy that defines auto-enrollment configuration for a mobility management (MDM or MAM) application.                                                            |
| roleManagementPolicies                    | [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) collection                     | Represents the role management policies.                                                                                                                             |
| roleManagementPolicyAssignments           | [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) collection | Represents the role management policy assignments.                                                                                                                   |


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policyRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyRoot"
}
```

