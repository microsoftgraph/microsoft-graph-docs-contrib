---
title: "Govern membership and ownership of groups using privileged identity management (PIM) for groups"
description: "Privileged Identity Management (PIM) is a feature of Microsoft Entra ID Governance that enables you to manage, control, and monitor access to important resources, such as groups, in your organization."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: conceptualPageType
ms.date: 10/12/2023
---

# Govern membership and ownership of groups using PIM for groups

With [Privileged Identity Management for groups (PIM for groups)](/azure/active-directory/privileged-identity-management/concept-pim-for-groups), you can govern how principals are assigned membership or ownership of [groups](groups-overview.md). Security and Microsoft 365 groups are critical resources that you can use to provide access to Microsoft cloud resources like Microsoft Entra roles, Azure roles, Azure SQL, Azure Key Vault, Intune; and third-party applications. PIM for groups gives you more control over how and when principals are members or owners of groups, and therefore have privileges granted through their group membership or ownership.

The PIM for groups APIs in Microsoft Graph provide you with more governance over security and Microsoft 365 groups such as the following capabilities:

- Providing principals just-in-time membership or ownership of groups
- Assigning principals temporary membership or ownership of groups

This article introduces the governance capabilities of the APIs for PIM for groups in Microsoft Graph.

## PIM for groups APIs for managing active assignments of group owners and members

The PIM for groups APIs in Microsoft Graph allow you to assign principals permanent or temporary and time-bound membership or ownership to groups.

The following table lists scenarios for using PIM for groups APIs to manage active assignments for principals and the corresponding APIs to call.

| **Scenarios** | **API** |
| --- | --- |
| An administrator: <li>Assigns a principal active membership or ownership to a group <li> Renews, updates, extends, or removes a principal from their active membership or ownership to a group <br/><br/> A principal: <li> Performs just-in-time and time-bound activation of their _eligible_ membership or ownership assignment for a group <li> Deactivates their eligible membership and ownership assignment it when they no longer need access <li> Deactivates, extends, or renews their own membership and ownership assignment| [Create assignmentScheduleRequest](../api/privilegedaccessgroup-post-assignmentschedulerequests.md) |
| An administrator lists all requests for active membership and ownership assignments for a group |[List assignmentScheduleRequests](../api/privilegedaccessgroup-list-assignmentschedulerequests.md) |
| An administrator lists all active assignments, and requests for assignments to be created in the future, for membership and ownership for a group | [List assignmentSchedules](../api/privilegedaccessgroup-list-assignmentschedules.md) |
| An administrator lists all active membership and ownership assignments for a group | [List assignmentScheduleInstances](../api/privilegedaccessgroup-list-assignmentscheduleinstances.md) |
| An administrator queries a member and ownership assignment for a group and its details | [Get privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroupassignmentschedulerequest-get.md) |
| A principal queries their membership or ownership assignment requests and the details <br/><br/> An approver queries membership or ownership requests waiting for their approval and details of these requests | [privilegedAccessGroupAssignmentScheduleRequest: filterByCurrentUser](../api/privilegedaccessgroupassignmentschedulerequest-filterbycurrentuser.md) |
| A principal cancels a membership or ownership assignment request they created | [privilegedAccessGroupAssignmentScheduleRequest: cancel](../api/privilegedaccessgroupassignmentschedulerequest-cancel.md) |
| An approver gets details for approval request, including information about approval steps | [Get approval](../api/approval-get.md) |
| An approver approves or denies approval request by approving or denying approval step | [Update approvalStep](../api/approvalstep-update.md) |

## PIM for groups APIs for managing eligible assignments of group owners and members

Your principals may not require permanent membership or ownership of groups because they may not require the privileges granted through the membership or ownership all the time. In this case, PIM for groups allows you to make the principals eligible for the membership or ownership of the groups.

When a principal has an eligible assignment, they activate their assignment when they need the privileges granted through the groups to perform privileged tasks. An eligible assignment can be permanent or temporary. The activation is always time-bound for up to a maximum of eight hours.

The following table lists scenarios for using PIM for groups APIs to manage eligible assignments for principals and the corresponding APIs to call.

