---
title: "Manage Microsoft Entra role assignments using the PIM APIs"
description: "PIM is a feature of Microsoft Entra ID Governance that enables you to manage, control, and monitor access to important resources in your organization."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: rianakarim
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.topic: overview
ms.subservice: entra-id-governance
ms.date: 08/29/2025
# Customer intent: As a developer, I want to learn how to get started with PIM APIs for managing Microsoft Entra roles.
---

# Manage Microsoft Entra role assignments by using PIM APIs

[Privileged Identity Management (PIM)](/entra/id-governance/privileged-identity-management/pim-configure) is a feature of Microsoft Entra ID Governance that enables you to manage, control, and monitor access to important resources in your organization. One method through which principals such as users, groups, and service principals (applications) are granted access to important resources is through assignment of [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

The PIM for Microsoft Entra roles APIs allow you to govern privileged access and limit excessive access to Microsoft Entra roles. This article introduces the governance capabilities of PIM for Microsoft Entra roles APIs in Microsoft Graph.

> [!NOTE]
> To manage Azure resource roles, use the [Azure Resource Manager APIs for PIM](/rest/api/authorization/privileged-role-eligibility-rest-sample).
>
> PIM APIs for managing security alerts for Microsoft Entra roles are available on the `/beta` endpoint only. For more information, see [Security alerts for Microsoft Entra roles](/graph/api/resources/privilegedidentitymanagementv3-overview?view=graph-rest-beta#security-alerts-for-azure-ad-roles&preserve-view=true).

## Methods of assigning roles

PIM for Microsoft Entra roles provides two methods for assigning roles to principals:
- **Active role assignments**: A principal can have a permanent or temporary perpetually active role assignment.
- **Eligible role assignments**: A principal can be eligible for a role either permanently or temporarily. With eligible assignments, the principal activates their role - thereby creating a temporarily active role assignment - when they need to perform privileged tasks. The activation is always time-bound for a maximum of 8 hours but the maximum duration can be lowered in the role settings. The activation can also be renewed or extended.

## PIM APIs for managing active role assignments

PIM enables you to manage active role assignments by creating permanent assignments or temporary assignments. Use the [unifiedRoleAssignmentScheduleRequest](unifiedroleassignmentschedulerequest.md) resource type and its related methods to manage role assignments.

> [!NOTE]
> Use PIM to manage active role assignments instead of using the [unifiedRoleAssignment](../resources/unifiedroleassignment.md) or the [directoryRole](../resources/directoryrole.md) resource types to manage them directly.

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
|A principal that activated their eligible role assignment deactivates it when they no longer need access     |   [Create roleAssignmentScheduleRequests](../api/rbacapplication-post-roleassignmentschedulerequests.md)      |
|A principal deactivates, extends, or renews their own role assignment.     |   [Create roleAssignmentScheduleRequests](../api/rbacapplication-post-roleassignmentschedulerequests.md)      |

## PIM APIs for managing role eligibilities

Your principals might not need permanent role assignments because they don't always require the privileges granted through the privileged role. In this case, PIM enables you to create role eligibilities and assign them to the principals. With role eligibilities, the principal activates the role when they need to perform privileged tasks. The activation is always time-bound for a maximum of eight hours. The principal can also be permanently or temporarily eligible for the role.

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

In Microsoft Graph, you manage these rules through the [unifiedRoleManagementPolicy](unifiedrolemanagementpolicy.md) and the [unifiedRoleManagementPolicyAssignment](unifiedrolemanagementpolicyassignment.md) resource types and their related methods.

For example, assume that by default, a role doesn't allow permanent active assignments and defines a maximum of 15 days for active assignments. Attempting to create a [unifiedRoleAssignmentScheduleRequest](unifiedroleassignmentschedulerequest.md) object without expiry date returns a `400 Bad Request` response code for violation of the expiration rule.

With PIM, you can configure various rules, including:

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

## Audit logs

Microsoft Entra audit logs record all activities made through PIM for Microsoft Entra roles. You can read these logs through the [List directory audits](/graph/api/directoryaudit-list) API.

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->

## Licensing

The tenant where you use Privileged Identity Management must have enough purchased or trial licenses. For more information, see [Microsoft Entra ID Governance licensing fundamentals](/entra/id-governance/licensing-fundamentals).

## Related content

- To learn more about security operations, see [Microsoft Entra security operations for Privileged Identity Management](/azure/active-directory/architecture/security-operations-privileged-identity-management?source=docs#privileged-identity-management-alerts) in the Microsoft Entra architecture center.



<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": []
} -->
