---
title: "Govern membership and ownership of groups using PIM for Groups"
description: "PIM, part of Microsoft Entra ID Governance, enables you to manage, control, and monitor access to important resources, such as groups, in your organization."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: ilyal
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.topic: overview
ms.subservice: entra-id-governance
ms.date: 09/25/2024
#Customer intent: As a security administrator, I want to understand how to use PIM for Groups to govern membership and ownership of groups in my organization.
---

# Govern membership and ownership of groups using PIM for Groups

With [Privileged Identity Management for groups (PIM for Groups)](/entra/id-governance/privileged-identity-management/concept-pim-for-groups), you can govern how principals are assigned membership or ownership of [groups](groups-overview.md). Security and Microsoft 365 Groups are critical resources that you can use to provide access to Microsoft cloud resources like Microsoft Entra roles, Azure roles, Azure SQL, Azure Key Vault, Intune; and third-party applications. PIM for Groups gives you more control over how and when principals are members or owners of groups, and therefore have privileges granted through their group membership or ownership.

The PIM for Groups APIs in Microsoft Graph provide you with more governance over security and Microsoft 365 Groups such as the following capabilities:

- Providing principals just-in-time membership or ownership of groups
- Assigning principals temporary membership or ownership of groups

This article introduces the governance capabilities of the APIs for PIM for Groups in Microsoft Graph.

## PIM for Groups APIs for managing active assignments of group owners and members

The PIM for Groups APIs in Microsoft Graph allow you to assign principals permanent or temporary and time-bound membership or ownership to groups.

The following table lists scenarios for using PIM for Groups APIs to manage active assignments for principals and the corresponding APIs to call.

| **Scenarios** | **API** |
| --- | --- |
| An administrator: <ul><li>Assigns a principal active membership or ownership to a group </li><li> Renews, updates, extends, or removes a principal from their active membership or ownership to a group <br/><br/> A principal: </li><li> Performs just-in-time and time-bound activation of their _eligible_ membership or ownership assignment for a group </li><li> Deactivates their eligible membership and ownership assignment it when they no longer need access </li><li> Deactivates, extends, or renews their own membership and ownership assignment| [Create assignmentScheduleRequest](../api/privilegedaccessgroup-post-assignmentschedulerequests.md)</li></ul> |
| An administrator lists all requests for active membership and ownership assignments for a group |[List assignmentScheduleRequests](../api/privilegedaccessgroup-list-assignmentschedulerequests.md) |
| An administrator lists all active assignments, and requests for assignments to be created in the future, for membership and ownership for a group | [List assignmentSchedules](../api/privilegedaccessgroup-list-assignmentschedules.md) |
| An administrator lists all active membership and ownership assignments for a group | [List assignmentScheduleInstances](../api/privilegedaccessgroup-list-assignmentscheduleinstances.md) |
| An administrator queries a member and ownership assignment for a group and its details | [Get privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroupassignmentschedulerequest-get.md) |
| A principal queries their membership or ownership assignment requests and the details <br/><br/> An approver queries membership or ownership requests waiting for their approval and details of these requests | [privilegedAccessGroupAssignmentScheduleRequest: filterByCurrentUser](../api/privilegedaccessgroupassignmentschedulerequest-filterbycurrentuser.md) |
| A principal cancels a membership or ownership assignment request they created | [privilegedAccessGroupAssignmentScheduleRequest: cancel](../api/privilegedaccessgroupassignmentschedulerequest-cancel.md) |
| An approver gets details for approval request, including information about approval steps | [Get approval](../api/approval-get.md) |
| An approver approves or denies approval request by approving or denying approval step | [Update approvalStep](../api/approvalstep-update.md) |

## PIM for Groups APIs for managing eligible assignments of group owners and members

Your principals might not require permanent membership or ownership of groups because they don't require the privileges granted through the membership or ownership all the time. In this case, PIM for Groups allows you to make the principals eligible for the membership or ownership of the groups.

When a principal has an eligible assignment, they activate their assignment when they need the privileges granted through the groups to perform privileged tasks. An eligible assignment can be permanent or temporary. The activation is always time-bound for a maximum of 8 hours. The principal can also extend or renew their membership or ownership of the group.

