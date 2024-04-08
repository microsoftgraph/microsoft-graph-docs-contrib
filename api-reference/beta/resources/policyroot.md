---
title: "policyRoot resource type"
description: "Resource type exposing navigation properties for the policies singleton."
author: "dkershaw10"
ms.localizationpriority: medium
ms.subservice: "non-product-specific"
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
| activityBasedTimeoutPolicies              | [activityBasedTimeoutPolicy](activitybasedtimeoutpolicy.md) collection                                    | The policy that controls the idle time-out for web sessions for applications.                                                                                        |
| adminConsentRequestPolicy                 | [adminConsentRequestPolicy](adminconsentrequestpolicy.md)                                                 | The policy by which consent requests are created and managed for the entire tenant.                                                                                  |
| appManagementPolicies                     | [appManagementPolicy](appmanagementpolicy.md) collection                                                  | The policies that enforce app management restrictions for specific applications and service principals, overriding the defaultAppManagementPolicy.                   |
| authenticationFlowsPolicy                 | [authenticationFlowsPolicy](authenticationflowspolicy.md)                                                 | The policy configuration of the self-service sign-up experience of guests.                                                                                   |
| authenticationMethodsPolicy               | [authenticationMethodsPolicy](authenticationmethodspolicy.md)                                             | The authentication methods and the users that are allowed to use them to sign in and perform multifactor authentication (MFA) in Microsoft Entra ID. |
| authenticationStrengthPolicies | [authenticationStrengthPolicy](authenticationstrengthpolicy.md) collection                                           | The authentication method combinations that are to be used in scenarios defined by Microsoft Entra Conditional Access.                                                        |
| authorizationPolicy                       | [authorizationPolicy](authorizationpolicy.md) collection                                                  | The policy that controls Microsoft Entra authorization settings.                                                                                                            |
| b2cAuthenticationMethodsPolicy            | [b2cAuthenticationMethodsPolicy](b2cauthenticationmethodspolicy.md)                                       | The Azure AD B2C policies that define how end users register via local accounts.                                                                                     |
| claimsMappingPolicies                     | [claimsMappingPolicy](claimsmappingpolicy.md) collection                                                  | The claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.                                   |
|claimsPolicy|[customClaimsPolicy](../resources/customclaimspolicy.md)|A claims policy that allows application admins the ability to customize the claims that will be emitted in tokens affected by this policy.|
| conditionalAccessPolicies                 | [conditionalAccessPolicy](conditionalaccesspolicy.md)                                                     | The custom rules that define an access scenario.                                                                                                                     |
| crossTenantAccessPolicy                   | [crossTenantAccessPolicy](crosstenantaccesspolicy.md)                                                     | The custom rules that define an access scenario when interacting with external Microsoft Entra tenants.                                                                     |
| defaultAppManagementPolicy                | [tenantAppManagementPolicy](tenantappmanagementpolicy.md)                                                 | The tenant-wide policy that enforces app management restrictions for all applications and service principals.                                                        |
| externalIdentitiesPolicy                  | [externalIdentitiesPolicy](externalidentitiespolicy.md)                                                   | Represents the tenant-wide policy that controls whether guests can leave a Microsoft Entra tenant via self-service controls.                                       |
| featureRolloutPolicies                    | [featureRolloutPolicy](featurerolloutpolicy.md) collection                                                | The feature rollout policy associated with a directory object.                                                                                                       |
| federatedTokenValidationPolicy| [federatedTokenValidationPolicy](federatedtokenvalidationpolicy.md)                                                 | Represents a policy to control enabling or disabling validation of federation authentication tokens.                                                                                                       |
| homeRealmDiscoveryPolicies                | [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) collection                                        | The policy to control Microsoft Entra authentication behavior for federated users.                                                                                          |
| identitySecurityDefaultsEnforcementPolicy | [identitySecurityDefaultsEnforcementPolicy](identitysecuritydefaultsenforcementpolicy.md)                 | The policy that represents the security defaults that protect against common attacks.                                                                                |
| mobileAppManagementPolicies               | [mobilityManagementPolicy](mobilitymanagementpolicy.md) collection                                        | The policy that defines autoenrollment configuration for a mobility management (MDM or MAM) application.                                                            |
| permissionGrantPolicies                   | [permissionGrantPolicy](permissiongrantpolicy.md) collection                                              | The policy that specifies the conditions under which consent can be granted.                                                                                         |
| permissionGrantPreApprovalPolicies | [permissionGrantPreApprovalPolicy](permissiongrantpreapprovalpolicy.md) collection | Policies that specify the conditions under which consent can be granted to a specific application. |
| roleManagementPolicies                    | [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) collection                     | Represents the role management policies.                                                                                                                             |
| roleManagementPolicyAssignments           | [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) collection | Represents the role management policy assignments.                                                                                                                   |
| tokenIssuancePolicies                     | [tokenIssuancePolicy](tokenissuancepolicy.md) collection                                                  | The policy that specifies the characteristics of SAML tokens issued by Microsoft Entra ID.                                                                                     |
| tokenLifetimePolicies                     | [tokenLifetimePolicy](tokenlifetimepolicy.md) collection                                                  | The policy that controls the lifetime of a JWT access token, an ID token, or a SAML 1.1/2.0 token issued by Microsoft Entra ID.                                                |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policyRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyRoot",
  "id": "String (identifier)"
}
```
