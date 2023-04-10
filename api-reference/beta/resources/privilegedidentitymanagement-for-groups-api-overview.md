---
title: "Govern membership and ownership of Azure AD groups using the privileged identity management (PIM) API for groups"
description: "Privileged Identity Management (PIM) is a feature of Azure AD Identity Governance that enables you to manage, control, and monitor access to important resources, such as groups, in your organization."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
ms.date: 03/22/2023
---

# Govern membership and ownership of Azure AD groups using PIM for groups

With Privileged Identity Management for groups (PIM for groups), you can govern how principals are assigned membership or ownership of [Azure AD groups](groups-overview.md). Security and Microsoft 365 groups are critical resources that you can use to provide access to various other resources in the Microsoft cloud like Azure AD roles, Azure roles, Azure SQL, Azure Key Vault, Intune, and third-party applications. PIM for groups gives you more control over how and when principals are members or owners of groups, and therefore have privileges granted through their group memberhip or ownership.

The PIM for groups APIs in Microsoft Graph provide you with more governance over security and Microsoft 365 groups such as the following capabilities:

- Providing principals just-in-time membership or ownership of groups
- Assigning principals temporary membership or ownership of groups

This article introduces the governance capabilities of the APIs for PIM for Azure AD groups in Microsoft Graph.

## PIM for groups APIs for managing active assignments of group owners and members

The PIM for groups APIs in Microsoft Graph allow you to assign principals permanent or temporary and time-bound membership or ownership to groups.

The following table lists scenarios for using PIM for groups APIs to manage active assignments for principals and the corresponding APIs to call.

| **Scenarios** | **API** |
| --- | --- |
| An administrator: <li>Assigns a principal active membership or ownership to a group <li> Renews, updates, extends, or removes a principal from their active membership or ownership to a group <br/><br/> A principal: <li> Performs just-in-time and time-bound activation of their _eligible_ membership or ownership assignment for a group <li> Deactivates their eligible membership and ownership assignment it when they no longer need access <li> Deactivates, extends, or renews their own membership and ownership assignment| [Create assignmentScheduleRequest](../api/privilegedaccessgroup-post-assignmentschedulerequests.md) |
| An administrator: <li> Queries all requests for active membership and ownership assignments for a group <li> |[List assignmentScheduleRequests](../api/privilegedaccessgroup-list-assignmentschedulerequests.md) |
| An administrator lists all requests for active group membership and ownership that are past, future, and current assignments | [List assignmentSchedules](../api/privilegedaccessgroup-list-assignmentschedules.md) |
| An administrator lists all active membership and ownership assignments for a group | [List assignmentScheduleInstances](../api/privilegedaccessgroup-list-assignmentscheduleinstances.md) |
| An administrator queries a member and ownership assignment for a group and its details | [Get privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroupassignmentschedulerequest-get.md) |
| A principal queries their membership or ownership assignment requests and the details | [privilegedAccessGroupAssignmentScheduleRequest: filterByCurrentUser](../api/privilegedaccessgroupassignmentschedulerequest-filterbycurrentuser.md) |
| A principal cancels a membership or ownership assignment request they created | [privilegedAccessGroupAssignmentScheduleRequest: cancel](../api/privilegedaccessgroupassignmentschedulerequest-cancel.md) |

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

## PIM for groups and the group object

Membership and ownership of any security and Microsoft 365 group (except dynamic groups and groups synchronized from on-premises) can be governed through PIM for groups. The group doesn't have to be role-assignable to be enabled in PIM for groups.

When a principal is assigned *active* permanent or temporary membership or ownership of a group, or when they make a just-in-time activation:

- The principal's details are returned when you query the **members** and **owners** relationships through the [List group members](../api/group-list-members.md) or [List group owners](../api/group-list-owners.md) APIs.
- You can remove the principal from the group using the [Remove group owner](../api/group-delete-owners.md) or [Remove group member](../api/group-delete-members.md) APIs.
- If changes to the group are tracked using the [Get delta](../api/group-delta.md) and [Get delta for directory objects](../api/directoryobject-delta.md) functions, an `@odata.nextLink` contains the new member or owner.
- The changes to group **members** and **owners** made through PIM for groups are logged in Azure AD audit logs and can be read through the [List directory audits](../api/directoryaudit-list.md) API.

When a principal is assigned *eligible* permanent or temporary membership or ownership of a group, the members and owners relationships of the group aren't updated.

When a principal's *temporary active* membership or ownership of a group expires:

- The principal's details are automatically removed from the **members** and **owners** relationships.
- If changes to the group are tracked using the [Get delta](../api/group-delta.md) and [Get delta for directory objects](../api/directoryobject-delta.md) functions, an `@odata.nextLink` indicates the removed group member or owner.

## PIM for groups and identity security with Zero Trust

PIM APIs support organizations to adopt a Zero Trust approach to secure the identities in their organization. For more information about Zero Trust, see [Securing identity with Zero Trust](/security/zero-trust/deploy/identity#secure-privileged-access-with-privileged-identity-management).

## Permissions and privileges

The following Microsoft Graph permissions are required to call the PIM for groups APIs.

| Permission | Supported operations | Endpoints |
|---|---|---|
| assignmentSchedule <br/> assignmentScheduleInstance | LIST, GET | PrivilegedAssignmentSchedule.Read.AzureADGroup <br/> PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup |
| assignmentScheduleRequest | CREATE, LIST, GET, UPDATE, DELELE | PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup |
| eligibilitySchedule <br/> eligibilityScheduleInstance | LIST, GET | PrivilegedEligibilitySchedule.Read.AzureADGroup <br/> PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup |
| eligibilityScheduleRequest | CREATE, LIST, GET, UPDATE, DELELE | PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup |


In addition, for delegated scenarios, the calling principal needs one of the following roles.

| Group | Role | Supported operations |
|---|---|---|
| Role-assignable | Privileged Role Administrator <br/> Group owner* <br/> Group member* | CREATE, UPDATE, DELELE |
| Role-assignable | Global Reader <br/> Privileged Role Administrator <br/> Group owner* <br/> Group member* | LIST, GET |
| Non-role-assignable | Directory Writer <br/> Groups Administrator <br/> Identity Governance Administrator <br/> User Administrator <br/> Group owner* <br/> Group member* | CREATE, UPDATE, DELELE |
| Non-role-assignable | Global Reader <br/> Directory Writer <br/> Groups Administrator <br/> Identity Governance Administrator <br/> User Administrator <br/> Group owner* <br/> Group member* | LIST, GET |

`*` Permissions for group members and group owners are limited to the read or write operations they need to perform. For example, a group member can [cancel their assignmentScheduleRequest](../api/privilegedaccessgroupassignmentschedulerequest-cancel.md) but not any other principal's request.


## See also

- [What is Azure AD Identity Governance?](/azure/active-directory/governance/identity-governance-overview)
- [What is Azure AD Privileged Identity Management?](/azure/active-directory/privileged-identity-management/pim-configure)
- [Privileged Identity Management (PIM) for Groups (preview)](/azure/active-directory/privileged-identity-management/concept-pim-for-groups)
  
  <!-- {
  "type": "#page.annotation",
  "description": "Govern membership and ownership of Azure AD groups using the privileged identity management (PIM) API for groups",
  "section": "documentation",
  "suppressions": [
    "Error: /resources/privilegedidentitymanagement-for-groups-api-overview.md:
      Failed to parse enumeration values for type microsoft.graph.and. Table requires a column header named one of the following: Member, Name, Value"
  ]
}-->
