---
title: "Manage Microsoft Entra role assignments using the privileged identity management (PIM) APIs"
description: "Privileged Identity Management (PIM) is a feature of Microsoft Entra ID Governance that enables you to manage, control, and monitor access to important resources in your organization."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: conceptualPageType
ms.date: 10/12/2023
---

# Manage Microsoft Entra role assignments using PIM APIs

[Privileged Identity Management (PIM)](/azure/active-directory/privileged-identity-management/pim-configure) is a feature of Microsoft Entra ID Governance that enables you to manage, control, and monitor access to important resources in your organization. One method through which principals such as users, groups, and service principals (applications) are granted access to important resources is through assignment of [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

The PIM for Microsoft Entra roles APIs allow you to govern privileged access and limit excessive access to Microsoft Entra roles. This article introduces the governance capabilities of PIM for Microsoft Entra roles APIs in Microsoft Graph.

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

Each Microsoft Entra role defines settings or rules. Such rules include whether multifactor authentication (MFA), justification, or approval is required to activate an eligible role, or whether you can create permanent assignments or eligibilities for principals to the role. These role-specific rules determine the settings you can apply while creating or managing role assignments and eligibilities through PIM.

In Microsoft Graph, these rules are managed through the [unifiedRoleManagementPolicy](unifiedrolemanagementpolicy.md) and the [unifiedRoleManagementPolicyAssignment](unifiedrolemanagementpolicyassignment.md) resource types and their related methods.

For example, assume that by default, a role doesn't allow permanent active assignments and defines a maximum of 15 days for active assignments. Attempting to create a [unifiedRoleAssignmentScheduleRequest](unifiedroleassignmentschedulerequest.md) object without expiry date returns a `400 Bad Request` response code for violation of the expiration rule.

PIM allows you to configure various rules including:

- Whether principals can be assigned permanent eligible assignments
- The maximum duration allowed for a role activation and whether justification or approval is required to activate eligible roles
- The users who are allowed to approve activation requests for a Microsoft Entra role
- Whether MFA is required to both activate and enforce a role assignment
- The principals who get notified of role activations

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

For more information about using Microsoft Graph to configure rules, see [Overview of rules for Microsoft Entra roles in PIM APIs in Microsoft Graph](/graph/identity-governance-pim-rules-overview). For examples of updating rules, see [Use PIM APIs in Microsoft Graph to update Microsoft Entra ID rules](/graph/how-to-pim-update-rules).

<a name='security-alerts-for-azure-ad-roles'></a>

## Security alerts for Microsoft Entra roles

PIM for Microsoft Entra roles generates alerts when it detects suspicious or unsafe settings for Microsoft Entra roles in your tenant. The following seven alert types are available:

| Alert | Microsoft Graph resources (alert configuration / incidents) |
|--|--|
| Too many global administrators in the tenant | [tooManyGlobalAdminsAssignedToTenantAlertConfiguration](/graph/api/resources/toomanyglobaladminsassignedtotenantalertconfiguration) / [tooManyGlobalAdminsAssignedToTenantAlertIncident](/graph/api/resources/toomanyglobaladminsassignedtotenantalertincident) |
| Invalid license alerts that limit the use of PIM | [invalidLicenseAlertConfiguration](/graph/api/resources/invalidlicensealertconfiguration) / [invalidLicenseAlertIncident](/graph/api/resources/invalidlicensealertincident) |
| Roles configured for activation without requiring multifactor authentication | [noMfaOnRoleActivationAlertConfiguration](/graph/api/resources/nomfaonroleactivationalertconfiguration) / [noMfaOnRoleActivationAlertIncident](/graph/api/resources/nomfaonroleactivationalertincident) |
| Users with unused eligible or active Microsoft Entra role assignments | [redundantAssignmentAlertConfiguration](/graph/api/resources/redundantassignmentalertconfiguration) / [redundantAssignmentAlertIncident](/graph/api/resources/redundantassignmentalertincident) |
| Microsoft Entra roles being assigned outside of Privileged Identity Management | [rolesAssignedOutsidePrivilegedIdentityManagementAlertConfiguration](/graph/api/resources/rolesassignedoutsideprivilegedidentitymanagementalertconfiguration) / [rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident](/graph/api/resources/rolesassignedoutsideprivilegedidentitymanagementalertincident) |
| Microsoft Entra roles being activated too frequently | [sequentialActivationRenewalsAlertConfiguration](/graph/api/resources/sequentialactivationrenewalsalertconfiguration) / [sequentialActivationRenewalsAlertIncident](/graph/api/resources/sequentialactivationrenewalsalertincident) |
| Potential stale accounts in a privileged role | [staleSignInAlertConfiguration](/graph/api/resources/stalesigninalertconfiguration) / [staleSignInAlertIncident](/graph/api/resources/stalesigninalertincident) |

For more information about these alerts including the severity rating and triggers, see, [Configure security alerts for Microsoft Entra roles in PIM](/azure/active-directory/privileged-identity-management/pim-how-to-configure-security-alerts).

### Building blocks of the PIM alerts APIs

Use the following Microsoft Graph resources to manage PIM alerts.

| Resource | Description | API operations|
|--|--|--|
| [unifiedRoleManagementAlert](unifiedrolemanagementalert.md) | Provides a summary of alerts in PIM for Microsoft Entra roles, whether they're enabled or disabled, when the PIM service last scanned the tenant for incidences or this alert, and the number of incidences mapping to this alert type in the tenant. The PIM service scans the tenant daily for incidences relating to the alert but you can also run a manual scan.| [List](../api/rolemanagementalert-list-alerts.md) <br/><br/> [Get](../api/unifiedrolemanagementalert-get.md) <br/><br/> [Update](../api/unifiedrolemanagementalert-update.md) <br/><br/> [Refresh (Manual scan)](../api/unifiedrolemanagementalert-refresh.md)|
| [unifiedRoleManagementAlertDefinition](unifiedrolemanagementalertdefinition.md) | Provides detailed description of each alert type, the severity level, the recommended steps to mitigate incidences relating to the alert in the tenant, and the recommended actions to prevent future incidences. | [List](../api/rolemanagementalert-list-alertdefinitions.md) <br/><br/> [Get](../api/unifiedrolemanagementalertdefinition-get.md) |
| [unifiedRoleManagementAlertConfiguration](unifiedrolemanagementalertconfiguration.md) | The tenant-specific configuration for the alert including whether the PIM service should scan the tenant for incidences relating to the alert, the thresholds that trigger the alert, and the related alert definition. This is an abstract type from which resources that represent the individual alert types are derived. | [List](../api/rolemanagementalert-list-alertconfigurations.md) <br/><br/> [Get](../api/unifiedrolemanagementalertconfiguration-get.md) <br/><br/> [Update](../api/unifiedrolemanagementalertconfiguration-update.md)|
| [unifiedRoleManagementAlertIncident](unifiedrolemanagementalertincident.md) | The incidences in the tenant that match the alert type. | [List](../api/unifiedrolemanagementalert-list-alertincidents.md) <br/><br/> [Get](../api/unifiedrolemanagementalertincident-get.md) <br/><br/> [Remediate](../api/unifiedrolemanagementalertincident-remediate.md) |


For more information about working with security alerts for Microsoft Entra roles, see [Configure security alerts for Microsoft Entra roles in Privileged Identity Management](/azure/active-directory/privileged-identity-management/pim-how-to-configure-security-alerts).

For more information about working with security alerts for Microsoft Entra roles using PIM APIs, see [Manage security alerts for Microsoft Entra roles using PIM APIs in Microsoft Graph](/graph/how-to-pim-alerts).

## Audit logs

All activities made through PIM for Microsoft Entra roles are logged in Microsoft Entra audit logs and you can read through the [List directory audits](/graph/api/directoryaudit-list) API.

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->

<!--
## Permissions and privileges

The following permissions are supported for PIM for Microsoft Entra roles API operations:

|Permissions  |Supported operations  |
|---------|---------|
| RoleAssignmentSchedule.Read.Directory <br/> RoleAssignmentSchedule.ReadWrite.Directory <br/> RoleManagement.Read.Directory <br/> RoleManagement.ReadWrite.Directory     | To manage role assignment operations.        |
| RoleEligibilitySchedule.Read.Directory <br/> RoleEligibilitySchedule.ReadWrite.Directory <br/> RoleManagement.Read.Directory <br/> RoleManagement.ReadWrite.Directory    | To manage role eligibility operations.         |
| RoleManagementAlert.Read.Directory <br/> RoleManagementAlert.ReadWrite.Directory <br/> RoleManagement.Read.Directory <br/> RoleManagement.ReadWrite.Directory    | To manage security alerts for Microsoft Entra roles.         |

For delegated scenarios, the signed-in user must be assigned the *Privileged Role Administrator* or *Global Administrator* role in Microsoft Entra ID.
-->
## Licensing

The tenant where Privileged Identity Management is being used must have enough purchased or trial licenses. For more information, see [License requirements to use Privileged Identity Management](/azure/active-directory/privileged-identity-management/subscription-requirements).

## Related content

- See the following articles to learn more about working with PIM APIs:
  - [Working with rules for Microsoft Entra roles in PIM APIs](/graph/identity-governance-pim-rules-overview).
  - [Use PIM APIs to update rules (settings) for Microsoft Entra roles](/graph/how-to-pim-update-rules).
  - [Manage security alerts for Microsoft Entra roles using PIM APIs in Microsoft Graph](/graph/how-to-pim-alerts).
  - [Tutorial: Use PIM APIs to assign Microsoft Entra roles](/graph/tutorial-assign-azureadroles).
- To learn more about security operations, see [Microsoft Entra security operations for Privileged Identity Management](/azure/active-directory/architecture/security-operations-privileged-identity-management?source=docs#privileged-identity-management-alerts) in the Microsoft Entra architecture center.


<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": []
} -->