The following table lists scenarios for using PIM for Groups APIs to manage eligible assignments for principals and the corresponding APIs to call.

| **Scenarios** | **API** |
|---|---|
| An administrator: <ul><li> Creates an eligible membership or ownership assignment for the group </li><li> Renews, updates, extends, or removes an eligible membership/ownership assignment for the group </li><li> Deactivates, extends, or renews their own membership/ownership eligibility| [Create eligibilityScheduleRequest](../api/privilegedaccessgroup-post-eligibilityschedulerequests.md)</li></ul> |
| An administrator queries all eligible membership or ownership requests and their details | [List eligibilityScheduleRequests](../api/privilegedaccessgroup-list-eligibilityschedulerequests.md) |
| An administrator queries an eligible membership or ownership request and its details | [Get eligibilityScheduleRequest](../api/privilegedaccessgroupeligibilityschedulerequest-get.md) |
| An administrator cancels an eligible membership or ownership request they created | [privilegedAccessGroupEligibilityScheduleRequest:cancel](../api/privilegedaccessgroupeligibilityschedulerequest-cancel.md) |
| A principal queries their eligible membership or ownership request their details | [privilegedAccessGroupEligibilityScheduleRequest: filterByCurrentUser](../api/privilegedaccessgroupeligibilityschedulerequest-filterbycurrentuser.md) |

## Policy settings in PIM for Groups

PIM for Groups defines settings or rules that govern how principals can be assigned membership or ownership of security and Microsoft 365 Groups. Such rules include whether multifactor authentication (MFA), justification, or approval is required to activate an eligible membership or ownership for a group, or whether you can create permanent assignments or eligibilities for principals to the groups. The rules are defined in policies and a policy can be applied to a group.

In Microsoft Graph, these rules are managed through the [unifiedRoleManagementPolicy](unifiedrolemanagementpolicy.md) and the [unifiedRoleManagementPolicyAssignment](unifiedrolemanagementpolicyassignment.md) resource types and their related methods.

For example, assume that by default, PIM for Groups doesn't allow permanent active membership and ownership assignments and defines a maximum of six months for active assignments. Attempting to create a [privilegedAccessGroupAssignmentScheduleRequest](privilegedAccessGroupAssignmentScheduleRequest.md) object without expiry date returns a `400 Bad Request` response code for violation of the expiration rule.

PIM for Groups allows you to configure various rules including:

- Whether principals can be assigned permanent eligible assignments
- The maximum duration allowed for a group membership or ownership activation and whether justification or approval is required to activate eligible membership or ownership
- The users who are allowed to approve activation requests for a group membership or ownership
- Whether MFA is required to both activate and enforce a group membership or ownership assignment
- The principals who get notified of group membership or ownership activations

The following table lists scenarios for using PIM for Groups to manage rules and the APIs to call.

| Scenarios                                                                                                                                 | API                                                                                                      |
|--------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| Retrieve PIM for Groups policies and associated rules or settings                                                                        | [List unifiedRoleManagementPolicies](../api/policyroot-list-rolemanagementpolicies.md)                   |
| Retrieve a PIM for Groups policy and its associated rules or settings                                                                    | [Get unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-get.md)                             |
| Update a PIM for Groups policy on its associated rules or settings                                                                    | [Update unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-update.md)                             |
| Retrieve the rules defined for a PIM for Groups policy                                                                                     | [List rules](../api/unifiedrolemanagementpolicy-list-rules.md)                                           |
| Retrieve a rule defined for a PIM for Groups policy                                                                                      | [Get unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicyrule-get.md)                     |
| Update a rule defined for a PIM for Groups policy                                                                                        | [Update unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicyrule-update.md)                  |
| Get the details of all PIM for Groups policy assignments, including the policies and rules associated with the groups membership and ownership  | [List unifiedRoleManagementPolicyAssignments](../api/policyroot-list-rolemanagementpolicyassignments.md) |
| Get the details of a PIM for Groups policy assignment, including the policy and rules associated with the groups membership or ownership       | [Get unifiedRoleManagementPolicyAssignment](../api/unifiedrolemanagementpolicyassignment-get.md)         |

