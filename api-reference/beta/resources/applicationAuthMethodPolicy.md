---
title: "Azure AD application authentication methods API overview | Public preview"
description: "Application authentication methods is how apps get tokens in Azure AD."
localization_priority: Normal
author: "madansr7"
ms.prod: "identity-and-sign-in"
doc_type: "conceptualPageType"
---

# Azure AD application authentication methods API overview | Public preview

Namespace: microsoft.graph

Application authentication methods are ways by which applications can get tokens in Azure Active Directory (AD). Methods such as certificates or passwords secrets can be used to get a token as the application.
Application authentication method policies provide a way for IT admins to establish app development best practices on these methods for the applications in their organizations. For e.g. an admin can configure a policy to block password secrets altogether or create a rule to ensure no password secret exceeds a lifetime threshold set by the organization. These policies can be configured to block all application or service principal objects by setting the enforcement targeting based on the object creation date.

These policies allows organizations to take advantage of the new security hardening features in app management and gradually adopt them in their organization. Enforcement of the restrictions based on application or service principal created datetime provides a way for an organization to review their app security posture, inventory apps and enforce controls per their resourcing schedules. The date based approach allows scaling back to cover existing applications once new applications start to follow the guidance.

There are two types of policy controls:

- Tenant default policies that apply to all applications or service principals.
- Application/Service Principal specific policies which provide the ability to include or exclude certain applications from the tenant policy.

## Organization default app management policy

A tenant default policy is a single object that always exists and disabled by default. Tenant default policy object has the ability to enforce distinct restrictions on application vs service principal objects.
It contains two properties `applicationRestrictions` and `servicePrincipalRestrictions` that allow targeting applications owned by the tenant (application objects) or applications provisioned from another tenant (service principal objects) separately. This provides flexibility to either lock down apps originating within a tenant or help raise the quality bar for apps provisioned from outside the tenant boundary.

## Application/Service Principal policy

Resource-specific policies are defined in the [appManagementPolicy](appmanagementpolicy.md) resource, which contains a collection of policies with varying restrictions or different enforcement dates from what's defined in tenant default policy. One of these policies can be assigned to an application or service principal, excluding them from the tenant default policy.

When both the tenant default policy and resource-specific policy exist, the resource-specific policy takes precedence and the assigned application or service principal doesn't inherit from the tenant policy. Only one policy can be assigned to an application or service principal.

> [!Note]
> Neither the tenant default policies nor the resource-specific policies block token issuance for existing applications. An application that does not meet the policy requirements will continue to work until it tries to update the resource to add a new secret.

## What restrictions can be managed in Microsoft Graph?

The application authentication methods policy API offers the following restrictions:

| Restriction name      | Description                                           | Examples                                                                                     |
| :--------------- | :---------------------------------------------------- | :------------------------------------------------------------------------------------------- |
| passwordAddition | Restrict password secrets on applications altogether. | Block new passwords on applications created on or after '01/01/2019'.                        |
| passwordLifetime | Enforce a max lifetime range for a password secret.   | Restrict all new password secrets to a maximum of 30 days for on applications created after '01/01/2019'. |

### Single vs Multi-tenant apps

Single tenant apps should have policy reference applied to the application object.
To restrict multi-tenant apps homed in customer tenant, a policy is applied to the application object where as multi-tenant apps provisioned from another tenant are managed by applying the policy to servicePrincipal object.

### Summary of key differences between the tenant default policy and resource-specific policies

| Default policy                                                     | Application/Service Principal policy                                                                      |
| ------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------- |
| Policy always exists.                                              | Policy objects can be created or updated to override default policy.                                         |
| Restrictions are disabled by default for app/SP.                   | Allows customization for single tenant or multi tenant(backing app in home tenant or provisioned apps).     |
| Allows only single restriction object definition for all resources.| Allows multiple policy objects to be defined, but only one can be applied to a resource.                  |
|Allows distinction of restrictions for application objects vs. service principals. | Policy can be applied to either an application or service principal object.                             |
| Applies all restrictions configured to all apps or service principals.              |  Applies only the restrictions configured in the resource policy to the specified app or service principal, and doesn't inherit from default policy. |

## Next steps

- [defaultApManagementPolicy](tenantappmanagementpolicy.md) resource type.
- [appManagementPolicy](appmanagementpolicy.md) resource type.
