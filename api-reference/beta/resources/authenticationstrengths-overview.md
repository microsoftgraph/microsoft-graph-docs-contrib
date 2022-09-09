---
title: "Azure AD authentication strengths API overview"
description: "Authentication strengths are sets of authentication method combinations that determine which methods your users may use to authenticate."
ms.localizationpriority: medium
author: "mmcla"
ms.prod: "identity-and-sign-in"
doc_type: "conceptualPageType"
---

# Azure AD authentication strengths API overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Authentication strengths allow administrators to require specific combinations of [authentication methods](authenticationmethods-overview.md) to access a resource. Each authentication strength comprises one or more combinations of authentication methods, where each combination is one or more authentication methods. When the strength is applied to a scenario as a [grant control](conditionalaccessgrantcontrols.md) in [Conditional Access](conditionalaccesspolicy.md), a user in scope of the policy is required to satisfy one of those allowed combinations to sign in. As part of Conditional Access, authentication strengths can also be paired with other Conditional Access controls such as user risk and location.

For example, an administrator could require phishing-resistant authentication methods when accessing a sensitive resource. The administrator could also allow less-secure multi-factor authentication (MFA) combinations, such as password and SMS, to be used to access non-sensitive applications.

When creating a Conditional Access policy with the 'Require authentication strength' control, administrators can choose from three built-in Authentication strengths policies. Administrators may also create their own custom Authentication strength policies using only the authentication methods combinations they would like to allow. Using custom authentication strengths, certain auth methods allow even further restriction, limiting users to only certain instances of an authentication method. Today, this is limited to restricting which FIDO2 security keys can be used during authentication, to allow only keys with certain Authenticator Attestation GUIDs (AAGUIDs).
 
## Authentication strength policies  

Each [authentication strength policy](authenticationstrengthpolicy.md) contains the allowed authentication method combinations (for example, "password, microsoftAuthenticatorPush" and "password, softwareOath") as well as additional policy details including name, description and creation datetime. To satisfy the authentication strength policy, a user can authenticate with any of the allowed combinations. For the policy listed above, the user could use either:

* password and Microsoft Authenticator push approval
* password and software OATH token

Microsoft has supplied three predefined authentication strength policies:

* Multifactor authentication
* Passwordless multifactor authentication
* Phishing-resistant multifactor authentication

Built-in authentication strengths are always available and cannot be modified. In addition to the three built-in authentication strengths, administrators may create their own custom authentication strength policies to meet their own requirements.

These authentication strengths are appled by including them in Conditional Access policies - they're part a Conditional Access [grant control](conditionalaccessgrantcontrols.md). When a Conditional Access policy applies to a sign-in and that policy has an authentication strength grant control, the user will be required to use one of the allowed authentication method combinations to sign in.

## Authentication combinations

The [authentication combinations](../api/authenticationstrengthroot-list-authenticationcombinations.md) API allows the caller to retrieve a read-only list of all supported authentication method combinations. Each combination comprises one or more comma-separated [authentication method modes](authenticationmethodmodedetail.md), and each combination is a part of a built-in authentication strength and may be used in custom authentication strengths.

Some example combinations:

* `"FIDO2"`
* `"password, microsoftAuthenticatorPush"`
* `"password, softwareOath"`

Note that the allowed combinations list may change over time as new authentication methods are added, and not all combinations are valid. Currently the list is restricted to:

* single factor authentication methods that can be used as first factors such as password and SMS
* combinations of password and a second factor that make a valid multifactor authentication combination ("something you have" and "something you know")
* passwordless multifactor authenticators such as FIDO2 and Windows Hello for Business

## Combination configurations

Certain authentication methods may have further restrictions placed on them to control which instances of the method may be used - these are called [combination configurations](authenticationcombinationconfiguration.md). A combination configuration may apply to one or more combinations that include the specific authentication method. Today, [FIDO2](fido2combinationconfiguration.md) is the only method that supports combination configurations - using this, an administrator may configure which AAGUIDs may be used to authenticate. An authentication strength policy have one or more combination configurations, or it may have none.

## Next steps

* [Read more](https://aka.ms/authstrengthdocs) about authentication strengths.
* Try the API in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
