---
title: "Azure AD authentication strengths API overview"
description: "Authentication strengths are sets of authentication method combinations that determine which methods your users can use to authenticate to access a resource."
ms.localizationpriority: medium
author: "mmcla"
ms.prod: "identity-and-sign-in"
doc_type: "conceptualPageType"
---

# Azure AD authentication strengths API overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Authentication strengths allow administrators to require specific combinations of Azure AD [authentication methods](authenticationmethods-overview.md) to access a resource. Each authentication strength comprises one or more combinations of authentication methods, where each combination is one or more authentication methods. When the strength is applied to a scenario as a [grant control](conditionalaccessgrantcontrols.md) in [Conditional Access](conditionalaccesspolicy.md), a user in scope of the policy is required to satisfy one of those allowed combinations at sign-in before they can access the resource. As part of Conditional Access, authentication strengths can also be paired with other Conditional Access controls such as user risk and location.

For example, an administrator can require users to authenticate using phishing-resistant authentication methods before they can access a sensitive resource. The administrator can also allow users to authenticate using less-secure multifactor authentication (MFA) combinations, such as password and SMS, for them to access non-sensitive applications.

This article introduces the Microsoft Graph APIs that allow administrators to programmatically manage authentication strengths.

## Authentication strength policies

Authentication strength policies define the authentication strengths that are available for use in the tenant. Use the [authenticationStrengthPolicy](authenticationstrengthpolicy.md) resource type and its associated methods to define and manage these policies. The policies include the following configurations:

+ The name, identifier, and description of the policy.
+ Authentication method combinations that are part of the policy.
+ Whether the policy, when the authentication method requirements are satisfied, can be used to satisfy an MFA claim in the access token.

Azure AD supports both built-in and custom authentication strength policies. Microsoft has supplied the following three built-in policies:

* Multifactor authentication
* Passwordless multifactor authentication
* Phishing-resistant multifactor authentication

You can only read built-in policies, but you can create up to 15 custom policies to suit your requirements.

### Authentication method combinations

Core to a policy are the authentication method combinations. A combination consists of one or more authentication methods in a comma-separated list. Combinations are pre-defined and are used to define an authentication strength. These authentication methods are based the **authenticationMethodModes** flagged enumeration. Some example combinations include:

| Example allowed combination | Description |
|--|--|
| `fido2` | The user must sign in using a FIDO2 security key to satisfy the authentication strength requirement. |
| `password,microsoftAuthenticatorPush` | The user must sign in using *both* password and Microsoft Authenticator push approval to satisfy the authentication strength requirement. |
| `password,softwareOath` | The user must sign in using *both* password and software OATH token to satisfy the authentication strength requirement. |

Azure AD provides the predefined, read-only combinations using the following principles:

* Single factor authentication methods that can be used as first factors such as password and SMS.
* Combinations of password and a second factor that make a valid multifactor authentication combination ("something you have" and "something you know").
* Passwordless multifactor authenticators such as FIDO2 and x509 certificate authentication.

Built-in authentication strengths use these combinations, and combinations can be used in custom authentication strengths.

To view the details of the supported authentication methods and the allowed combinations, call the [List authenticationMethodModes](../api/authenticationstrengthroot-list-authenticationmethodmodes.md) API.

The authentication combinations of built-in policies are read-only. To see all built-in policies and their configurations, call the [List authenticationStrengthPolicies](../api/authenticationstrengthroot-list-policies.md) API.

To create a custom authentication strength policy, you must configure the authentication method combinations using the allowed combinations.

## Combination configurations

You can apply further restrictions on certain authentication methods to control which instances of the method a user can use to authenticate. These kinds of restrictions are [combination configurations](authenticationcombinationconfiguration.md) and can also be part of an [authenticationStrengthPolicy](authenticationstrengthpolicy.md) object.

A combination configuration may apply to one or more combinations that include the specific authentication method. Today, [FIDO2](fido2combinationconfiguration.md) is the only method that supports combination configurations.

For example, a custom policy allows the following combinations: `password,softwareOath`, `fido2`, and `x509CertificateMultiFactor`. For this policy, you can restrict the FIDO2 security keys that the user can use to authenticate by configuring a combination configuration with specific Authenticator Attestation GUIDs (AAGUIDs).

An authentication strength policy has zero or more combination configurations.

## Apply authentication strength policies in Conditional Access

After defining the authentication strength policy, you apply and enforce it for the protected resource using Azure AD [conditional access policies](../resources/conditionalaccesspolicy.md). 

In the Conditional Access [grant controls](conditionalaccessgrantcontrols.md), configure the **authenticationStrength** relationship by assigning the [authenticationStrengthPolicy](authenticationstrengthpolicy.md) object that should be associated with the conditional access policy. When a conditional access policy applies to a sign-in and that policy has an authentication strength grant control, the user will be required to use one of the allowed authentication method combinations to sign in. Authentication strength policies can also be enforced for guest users through both conditional access policies and [cross-tenant access inbound trust settings](/graph/api/resources/crosstenantaccesspolicy-overview).

The **authenticationStrength** object corresponds to the 'Require authentication strength' control of the Conditional Access policy's UX on the Azure portal.

You can't configure authentication strengths and the multifactor authentication grant control on the same conditional access policy.

## Next steps

* [Read more](https://aka.ms/authstrengthdocs) about authentication strengths.
* Try the API in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
