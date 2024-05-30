---
title: "policy API overview"
description: "Microsoft Entra ID uses policies to control Microsoft Entra feature behaviors in your organization."
ms.localizationpriority: medium
author: "lujiangfeng666"
ms.subservice: "entra-sign-in"
doc_type: "conceptualPageType"
ms.date: 09/02/2022
---

# Microsoft Entra policy overview

Namespace: microsoft.graph

Microsoft Entra ID uses policies to control Microsoft Entra feature behaviors in your organization. Policies are custom rules that you can enforce on applications, service principals, groups, or on the entire organization they're assigned to.

## What policies are available?

| Policy type       | Description | Examples |
|:-------------|:------------|:------------|
|[activityBasedTimeoutPolicies](activityBasedTimeoutPolicy.md)| Represents a policy that controls automatic sign-out for web sessions after a period of inactivity, for applications that support activity-based timeout functionality.| Configure the Azure portal to have an inactivity timeout of 15 minutes. |
|[authenticationFlowsPolicies](authenticationflowspolicy.md)| Represents a policy that controls whether external users should be able to sign up and gain a guest account via an External Identities self-service sign-up user flow.| Enable your applications to support external users signing up via a self-service sign-up user flow. |
|[claimsMappingPolicies](claimsMappingPolicy.md)| Represents the claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application. | Create and assign a policy to omit the basic claims from tokens issued to a service principal. |
|[homeRealmDiscoveryPolicies](homeRealmDiscoveryPolicy.md)| Represents a policy to control Microsoft Entra authentication behavior for federated users, in particular for autoacceleration and user authentication restrictions in federated domains.| Configure all users to skip home realm discovery and be routed directly to ADFS for authentication. |
|[tokenLifetimePolicies](tokenlifetimepolicy.md)|Represents the lifetime duration of access tokens used to access protected resources.| Configure a sensitive application with a shorter than default token lifetime.|
|[tokenIssuancePolicy](tokenIssuancePolicy.md)|Represents the policy to specify the characteristics of SAML tokens issued by Microsoft Entra ID.| Configure the signing algorithm or SAML token version to be used to issue the SAML token.
|[identitySecurityDefaultsEnforcementPolicy](identitysecuritydefaultsenforcementpolicy.md)|Represents the Microsoft Entra security defaults policy.| Configure the Microsoft Entra security defaults policy to protect against common attacks.

## Next steps

* Review the different policy resource types listed previously  and their various methods.
* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