| **Scenarios** | **API** |
|---|---|
| An administrator: <li> Creates an eligible membership or ownership assignment for the group <li> Renews, updates, extends, or removes an eligible membership/ownership assignment for the group <li> Deactivates, extends, or renews their own membership/ownership eligibility| [Create eligibilityScheduleRequest](../api/privilegedaccessgroup-post-eligibilityschedulerequests.md) |
| An administrator queries all eligible membership or ownership requests and their details | [List eligibilityScheduleRequests](../api/privilegedaccessgroup-list-eligibilityschedulerequests.md) |
| An administrator queries an eligible membership or ownership request and its details | [Get eligibilityScheduleRequest](../api/privilegedaccessgroupeligibilityschedulerequest-get.md) |
| An administrator cancels an eligible membership or ownership request they created | [privilegedAccessGroupEligibilityScheduleRequest:cancel](../api/privilegedaccessgroupeligibilityschedulerequest-cancel.md) |
| A principal queries their eligible membership or ownership request their details | [privilegedAccessGroupEligibilityScheduleRequest: filterByCurrentUser](../api/privilegedaccessgroupeligibilityschedulerequest-filterbycurrentuser.md) |

## Policy settings in PIM for groups

PIM for groups defines settings or rules that govern how principals can be assigned membership or ownership of security and Microsoft 365 groups. Such rules include whether multifactor authentication (MFA), justification, or approval is required to activate an eligible membership or ownership for a group, or whether you can create permanent assignments or eligibilities for principals to the groups. The rules are defined in policies and a policy can be applied to a group.

In Microsoft Graph, these rules are managed through the [unifiedRoleManagementPolicy](unifiedrolemanagementpolicy.md) and the [unifiedRoleManagementPolicyAssignment](unifiedrolemanagementpolicyassignment.md) resource types and their related methods.

For example, assume that by default, PIM for groups doesn't allow permanent active membership and ownership assignments and defines a maximum of six months for active assignments. Attempting to create a [privilegedAccessGroupAssignmentScheduleRequest](privilegedAccessGroupAssignmentScheduleRequest.md) object without expiry date returns a `400 Bad Request` response code for violation of the expiration rule.

PIM for groups allows you to configure various rules including:

- Whether principals can be assigned permanent eligible assignments
- The maximum duration allowed for a group membership or ownership activation and whether justification or approval is required to activate eligible membership or ownership
- The users who are allowed to approve activation requests for a group membership or ownership
- Whether MFA is required to both activate and enforce a group membership or ownership assignment
- The principals who get notified of group membership or ownership activations

The following table lists scenarios for using PIM for groups to manage rules and the APIs to call.

| Scenarios                                                                                                                                 | API                                                                                                      |
|--------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| Retrieve PIM for groups policies and associated rules or settings                                                                        | [List unifiedRoleManagementPolicies](../api/policyroot-list-rolemanagementpolicies.md)                   |
| Retrieve a PIM for groups policy and its associated rules or settings                                                                    | [Get unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-get.md)                             |
| Update a PIM for groups policy on its associated rules or settings                                                                    | [Update unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-update.md)                             |
| Retrieve the rules defined for a PIM for groups policy                                                                                     | [List rules](../api/unifiedrolemanagementpolicy-list-rules.md)                                           |
| Retrieve a rule defined for a PIM for groups policy                                                                                      | [Get unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicyrule-get.md)                     |
| Update a rule defined for a PIM for groups policy                                                                                        | [Update unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicyrule-update.md)                  |
| Get the details of all PIM for groups policy assignments, including the policies and rules associated with the groups membership and ownership  | [List unifiedRoleManagementPolicyAssignments](../api/policyroot-list-rolemanagementpolicyassignments.md) |
| Get the details of a PIM for groups policy assignment, including the policy and rules associated with the groups membership or ownership       | [Get unifiedRoleManagementPolicyAssignment](../api/unifiedrolemanagementpolicyassignment-get.md)         |

For more information about using Microsoft Graph to configure rules, see [Overview of rules in PIM APIs in Microsoft Graph](/graph/identity-governance-pim-rules-overview). For examples of updating rules, see [Use PIM APIs in Microsoft Graph to update rules](/graph/how-to-pim-update-rules).

## Onboarding groups to PIM for groups

You can't onboard a group to PIM for groups explicitly. When you make a request to add an assignment to a group by using [Create assignmentScheduleRequest](../api/privilegedaccessgroup-post-assignmentschedulerequests.md) or [Create eligibilityScheduleRequest](../api/privilegedaccessgroup-post-eligibilityschedulerequests.md), or you update PIM policy (role settings) for a group by using [Update unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-update.md) or [Update unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicyrule-update.md), the group is onboarded to PIM automatically if it wasn't onboarded before.

You can call [List assignmentScheduleRequests](../api/privilegedaccessgroup-list-assignmentschedulerequests.md), [List assignmentSchedules](../api/privilegedaccessgroup-list-assignmentschedules.md), [List assignmentScheduleInstances](../api/privilegedaccessgroup-list-assignmentscheduleinstances.md), [List eligibilityScheduleRequests](../api/privilegedaccessgroup-list-eligibilityschedulerequests.md), [List eligibilitySchedules](../api/privilegedaccessgroup-list-eligibilityschedules.md), and [List eligibilityScheduleInstances](../api/privilegedaccessgroup-list-eligibilityscheduleinstances.md) APIs for both groups that are onboarded to PIM and groups that aren't onboarded to PIM yet, but we recommend doing it only for groups that are onboarded to PIM to reduce the chances of getting throttled

