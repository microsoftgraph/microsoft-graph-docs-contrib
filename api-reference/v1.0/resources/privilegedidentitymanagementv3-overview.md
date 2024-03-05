---
title: "Manage Microsoft Entra role assignments using the privileged identity management (PIM) APIs"
description: "Privileged Identity Management (PIM) is a feature of Microsoft Entra ID Governance that enables you to manage, control, and monitor access to important resources in your organization."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: conceptualPageType
ms.date: 09/13/2023
---

# Manage Microsoft Entra role assignments using PIM APIs

Privileged Identity Management (PIM) is a feature of [Microsoft Entra ID Governance](#related-content) that enables you to manage, control, and monitor access to important resources in your organization. One method through which principals such as users, groups, and service principals (applications) are granted access to important resources is through assignment of [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

The PIM for Microsoft Entra roles APIs allow you to govern privileged access and limit excessive access to Microsoft Entra roles. This article introduces the governance capabilities of PIM for Microsoft Entra roles APIs in Microsoft Graph.

> [!NOTE]
> To manage Azure resource roles use the [Azure Resource Manager (ARM) APIs for PIM](/rest/api/authorization/privileged-role-eligibility-rest-sample).
>
> PIM APIs for managing security alerts for Microsoft Entra roles are available on the `beta` endpoint only. For more information, see [Security alerts for Microsoft Entra roles](/graph/api/resources/privilegedidentitymanagementv3-overview?view=graph-rest-beta#security-alerts-for-azure-ad-roles&preserve-view=true).

## PIM APIs for managing active role assignments

PIM allows you to manage active role assignments by creating permanent assignments or temporary assignments. Use the [unifiedRoleAssignmentScheduleRequest](unifiedroleassignmentschedulerequest.md) resource type and its related methods to manage role assignments.

The following table lists scenarios for using PIM to manage role assignments and the APIs to call.

|Scenarios  |API  |
|---------|---------|
|An administrator creates and assigns to a principal a permanent role assignment  <br/> An administrator assigns to a principal a temporary role   |   [Create roleAssignmentScheduleRequests](../api/rbacapplication-post-roleassignmentschedulerequests.md)      |
|An administrator renews, updates, extends, or removes role assignments     |   [Create roleAssignmentScheduleRequests](../api/rbacapplication-post-roleassignmentschedulerequests.md)      |
|An administrator queries all role assignments and their details     |   [List roleAssignmentScheduleRequests](../api/rbacapplication-list-roleassignmentschedulerequests.md)      |
|An administrator queries a role assignment and its details     |   [Get unifiedRoleAssignmentScheduleRequest](../api/unifiedroleassignmentschedulerequest-get.md)      |
|A principal queries their role assignments and the details     |  [unifiedRoleAssignmentScheduleRequest: filterByCurrentUser](../api/unifiedroleassignmentschedulerequest-filterbycurrentuser.md)       |
|A principal performs just-in-time and time-bound activation of their *eligible* role assignment     |   [Create roleAssignmentScheduleRequests](../api/rbacapplication-post-roleassignmentschedulerequests.md)      |
|A principal cancels a role assignment request they created     |   [unifiedRoleAssignmentScheduleRequest: cancel](../api/unifiedroleassignmentschedulerequest-cancel.md)      |
|A principal that has activated their eligible role assignment deactivates it when they no longer need access     |   [Create roleAssignmentScheduleRequests](../api/rbacapplication-post-roleassignmentschedulerequests.md)      |
|A principal deactivates, extends, or renews their own role assignment.     |   [Create roleAssignmentScheduleRequests](../api/rbacapplication-post-roleassignmentschedulerequests.md)      |

## PIM APIs for managing role eligibilities

Your principals may not require permanent role assignments because they may not require the privileges granted through the privileged role all the time. In this case, PIM also allows you to create role eligibilities and assign them to the principals. With role eligibilities, the principal activates the role when they need to perform privileged tasks. The activation is always time-bound for a maximum of 8 hours. The role eligibility can also be a permanent eligibility or a temporary eligibility.

Use the [unifiedRoleEligibilityScheduleRequest](unifiedroleeligibilityschedulerequest.md) resource type and its related methods to manage role eligibilities.

The following table lists scenarios for using PIM to manage role eligibilities and the APIs to call.

|Scenarios  |API  |
|---------|---------|
|An administrator creates and assigns to a principal an eligible role  <br/> An administrator assigns a temporary role eligibility to a principal   |   [Create roleEligibilityScheduleRequests](../api/rbacapplication-post-roleeligibilityschedulerequests.md)      |
|An administrator renews, updates, extends, or removes role eligibilities     |   [Create roleEligibilityScheduleRequests](../api/rbacapplication-post-roleeligibilityschedulerequests.md)      |
|An administrator queries all role eligibilities and their details     |   [List roleEligibilityScheduleRequests](../api/rbacapplication-list-roleeligibilityschedulerequests.md)      |
|An administrator queries a role eligibility and its details     |   [Get unifiedRoleEligibilityScheduleRequest](../api/unifiedroleeligibilityschedulerequest-get.md)      |
|An administrator cancels a role eligibility request they created     |   [unifiedRoleEligibilityScheduleRequest: cancel](../api/unifiedroleeligibilityschedulerequest-cancel.md)      |
|A principal queries their role eligibilities and the details     |  [unifiedRoleEligibilityScheduleRequest: filterByCurrentUser](../api/unifiedroleeligibilityschedulerequest-filterbycurrentuser.md)       |
|A principal deactivates, extends, or renews their own role eligibility.     |   [Create roleEligibilityScheduleRequests](../api/rbacapplication-post-roleeligibilityschedulerequests.md)      |


## Role settings and PIM

Each Microsoft Entra role defines settings or rules. Such rules include whether multifactor authentication (MFA), justification, or approval is required to activate an eligible role, or whether you can create permanent assignments or eligibilities for principals to the role. These role-specific rules determine the settings you can apply while creating or managing role assignments and eligibilities through PIM.

In Microsoft Graph, these rules are managed through the [unifiedRoleManagementPolicy](unifiedrolemanagementpolicy.md) and the [unifiedRoleManagementPolicyAssignment](unifiedrolemanagementpolicyassignment.md) resource types and their related methods.

For example, assume that by default, a role doesn't allow permanent active assignments and defines a maximum of 15 days for active assignments. Attempting to create a [unifiedRoleAssignmentScheduleRequest](unifiedroleassignmentschedulerequest.md) object without expiry date returns a `400 Bad Request` response code for violation of the expiration rule.

PIM allows you to configure various rules including:

+ Whether principals can be assigned permanent eligible assignments
+ The maximum duration allowed for a role activation and whether justification or approval is required to activate eligible roles
+ The users who are allowed to approve activation requests for a Microsoft Entra role
+ Whether MFA is required to both activate and enforce a role assignment
+ The principals who get notified of role activations

The following table lists scenarios for using PIM to manage rules for Microsoft Entra roles and the APIs to call.

| Scenarios                                                                                                                                 | API                                                                                                      |
|--------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| Retrieve role management policies and associated rules or settings                                                                        | [List unifiedRoleManagementPolicies](../api/policyroot-list-rolemanagementpolicies.md)                   |
| Retrieve a role management policy and its associated rules or settings                                                                    | [Get unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-get.md)                             |
| Update a role management policy on its associated rules or settings                                                                    | [Update unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-update.md)                             |
| Retrieve the rules defined for role management policy                                                                                     | [List rules](../api/unifiedrolemanagementpolicy-list-rules.md)                                           |
| Retrieve a rule defined for a role management policy                                                                                      | [Get unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicyrule-get.md)                     |
| Update a rule defined for a role management policy                                                                                        | [Update unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicyrule-update.md)                  |
| Get the details of all role management policy assignments including the policies and rules or settings associated with the Microsoft Entra roles | [List unifiedRoleManagementPolicyAssignments](../api/policyroot-list-rolemanagementpolicyassignments.md) |
| Get the details of a role management policy assignment including the policy and rules or settings associated with the Microsoft Entra role       | [Get unifiedRoleManagementPolicyAssignment](../api/unifiedrolemanagementpolicyassignment-get.md)         |

For more information about using Microsoft Graph to configure rules, see [Overview of rules for Microsoft Entra roles in PIM APIs](/graph/identity-governance-pim-rules-overview). For examples of updating rules, see [Use PIM APIs to update rules for Microsoft Entra ID roles](/graph/how-to-pim-update-rules).

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->
<!--
## Permissions and privileges

To call the [Create roleAssignmentScheduleRequests](../api/rbacapplication-post-roleassignmentschedulerequests.md) and [Create roleEligibilityScheduleRequests](../api/rbacapplication-post-roleeligibilityschedulerequests.md) APIs with admin actions, the calling app must:
+ Have a *Global Administrator* or *Privileged Role Administrator* role
+ Be granted one of the following permissions:
  + RoleAssignmentSchedule.ReadWrite.Directory
  + RoleEligibilitySchedule.ReadWrite.Directory
  + RoleManagement.ReadWrite.Directory

The app must also be assigned the appropriate permissions to retrieve their role assignments and eligibilities, or call the [Create roleAssignmentScheduleRequests](../api/rbacapplication-post-roleassignmentschedulerequests.md) and [Create roleEligibilityScheduleRequests](../api/rbacapplication-post-roleeligibilityschedulerequests.md) APIs with user actions.

For more information about permissions to call PIM APIs, see the [Microsoft Graph permissions reference: Role management permissions](/graph/permissions-reference#role-management-permissions).

-->

## Licensing

The tenant where Privileged Identity Management is being used must have enough purchased or trial licenses. For more information, see [Microsoft Entra ID Governance licensing fundamentals](/entra/id-governance/licensing-fundamentals).

## Related content

+ [What is Microsoft Entra Privileged Identity Management?](/azure/active-directory/privileged-identity-management/pim-configure)
+ Learn more about role settings in PIM through the following articles:
  + [Working with rules for Microsoft Entra roles in PIM APIs](/graph/identity-governance-pim-rules-overview)
  + [Use PIM APIs to update rules for Microsoft Entra ID roles](/graph/how-to-pim-update-rules)
+ Follow these tutorials to learn more about using PIM APIs
  + [Tutorial: Use the Privileged Identity Management (PIM) API to assign Microsoft Entra roles](/graph/tutorial-assign-azureadroles)



<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": []
} -->
