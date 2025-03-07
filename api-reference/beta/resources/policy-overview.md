---
title: "policy API overview"
description: "Microsoft Entra ID uses policies to control Microsoft Entra feature behaviors in your organization."
ms.localizationpriority: medium
author: "dkershaw10"
ms.subservice: "entra-sign-in"
doc_type: "conceptualPageType"
ms.date: 10/05/2022
---

# Microsoft Entra policy overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Entra ID uses policies to control Microsoft Entra feature behaviors in your organization. Policies are custom rules that you can enforce on applications, service principals, groups, or on the entire organization they're assigned to.

## What policies are available?

| Policy type                                                                               | Description                                                                                                                                                                                       | Examples                                                                                                                                                                                               |
|:------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [activityBasedTimeoutPolicies](activityBasedTimeoutPolicy.md)                             | Represents a policy that controls automatic sign-out for web sessions after a period of inactivity, for applications that support activity-based timeout functionality.                           | Configure the Azure portal to have an inactivity timeout of 15 minutes.                                                                                                                                |
| [applicationAuthenticationMethodPolicies](applicationAuthenticationMethodPolicy.md)       | Represents a set of policies that restrict app management operations for applications and service principals.                                                                                     | Configure applications or service principals to not use password secrets or enforce lifetime on secrets.                                                                                               |
| [authenticationFlowsPolicies](authenticationflowspolicy.md)                               | Represents a policy that controls whether external users should be able to sign up and gain a guest account via an External Identities self-service sign-up user flow.                            | Enable your applications to support external users signing up via a self-service sign-up user flow.                                                                                                    |
| [authorizationPolicy](authorizationpolicy.md)                                             | Represents a policy that can control authorization settings of Microsoft Entra ID.                                                                                                            | Configure Microsoft Entra ID to block MSOL PowerShell in the tenant.                                                                                                                                             |
| [claimsMappingPolicies](claimsMappingPolicy.md)                                           | Represents the claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.                                                     | Create and assign a policy to omit the basic claims from tokens issued to a service principal.                                                                                                         |
| [deviceRegistrationPolicy](deviceregistrationpolicy.md)                                   | Represents the policy scope that controls quota restrictions, additional authentication, and authorization policies to register device identities to your organization.                           | Limit the number of devices that can be registered to a user in your organization or, specify users or groups that are allowed to register devices using **Microsoft Entra join** or **Microsoft Entra registered**. |
| [federatedTokenValidationPolicy](federatedtokenvalidationpolicy.md) | Represents a policy to control enabling or disabling validation of federation authentication tokens -  matching an on-premises federated account and a mapped Microsoft Entra ID account's root domain. | Configure validation on tenants to check if the domain in the mapped Entra Id account matches the token issuer domain in a token post authentication from the federated IdP. |
| [homeRealmDiscoveryPolicies](homeRealmDiscoveryPolicy.md)                                 | Represents a policy to control Microsoft Entra authentication behavior for federated users, in particular for auto-acceleration and user authentication restrictions in federated domains. | Configure all users to skip home realm discovery and be routed directly to ADFS for authentication.                                                                                                    |
| [tokenLifetimePolicies](tokenlifetimepolicy.md)                                           | Represents the lifetime duration of access tokens used to access protected resources.                                                                                                             | Configure a particularly sensitive application with a shorter than default token lifetime.                                                                                                             |
| [tokenIssuancePolicy](tokenIssuancePolicy.md)                                             | Represents the policy to specify the characteristics of SAML tokens issued by Microsoft Entra ID.                                                                                                           | Configure the signing algorithm or SAML token version to be used to issue the SAML token.                                                                                                              |
| [identitySecurityDefaultsEnforcementPolicy](identitysecuritydefaultsenforcementpolicy.md) | Represents the Microsoft Entra security defaults policy.                                                                                                                                                 | Configure the Microsoft Entra security defaults policy to protect against common attacks.                                                                                                                     |

## Next steps

- Review the different policy resource types listed above and their various methods.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