After PIM onboards a group, IDs of the PIM policies and policy assignments of the specific group change. Call the [Get unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-get.md) or [Get unifiedRoleManagementPolicyAssignment](../api/unifiedrolemanagementpolicyassignment-get.md) API to get the updated IDs.

After PIM onboards a group, you can't offboard it, but you can remove all eligible and time-bound assignments as necessary.

## PIM for groups and the group object

Membership and ownership of any security and Microsoft 365 group (except dynamic groups and groups synchronized from on-premises) can be governed through PIM for groups. The group doesn't have to be role-assignable to be enabled in PIM for groups.

When you assign a principal *active* permanent or temporary membership or ownership of a group, or when they make a just-in-time activation:

- The principal's details are returned when you query the **members** and **owners** relationships through the [List group members](../api/group-list-members.md) or [List group owners](../api/group-list-owners.md) APIs.
- You can remove the principal from the group using the [Remove group owner](../api/group-delete-owners.md) or [Remove group member](../api/group-delete-members.md) APIs.
- If changes to the group are tracked using the [Get delta](../api/group-delta.md) and [Get delta for directory objects](../api/directoryobject-delta.md) functions, an `@odata.nextLink` contains the new member or owner.
- The changes to group **members** and **owners** made through PIM for groups are logged in Microsoft Entra audit logs and can be read through the [List directory audits](../api/directoryaudit-list.md) API.

When a principal is assigned *eligible* permanent or temporary membership or ownership of a group, the members and owners relationships of the group aren't updated.

When a principal's *temporary active* membership or ownership of a group expires:

- The principal's details are automatically removed from the **members** and **owners** relationships.
- If changes to the group are tracked using the [Get delta](../api/group-delta.md) and [Get delta for directory objects](../api/directoryobject-delta.md) functions, an `@odata.nextLink` indicates the removed group member or owner.

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->

## Permissions and privileges

The following Microsoft Graph permissions are required to call the PIM for groups APIs.

| Endpoints | Supported operations | Permissions |
|---|---|---|
| assignmentSchedule <br/> assignmentScheduleInstance | LIST, GET | PrivilegedAssignmentSchedule.Read.AzureADGroup <br/> PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup |
| assignmentScheduleRequest | CREATE, LIST, GET, UPDATE, DELELE | PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup |
| eligibilitySchedule <br/> eligibilityScheduleInstance | LIST, GET | PrivilegedEligibilitySchedule.Read.AzureADGroup <br/> PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup |
| eligibilityScheduleRequest | CREATE, LIST, GET, UPDATE, DELELE | PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup |
| approval | GET | PrivilegedAssignmentSchedule.Read.AzureADGroup <br/> PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup |
| approvalStep | LIST, GET | PrivilegedAssignmentSchedule.Read.AzureADGroup <br/> PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup |
| approvalStep | UPDATE | PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup |
| roleManagementPolicy <br/> roleManagementPolicyAssignment | LIST, GET | RoleManagementPolicy.Read.AzureADGroup <br/> RoleManagementPolicy.ReadWrite.AzureADGroup |
| roleManagementPolicy | UPDATE | RoleManagementPolicy.ReadWrite.AzureADGroup |

In addition, for delegated scenarios, the calling principal needs one of the following roles (not applicable to approval and approvalStep endpoints).

| Group | Role | Supported operations |
|---|---|---|
| Role-assignable | Privileged Role Administrator <br/> Group owner* <br/> Group member* | CREATE, UPDATE, DELELE |
| Role-assignable | Global Reader <br/> Privileged Role Administrator <br/> Group owner* <br/> Group member* | LIST, GET |
| Non-role-assignable | Directory Writer <br/> Groups Administrator <br/> Identity Governance Administrator <br/> User Administrator <br/> Group owner* <br/> Group member* | CREATE, UPDATE, DELELE |
| Non-role-assignable | Global Reader <br/> Directory Writer <br/> Groups Administrator <br/> Identity Governance Administrator <br/> User Administrator <br/> Group owner* <br/> Group member* | LIST, GET |

`*` Permissions for group members and group owners are limited to the read or write operations they need to perform. For example, a group member can [cancel their assignmentScheduleRequest](../api/privilegedaccessgroupassignmentschedulerequest-cancel.md) but not any other principal's request.

Only the approver of the request can call the `/approval` and `/approvalStep` endpoints. They don't have to be assigned any Microsoft Entra roles.


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