For more information about using Microsoft Graph to configure rules, see [Overview of rules in PIM APIs in Microsoft Graph](/graph/identity-governance-pim-rules-overview). For examples of updating rules, see [Use PIM APIs in Microsoft Graph to update rules](/graph/how-to-pim-update-rules).

## Onboarding groups to PIM for Groups

You can't onboard a group to PIM for Groups explicitly. When you make a request to add an assignment to a group by using [Create assignmentScheduleRequest](../api/privilegedaccessgroup-post-assignmentschedulerequests.md) or [Create eligibilityScheduleRequest](../api/privilegedaccessgroup-post-eligibilityschedulerequests.md), or you update PIM policy (role settings) for a group by using [Update unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-update.md) or [Update unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicyrule-update.md), the group is onboarded to PIM automatically if it wasn't onboarded before.

You can call one of the following APIs for both groups that are onboarded to PIM and groups that aren't onboarded to PIM yet, but we recommend doing it only for groups that are onboarded to PIM to reduce the chances of getting throttled.
- [List assignmentScheduleRequests](../api/privilegedaccessgroup-list-assignmentschedulerequests.md)
- [List assignmentSchedules](../api/privilegedaccessgroup-list-assignmentschedules.md)
- [List assignmentScheduleInstances](../api/privilegedaccessgroup-list-assignmentscheduleinstances.md),
- [List eligibilityScheduleRequests](../api/privilegedaccessgroup-list-eligibilityschedulerequests.md)
- [List eligibilitySchedules](../api/privilegedaccessgroup-list-eligibilityschedules.md)
- [List eligibilityScheduleInstances](../api/privilegedaccessgroup-list-eligibilityscheduleinstances.md)

After PIM onboards a group, IDs of the PIM policies and policy assignments of the specific group change. Call the [Get unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-get.md) or [Get unifiedRoleManagementPolicyAssignment](../api/unifiedrolemanagementpolicyassignment-get.md) API to get the updated IDs.

After PIM onboards a group, you can't offboard it, but you can remove all eligible and time-bound assignments as necessary.

## PIM for Groups and the group object

Membership and ownership of any security and Microsoft 365 group (except dynamic groups and groups synchronized from on-premises) can be governed through PIM for Groups. The group doesn't have to be role-assignable to be enabled in PIM for Groups.

When you assign a principal *active* permanent or temporary membership or ownership of a group, or when they make a just-in-time activation:

- The principal's details are returned when you query the **members** and **owners** relationships through the [List group members](../api/group-list-members.md) or [List group owners](../api/group-list-owners.md) APIs.
- You can remove the principal from the group using the [Remove group owner](../api/group-delete-owners.md) or [Remove group member](../api/group-delete-members.md) APIs.
- If changes to the group are tracked using the [Get delta](../api/group-delta.md) and [Get delta for directory objects](../api/directoryobject-delta.md) functions, an `@odata.nextLink` contains the new member or owner.
- The changes to group **members** and **owners** made through PIM for Groups are logged in Microsoft Entra audit logs and can be read through the [List directory audits](../api/directoryaudit-list.md) API.

When a principal is assigned *eligible* permanent or temporary membership or ownership of a group, the members and owners relationships of the group aren't updated.

When a principal's *temporary active* membership or ownership of a group expires:

- The principal's details are automatically removed from the **members** and **owners** relationships.
- If changes to the group are tracked using the [Get delta](../api/group-delta.md) and [Get delta for directory objects](../api/directoryobject-delta.md) functions, an `@odata.nextLink` indicates the removed group member or owner.

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->

## Licensing

The tenant where Privileged Identity Management is being used must have enough purchased or trial licenses. For more information, see [Microsoft Entra ID Governance licensing fundamentals](/entra/id-governance/licensing-fundamentals).

## Related content

- [Microsoft Entra security operations for Privileged Identity Management](/azure/active-directory/architecture/security-operations-privileged-identity-management?source=docs#privileged-identity-management-alerts) in the Microsoft Entra architecture center

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": [
    "Error: /resources/privilegedidentitymanagement-for-groups-api-overview.md:
      Failed to parse enumeration values for type microsoft.graph.and. Table requires a column header named one of the following: Member, Name, Value"
  ]
} -->
