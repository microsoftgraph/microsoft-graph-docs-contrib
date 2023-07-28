---
title: "Manage Azure AD role assignments using the privileged identity management (PIM) APIs"
description: "Privileged Identity Management (PIM) is a feature of Azure AD Identity Governance that enables you to manage, control, and monitor access to important resources in your organization."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
ms.date: 07/19/2023
---

# Manage Azure AD role assignments using PIM APIs

Privileged Identity Management (PIM) is a feature of [Azure Active Directory (Azure AD) Identity Governance](#see-also) that enables you to manage, control, and monitor access to important resources in your organization. One method through which principals such as users, groups, and service principals (applications) are granted access to important resources is through assignment of [Azure AD roles](/azure/active-directory/roles/permissions-reference?toc=%2Fgraph%2Ftoc.json).

The PIM for Azure AD roles APIs allow you to govern privileged access and limit excessive access to Azure AD roles. This article introduces the governance capabilities of PIM for Azure AD roles APIs in Microsoft Graph.

> [!NOTE]
> To manage Azure resource roles use the [PIM APIs for Azure Resource Manager (ARM)](/rest/api/authorization/privileged-role-eligibility-rest-sample).

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

Each Azure AD role defines settings or rules. Such rules include whether multifactor authentication (MFA), justification, or approval is required to activate an eligible role, or whether you can create permanent assignments or eligibilities for principals to the role. These role-specific rules will determine the settings you can apply while creating or managing role assignments and eligibilities through PIM.

In Microsoft Graph, these rules are managed through the [unifiedRoleManagementPolicy](unifiedrolemanagementpolicy.md) and the [unifiedRoleManagementPolicyAssignment](unifiedrolemanagementpolicyassignment.md) resource types and their related methods.

For example, assume that by default, a role doesn't allow permanent active assignments and defines a maximum of 15 days for active assignments. Attempting to create a [unifiedRoleAssignmentScheduleRequest](unifiedroleassignmentschedulerequest.md) object without expiry date will return a `400 Bad Request` response code for violation of the expiration rule.

PIM allows you to configure various rules including the following:

- Whether principals can be assigned permanent eligible assignments
- The maximum duration allowed for a role activation and whether justification or approval is required to activate eligible roles
- The users who are allowed to approve activation requests for an Azure AD role
- Whether MFA is required to both activate and enforce a role assignment
- The principals who get notified of role activations

The following table lists scenarios for using PIM to manage Azure AD rules and the APIs to call.

| Scenarios                                                                                                                                 | API                                                                                                      |
|--------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| Retrieve role management policies and associated rules or settings                                                                        | [List unifiedRoleManagementPolicies](../api/policyroot-list-rolemanagementpolicies.md)                   |
| Retrieve a role management policy and its associated rules or settings                                                                    | [Get unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-get.md)                             |
| Update a role management policy on its associated rules or settings                                                                    | [Update unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-update.md)                             |
| Retrieve the rules defined for role management policy                                                                                     | [List rules](../api/unifiedrolemanagementpolicy-list-rules.md)                                           |
| Retrieve a rule defined for a role management policy                                                                                      | [Get unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicyrule-get.md)                     |
| Update a rule defined for a role management policy                                                                                        | [Update unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicyrule-update.md)                  |
| Get the details of all role management policy assignments including the policies and rules or settings associated with the Azure AD roles | [List unifiedRoleManagementPolicyAssignments](../api/policyroot-list-rolemanagementpolicyassignments.md) |
| Get the details of a role management policy assignment including the policy and rules or settings associated with the Azure AD role       | [Get unifiedRoleManagementPolicyAssignment](../api/unifiedrolemanagementpolicyassignment-get.md)         |

For more information about using Microsoft Graph to configure rules, see [Overview of rules for Azure AD roles in PIM APIs in Microsoft Graph](/graph/identity-governance-pim-rules-overview). For examples of updating rules, see [Use PIM APIs in Microsoft Graph to update Azure AD rules](/graph/how-to-pim-update-rules).

## Security alerts for Azure AD roles

PIM for Azure AD roles generates alerts when it detects suspicious or unsafe settings for Azure AD roles in your tenant. The following seven alert types are available:

| Alert                                                                        | Comments |
|------------------------------------------------------------------------------|----------|
| Too many global administrators in the tenant                                 | For more information about this alert including the severity rating and triggers, see, [Configure security alerts for Azure AD roles in PIM: There are too many global administrators](/azure/active-directory/privileged-identity-management/pim-how-to-configure-security-alerts#there-are-too-many-global-administrators).          |
| Invalid license alerts that limit the use of PIM                             | For more information about this alert including the severity rating and triggers, see, [Configure security alerts for Azure AD roles in PIM: The organization doesn't have Microsoft Entra Premium P2 or Microsoft Entra ID Governance](/azure/active-directory/privileged-identity-management/pim-how-to-configure-security-alerts#the-organization-doesnt-have-microsoft-entra-premium-p2-or-microsoft-entra-id-governance).         |
| Roles configured for activation without requiring multifactor authentication | For more information about this alert including the severity rating and triggers, see, [Configure security alerts for Azure AD roles in PIM: Roles don't require multi-factor authentication for activation](/azure/active-directory/privileged-identity-management/pim-how-to-configure-security-alerts#roles-dont-require-multi-factor-authentication-for-activation).         |
| Users with unused eligible or active Azure AD role assignments               | For more information about this alert including the severity rating and triggers, see, [Configure security alerts for Azure AD roles in PIM: Administrators aren't using their privileged roles](/azure/active-directory/privileged-identity-management/pim-how-to-configure-security-alerts#administrators-arent-using-their-privileged-roles).       |
| Azure AD roles being assigned outside of Privileged Identity Management      | For more information about this alert including the severity rating and triggers, see, [Configure security alerts for Azure AD roles in PIM: Roles are being assigned outside of Privileged Identity Management](/azure/active-directory/privileged-identity-management/pim-how-to-configure-security-alerts#roles-are-being-assigned-outside-of-privileged-identity-management).          |
| Azure AD roles being activated too frequently                                | For more information about this alert including the severity rating and triggers, see, [Configure security alerts for Azure AD roles in PIM: Roles are being activated too frequently](/azure/active-directory/privileged-identity-management/pim-how-to-configure-security-alerts#roles-are-being-activated-too-frequently).          |
| Potential stale accounts in a privileged role                                | For more information about this alert including the severity rating and triggers, see, [Configure security alerts for Azure AD roles in PIM: Potential stale accounts in a privileged role](/azure/active-directory/privileged-identity-management/pim-how-to-configure-security-alerts#potential-stale-accounts-in-a-privileged-role).         |

### Building blocks of the PIM alerts APIs

Use the following Microsoft Graph resources to manage PIM alerts.

| Resource | Description | API operations|
|--|--|--|
| [unifiedRoleManagementAlert](unifiedrolemanagementalert.md) | Provides a summary of alerts in PIM for Azure AD roles, whether they are enabled or disabled, when the PIM service last scanned the tenant for incidences or this alert, and the number of incidences mapping to this alert type in the tenant. The PIM service scans the tenant daily for incidences relating to the alert but you can also run a manual scan. All the details are | [List](../api/rolemanagementalert-list-alerts.md) <br/><br/> [Get](../api/unifiedrolemanagementalert-get.md) <br/><br/> [Update](../api/unifiedrolemanagementalert-update.md) <br/><br/> [Refresh (Manual scan)](../api/unifiedrolemanagementalert-refresh.md)|
| [unifiedRoleManagementAlertDefinition](unifiedrolemanagementalertdefinition.md) | Provides detailed description of each alert type, the severity level, the recommended steps to mitigate incidences relating to the alert in the tenant, and the recommended actions to prevent future incidences. | [List](../api/rolemanagementalert-list-alertdefinitions.md) <br/><br/> [Get](../api/unifiedrolemanagementalertdefinition-get.md) |
| [unifiedRoleManagementAlertConfiguration](unifiedrolemanagementalertconfiguration.md) | The tenant-specific configuration for the alert including whether the PIM service should scan the tenant for incidences relating to the alert, the thresholds that trigger the alert, and the related alert definition. This is an abstract type from which resources that represent the individual alert types are derived. | [List](../api/rolemanagementalert-list-alertconfigurations.md) <br/><br/> [Get](../api/unifiedrolemanagementalertconfiguration-get.md) <br/><br/> [Update](../api/unifiedrolemanagementalertconfiguration-update.md)|
| [unifiedRoleManagementAlertIncident](unifiedrolemanagementalertincident.md) | The incidences in the tenant that match the alert type. | [List](../api/unifiedrolemanagementalert-list-alertincidents.md) <br/><br/> [Get](../api/unifiedrolemanagementalertincident-get.md) <br/><br/> [Remediate](../api/unifiedrolemanagementalertincident-remediate.md) |


For more information about working with security alerts for Azure AD roles, see [Configure security alerts for Azure AD roles in Privileged Identity Management](/azure/active-directory/privileged-identity-management/pim-how-to-configure-security-alerts).

## PIM and identity security with Zero Trust

PIM APIs support organizations to adopt a Zero Trust approach to secure the identities in their organization. For more information about Zero Trust, see [Securing identity with Zero Trust](/security/zero-trust/deploy/identity#secure-privileged-access-with-privileged-identity-management).

## Permissions and privileges

The following permissions are supported for PIM for Azure AD roles API operations:

|Permissions  |Supported operations  |
|---------|---------|
| RoleAssignmentSchedule.Read.Directory <br/> RoleAssignmentSchedule.ReadWrite.Directory <br/> RoleManagement.Read.Directory <br/> RoleManagement.ReadWrite.Directory     | To manage role assignment operations.        |
| RoleEligibilitySchedule.Read.Directory <br/> RoleEligibilitySchedule.ReadWrite.Directory <br/> RoleManagement.Read.Directory <br/> RoleManagement.ReadWrite.Directory    | To manage role eligibility operations.         |
| RoleManagementAlert.Read.Directory <br/> RoleManagementAlert.ReadWrite.Directory <br/> RoleManagement.Read.Directory <br/> RoleManagement.ReadWrite.Directory    | To manage security alerts for Azure AD roles.         |

For delegated scenarios, the signed-in user must be assigned the *Privileged Role Administrator* or *Global Administrator* role in Azure AD. 

## Licensing

The tenant where Privileged Identity Management is being used must have sufficient purchased or trial licenses. For more information, see [License requirements to use Privileged Identity Management](/azure/active-directory/privileged-identity-management/subscription-requirements).

## See also

- [What is Azure AD Identity Governance?](/azure/active-directory/governance/identity-governance-overview)
- [What is Azure AD Privileged Identity Management?](/azure/active-directory/privileged-identity-management/pim-configure)
- [Tutorial: Use the Privileged Identity Management (PIM) API to assign Azure AD roles](/graph/tutorial-assign-azureadroles)
- You can also set up access reviews of role assignments and eligibilities that are managed through PIM. For more information, see [Tutorial: Use the Privileged Identity Management (PIM) API to assign Azure AD roles](/graph/tutorial-assign-azureadroles).
