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
|[authorizationPolicy](authorizationpolicy.md)|Represents an organization-wide directory authorization policy. | Add another permission grant policy to be enforced in your organization.|
|[permissionGrantPolicies](permissiongrantpolicy.md)|Represents a set of conditions that are applied when application consent is performed, to determine what can be consented to by a user or set of administrators. | Create a policy that allows permissions classified as low risk to be granted by the default user role.|
|[tokenLifetimePolicies](tokenlifetimepolicy.md)|Represents the lifetime duration of access tokens used to access protected resources.| Configure a particularly sensitive application with a shorter than default token lifetime.|

## Common use cases

| Use case    | Resource      | See also |
|:-------------|:------------|:------------|
|Create a policy allowing end users to consent to permissions classified as low risk.| [authorizationPolicy](authorizationpolicy.md) and [permissionGrantPolicies](permissiongrantpolicy.md) | [Create permissionsGrantPolicy](../api/permissionsgrantpolicy-post-permissionsgrantpolicy.md) and add policy to [roleDefinition](unfiedroledefinition.md)

## Next steps

Review the different policy resouce types listed above and their various methods
Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).