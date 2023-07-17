---
title: "Azure AD application authentication methods API overview"
description: "Application authentication methods allow apps to acquire tokens to access data in Azure AD."
ms.localizationpriority: medium
author: "madansr7"
ms.prod: "identity-and-sign-in"
doc_type: "conceptualPageType"
---

# Azure AD application authentication methods API overview 

Namespace: microsoft.graph

Application authentication methods such as certificates and password secrets allow apps to acquire tokens to access data in Azure Active Directory (Azure AD). The policies allow IT admins to enforce best practices for how apps in their organizations use these application authentication methods. For example, an admin might configure a policy to block the use or limit the lifetime of password secrets, and use the creation date of the object to enforce the policy.

These policies allow organizations to take advantage of the new app security hardening features. By enforcing restrictions that are based on the application or service principal created date, an organization can review their current app security posture, inventory apps, and enforce controls per their resourcing schedules and needs. This approach using the created date allows the organization to enforce the policy for new applications and also apply it to existing applications.

There are two types of policy controls:

- Tenant default policy that applies to all applications or service principals.
- App (application or service principal) management policies that allow inclusion or exclusion of individual applications from the tenant default policy.

## Tenant default app management policy

A tenant default policy is a single object that always exists and is disabled by default. It's defined by the [tenantAppManagementPolicy](tenantappmanagementpolicy.md) resource and enforces restrictions on application vs service principal objects. It contains the following two properties:

- **applicationRestrictions** allows targeting applications owned by the tenant (application objects).
- **servicePrincipalRestrictions** allows targeting provisioned from another tenant (service principal objects.

These properties allow the organization to either lock down apps that originate within a tenant or raise the quality bar for apps that are provisioned from outside the tenant boundary.

## App management policy for applications and service principals

App management policies are defined in the [appManagementPolicy](appmanagementpolicy.md) resource, which contains a collection of policies with varying restrictions or different enforcement dates from what's defined in tenant default policy. One of these policies can be assigned to an application or service principal, excluding them from the tenant default policy.

When both the tenant default policy and an app management policy exist, the app management policy takes precedence and the assigned application or service principal doesn't inherit from the tenant default policy. Only one policy can be assigned to an application or service principal.

> [!Note]
> Neither the tenant default policies nor the app management policies block token issuance for existing applications. An application that does not meet the policy requirements will continue to work until it tries to update the resource to add a new secret.

## What restrictions can be managed in Microsoft Graph?

The application authentication methods policy API offers the following restrictions:

| Restriction name       | Description                                                            | Examples                                                                                                   |
| :--------------------- | :--------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------- |
| passwordAddition       | Restrict password secrets on applications altogether.                  | Block new passwords on applications created on or after '01/01/2019'.                                      |
| passwordLifetime       | Enforce a max lifetime range for a password secret.                    | Restrict all new password secrets to a maximum of 30 days for applications created after 01/01/2015.       |
| customPasswordAddition | Restrict a custom password secret on application or service principal. | Restrict all new custom password secrets on applications created after 01/01/2015.                         |
| symmetricKeyAddition   | Restrict symmetric keys on applications.                               | Block new symmetric keys on applications created on or after 01/01/2019.                                   |
| symmetricKeyLifetime   | Enforce a max lifetime range for a symmetric key.                      | Restrict all new symmetric keys to a maximum of 30 days for applications created after 01/01/2019.         |
| asymmetricKeyLifetime  | Enforce a max lifetime range for an asymmetric key (certificate).      | Restrict all new asymmetric key secrets to a maximum of 30 days for applications created after 01/01/2019. |

> [!Note]
> All lifetime restrictions are expressed in ISO-8601 duration format (For example: P4DT12H30M5S).
> Restricting customPasswordAddition restriction will block any legacy PowerShell modules that provide a client generated password secret for applications. This restriction still allows the application developer to request Azure AD generated application password secrets.

### Single vs multi-tenant apps

Depending on whether your app is a single tenant or multitenant app, you apply the policy on either an application or the service principal object as follows:

- For single tenant apps, apply the policy to the application object.
- To restrict multi-tenant apps homed in a customer tenant, apply the policy to the application object.
- To restrict multi-tenant apps provisioned from another tenant, apply the policy to the service principal object.

### Summary of key differences between the tenant default policy and app management policies

| Tenant default policy                                                              | App management policy                                                                                                                               |
| ---------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| Policy always exists.                                                              | Policy objects can be created or updated to override default policy.                                                                                |
| Restrictions are disabled by default for app/SP.                                   | Allows customization for single tenant or multi tenant(backing app in home tenant or provisioned apps).                                             |
| Allows only single restriction object definition for all resources.                | Allows multiple policy objects to be defined, but only one can be applied to a resource.                                                            |
| Allows distinction of restrictions for application objects vs. service principals. | Policy can be applied to either an application or service principal object.                                                                         |
| Applies all restrictions configured to all apps or service principals.             | Applies only the restrictions configured in the resource policy to the specified app or service principal, and doesn't inherit from default policy. |

## Next steps

- [tenantAppManagementPolicy](tenantappmanagementpolicy.md) resource type.
- [appManagementPolicy](appmanagementpolicy.md) resource type.
