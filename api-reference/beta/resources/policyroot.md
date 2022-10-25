---
title: "policyRoot resource type"
description: "Resource type exposing navigation properties for the policies singleton."
author: "rkarim-ms"
ms.localizationpriority: medium
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
| accessReviewPolicy                        | [accessReviewPolicy](accessreviewpolicy.md)                                                               | The policy that contains directory-level access review settings.                                                                                                     |
| activityBasedTimeoutPolicies              | [activityBasedTimeoutPolicy](activitybasedtimeoutpolicy.md) collection                                    | The policy that controls the idle time out for web sessions for applications.                                                                                        |
| adminConsentRequestPolicy                 | [adminConsentRequestPolicy](adminconsentrequestpolicy.md)                                                 | The policy by which consent requests are created and managed for the entire tenant.                                                                                  |
| appManagementPolicies                     | [appManagementPolicy](appmanagementpolicy.md) collection                                                  | The policies that enforce app management restrictions for specific applications and service principals, overriding the defaultAppManagementPolicy.                   |
| authenticationFlowsPolicy                 | [authenticationFlowsPolicy](authenticationflowspolicy.md)                                                 | The policy configuration of the self-service sign-up experience of external users.                                                                                   |
| authenticationMethodsPolicy               | [authenticationMethodsPolicy](authenticationmethodspolicy.md)                                             | The authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD). |
| authenticationStrengthPolicies | [authenticationStrengthPolicy](authenticationstrengthpolicy.md) collection                                           | The authentication method combinations that are to be used in scenarios defined by Azure AD Conditional Access.                                                        |
| authorizationPolicy                       | [authorizationPolicy](authorizationpolicy.md) collection                                                  | The policy that controls Azure AD authorization settings.                                                                                                            |
| b2cAuthenticationMethodsPolicy            | [b2cAuthenticationMethodsPolicy](b2cauthenticationmethodspolicy.md)                                       | The Azure AD B2C policies that define how end users register via local accounts.                                                                                     |
| claimsMappingPolicies                     | [claimsMappingPolicy](claimsmappingpolicy.md) collection                                                  | The claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.                                   |
| conditionalAccessPolicies                 | [conditionalAccessPolicy](conditionalaccesspolicy.md)                                                     | The custom rules that define an access scenario.                                                                                                                     |
| crossTenantAccessPolicy                   | [crossTenantAccessPolicy](crosstenantaccesspolicy.md)                                                     | The custom rules that define an access scenario when interacting with external Azure AD tenants.                                                                     |
| defaultAppManagementPolicy                | [tenantAppManagementPolicy](tenantappmanagementpolicy.md)                                                 | The tenant-wide policy that enforces app management restrictions for all applications and service principals.                                                        |
| externalIdentitiesPolicy                  | [externalIdentitiesPolicy](externalidentitiespolicy.md)                                                   | Represents the tenant-wide policy that controls whether external users can leave an Azure AD tenant via self-service controls.                                       |
| featureRolloutPolicies                    | [featureRolloutPolicy](featurerolloutpolicy.md) collection                                                | The feature rollout policy associated with a directory object.                                                                                                       |
| homeRealmDiscoveryPolicies                | [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) collection                                        | The policy to control Azure AD authentication behavior for federated users.                                                                                          |
| identitySecurityDefaultsEnforcementPolicy | [identitySecurityDefaultsEnforcementPolicy](identitysecuritydefaultsenforcementpolicy.md)                 | The policy that represents the security defaults that protect against common attacks.                                                                                |
| mobileAppManagementPolicies               | [mobilityManagementPolicy](mobilitymanagementpolicy.md) collection                                        | The policy that defines auto-enrollment configuration for a mobility management (MDM or MAM) application.                                                            |
| permissionGrantPolicies                   | [permissionGrantPolicy](permissiongrantpolicy.md) collection                                              | The policy that specifies the conditions under which consent can be granted.                                                                                         |
| roleManagementPolicies                    | [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) collection                     | Represents the role management policies.                                                                                                                             |
| roleManagementPolicyAssignments           | [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) collection | Represents the role management policy assignments.                                                                                                                   |
| tokenIssuancePolicies                     | [tokenIssuancePolicy](tokenissuancepolicy.md) collection                                                  | The policy that specifies the characteristics of SAML tokens issued by Azure AD.                                                                                     |
| tokenLifetimePolicies                     | [tokenLifetimePolicy](tokenlifetimepolicy.md) collection                                                  | The policy that controls the lifetime of a JWT access token, an ID token, or a SAML 1.1/2.0 token issued by Azure AD.                                                |

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
