---
title: "Overview of role management through the privileged identity management (PIM) API"
description: "Privileged Identity Management (PIM) is a service in Azure Active Directory (Azure AD) that enables you to manage, control, and monitor access to important resources in your organization."
author: "japere"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# Overview of role management through the privileged identity management (PIM) API

Namespace: microsoft.graph

Privileged Identity Management (PIM) is a service in Azure Active Directory (Azure AD) that enables you to manage, control, and monitor access to important resources in your organization. This access is enabled through privileged roles and the resources include resources in Azure AD, Azure, and other Microsoft Online Services such as Microsoft 365 or Microsoft Intune. PIM allows for governance over role-based access control.




This version of the PIM API is PIM v3. For more information about the history of the PIM API, see [PIM API history: current iteration](/azure/active-directory/privileged-identity-management/pim-apis#pim-api-history).

The Microsoft Graph PIM API is separated into two major categories: PIM API for role management and PIM API for managing policies.

## PIM API for role management

The Microsoft Graph PIM API for role management allows you to manage the lifecycle of Azure AD role assignments. This includes time-bound assignment, just-in-time activation. To manage Azure resource roles use the [Azure Resource Manager (ARM) APIs for PIM](/rest/api/authorization/privileged-role-eligibility-rest-sample).

You can manage both active and eligible role assignments through the [unifiedRoleAssignmentScheduleRequest](unifiedroleassignmentschedulerequest.md) and [unifiedRoleEligibilityScheduleRequest](unifiedroleeligibilityschedulerequest.md) resource types of the PIM API for role management.

The following APIs in Microsoft Graph allow you to use PIM for role management:

| Scenarios | API |
|--|--|
| Create a persistent and permanent role assignment <br/> Create a persistent role assignment a defined schedule| unifiedRoleAssignmentScheduleRequest |
| Create a permanent role eligibility <br/> Create a role eligibility with a defined schedule  |  |
| Create an eligible role assignment with a defined schedule |  |
| Perform a just-in-time activation of an eligible role assignment | [Create unifiedRoleAssignmentScheduleRequest](../api/rbacapplication-post-roleassignmentschedulerequests.md) |
| Enforce multifactor authentication (MFA) for role activations |  |
| Set up settings for an eligible role assignment, for example, justification for approval, notifications or approval, and  mandatory approval for activation. |  |
| Row6 |  |
| Row6 |  |

You can also set up access reviews of active and eligible assignments to Azure AD roles through PIM. For more information, see [Tutorial: Use the Privileged Identity Management (PIM) API to assign Azure AD roles](/graph/tutorial-assign-azureadroles)

## PIM API for managing policies

Currently, all policies are read-only through PIM APIs. The following resources in Microsoft Graph allow you to use PIM for role management:


## Permissions and roles

- Are there specific roles that can create requests?
- Any user can manage their role requests with the right permissions?


## Licensing



## Next Steps

+ [unifiedRoleAssignmentScheduleRequest resource type](unifiedroleassignmentschedulerequest.md)
+ [unifiedRoleEligibilityScheduleRequest resource type](unifiedroleeligibilityschedulerequest.md)

## See also

+ [What is Azure AD Privileged Identity Management?](/azure/active-directory/privileged-identity-management/pim-configure)
+ [Tutorial: Use the Privileged Identity Management (PIM) API to assign Azure AD roles](/graph/tutorial-assign-azureadroles)





Points:

+ Is ARM API in GA too?
+ Multifactor authentication: /azure/active-directory/privileged-identity-management/pim-how-to-require-mfa