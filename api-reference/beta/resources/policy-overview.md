---
title: "policy API overview"
description: "Azure Active Directory (Azure AD) uses policies to control Azure AD feature behaviors in your organization."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "conceptualPageType"
---

# Azure AD policy overview

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) uses policies to control Azure AD feature behaviors in your organization. Policies are custom rules that you can enforce on applications, service principals, groups, or on the entire organization they are assigned to.

## What policies are available?

| Policy type       | Description | Examples |
|:-------------|:------------|:------------|
|[activityBasedTimeoutPolicies](activityBasedTimeoutPolicy.md)| | |
|[authorizationPolicy](authorizationpolicy.md)|Represents an organization-wide directory authorization policy. | Add another permission grant policy to be enforced in your organization.|
|[claimsMappingPolicies](claimsMappingPolicy.md)| | |
|[homeRealmDiscoveryPolicies](homeRealmDiscoveryPolicy.md)| | |
|[tokenLifetimePolicies](tokenlifetimepolicy.md)|Represents the lifetime duration of access tokens used to access protected resources.| Configure a particularly sensitive application with a shorter than default token lifetime.|

## Common use cases

| Use case    | Resource      | See also |
|:-------------|:------------|:------------|
| | | |

## Next steps

* Review the different policy resouce types listed above and their various methods.
* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
