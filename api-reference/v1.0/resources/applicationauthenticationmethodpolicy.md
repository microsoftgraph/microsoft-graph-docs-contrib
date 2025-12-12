---
title: "Microsoft Entra application management policy API overview"
description: "Application management policies allow administrators to set rules on how Entra apps in their tenant can be configured."
ms.localizationpriority: medium
author: "aricrowe57"
ms.subservice: "entra-sign-in"
doc_type: "conceptualPageType"
ms.date: 09/13/2024
---

# Microsoft Entra application management policies API overview 

Namespace: microsoft.graph

Application management policies allow IT admins to enforce best practices for how apps in their organizations should be configured. For example, an admin might configure a policy to block the use or limit the lifetime of password secrets, and use the creation date of the object to enforce the policy.

These policies allow organizations to take advantage of the new app security hardening features. By enforcing restrictions that are based on the application or service principal created date, an organization can review their current app security posture, inventory apps, and enforce controls per their resourcing schedules and needs. This approach using the created date allows the organization to enforce the policy for new applications and also apply it to existing applications.

There are two types of policy controls:

- Tenant default policy that applies to all applications or service principals.
- App (application or service principal) management policies that allow individual applications to be included or excluded from the tenant default policy.

## Tenant default app management policy

A tenant default policy is a single object that always exists and is disabled by default. It's defined by the [tenantAppManagementPolicy](tenantappmanagementpolicy.md) resource and enforces restrictions on application vs service principal objects. It contains the following two properties:

- **applicationRestrictions** allows targeting applications owned by the tenant (application objects).
- **servicePrincipalRestrictions** allows targeting provisioned from another tenant (service principal objects).

These properties enable an organization to separately control the configuration of apps that originate from their tenant vs. their tenant's instance of an externally owned application.  

## App management policy for applications and service principals

App management policies are defined in the [appManagementPolicy](appmanagementpolicy.md) resource, which contains a collection of policies with varying restrictions or different enforcement dates from what's defined in tenant default policy. One of these policies can be assigned to an application or service principal to override the tenant default policy.

When the tenant default policy and an app management policy define the same restriction, the app management policy takes precedence.  If a restriction is set on an app management policy in a `disabled` state, that restriction won't apply to apps with that policy linked to them, regardless of what the tenant default policy would normally enforce.  Similarly, if a restriction is set on an app management policy in an `enabled` state, that restriction applies to apps with that policy linked to them.  However, if the app management policy doesn't define any behavior for a certain restriction, it falls back to the tenant default policy's behavior. Only one app management policy can be assigned to an application or service principal.

> [!Note]
> Neither the tenant default nor the app management policies block token issuance for existing applications. An application that does not meet the policy requirements continues to work; only the app creation/update operation that violates the policy is blocked.

## What restrictions can be managed in Microsoft Graph?

The application authentication methods policy API offers the following restrictions. [Learn more about configuring these restrictions](/entra/identity/enterprise-apps/configure-app-management-policies).

| Restriction name       | Description                                                            | Examples                                                                                                    |
| :--------------------- | :--------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------- |
| passwordAddition       | Restrict password secrets on applications altogether.                  | Block new passwords on applications created on or after '01/01/2019'.                                       |
| passwordLifetime       | Enforce a max lifetime range for a password secret.                    | Restrict all new password secrets to a maximum of 30 days for applications created after 01/01/2015.        |
| customPasswordAddition | Restrict a custom password secret on application or service principal. | Restrict all new custom (non-Azure AD generated) password secrets on applications created after 01/01/2015. |
| symmetricKeyAddition   | Restrict symmetric keys on applications.                               | Block new symmetric keys on applications created on or after 01/01/2019.                                    |
| symmetricKeyLifetime   | Enforce a max lifetime range for a symmetric key.                      | Restrict all new symmetric keys to a maximum of 30 days for applications created after 01/01/2019.          |
| asymmetricKeyLifetime  | Enforce a max lifetime range for an asymmetric key (certificate).      | Restrict all new asymmetric key credentials to a maximum of 30 days for applications created after 01/01/2019.  |

> [!Note]
> All lifetime restrictions are expressed in ISO-8601 duration format (For example: P4DT12H30M5S).
>
> Applying the **customPasswordAddition** restriction will block any legacy PowerShell modules that add a client-generated password secret to applications or service principals. This restriction does not block Microsoft Entra ID-generated application or service principal password secrets.

### Single vs multi-tenant apps

Depending on whether your app is a single tenant or multitenant app, you apply the policy on either an application or the service principal object as follows:

- For single tenant apps, apply the policy to the application object.
- To restrict multi-tenant apps homed in a customer tenant, apply the policy to the application object.
- To restrict multi-tenant apps provisioned from another tenant, apply the policy to the service principal object.

### Summary of key differences between the tenant default policy and app management policies

| Tenant default policy                                                              | App management policy                                                                                                                               |
| ---------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| Policy always exists.                                                              | Policy objects can be created or updated to override default policy.                                                                                |
| Allows only single restriction object definition for all resources.                | Allows multiple policy objects to be defined, but only one can be applied to a resource.                                                            |
| Allows distinction of restrictions for application objects vs. service principals. | Policy can be applied to either an application or service principal object.                                                                         |
| Applies all restrictions configured to all apps or service principals.             | Applies the restrictions configured in the resource policy to the specified app or service principal.  Anything not defined inherits from default policy. |

## Requirements

- The least privileged [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) for management of application authentication method policies are Application Administrator and Cloud Application Administrator.

## Related content

- [tenantAppManagementPolicy](tenantappmanagementpolicy.md)
- [appManagementPolicy](appmanagementpolicy.md)
