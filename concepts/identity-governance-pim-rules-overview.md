---
title: "Overview of rules for Azure AD roles in privileged identity management (PIM) APIs"
description: "Learn how Azure AD rules in PIM are structures in Microsoft Graph and how they map with Azure portal descriptions."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.topic: conceptual
ms.prod: "governance"
---

# Overview of rules for Azure AD roles in privileged identity management (PIM) APIs in Microsoft Graph

In Privileged Identity Management, each Azure AD role has settings that can fall in one of three categories: Activation settings, assignment settings, and notification settings. Such settings include whether multifactor authentication (MFA) is required to activate an eligible role, or whether you can create permanent assignments to the role.

When using the [privileged identity management APIs](/graph/api/resources/privilegedidentitymanagementv3-overview) in Microsoft Graph, these Azure AD settings are managed through policies and rules.

## Role management policies

In Microsoft Graph, the Azure AD role settings are called *rules*. These rules are grouped in and assigned to Azure AD roles through containers called policies. Each policy is read-only.

The policies are defined through the [unifiedRoleManagementPolicy resource type](/graph/api/resources/unifiedrolemanagementpolicy).

## Role management policy rules

While each policy is read-only, it contains 17 pre-defined rules that can be updated. These rules are managed through the **rules** relationship of the [unifiedRoleManagementPolicy resource type](/graph/api/resources/unifiedrolemanagementpolicy).

To group the rules into activation, assignment, and notification rules, Microsoft Graph defines the [unifiedRoleManagementPolicyRule resource type](/graph/api/resources/unifiedrolemanagementpolicyrule) abstract type. This abstract type is inherited by five resources. Each of these five derived types then defines rule configurations that can be one or more of 17 rules. The 17 rules are identified by unique and immutable rule IDs.

This article provides a mapping of the Azure portal Azure AD role settings to the corresponding rules in Microsoft Graph.

## Mapping of rule IDs to Azure portal settings

<!--
Questions: Should I prefix "Role" to all titles below? I feel like it limits to "DirectoryRole" scope. What about the "Directory" scope? How do we handle this?

Where does this statement come in:
Azure AD supports policies that are scopes either to the directory or to a directory role. Both these policy scopes include the 17 pre-defined but updatable rules.
-->

### Activation rules

The following image shows the activation role settings on the Azure portal, mapped to rules and resource types in the PIM API in Microsoft Graph.

:::image type="content" source="images/identity-governance-pim-ux-role-rules-screenshots/pim-ux-role-rule.activation.png" alt-text="PIM role activation settings on the Azure portal.":::

| Number | Microsoft Graph Rule ID / Derived resource type                                                   | Azure portal UX Description                                                                                                                              | Enforced for caller |
|---------|----------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------|
| 1      | `Expiration_EndUser_Assignment` / unifiedRoleManagementPolicyExpirationRule                       | Activation maximum duration (hours)                                                                                                                      | End user            |
| 2      | `Enablement_Admin_Eligibility` / unifiedRoleManagementPolicyEnablementRule                        | On activation, require: None, Azure AD Multi-Factor Authentication <br/>Require ticket information on activation<br/>Require justification on activation | Admin               |
| 3      | `Approval_EndUser_Assignment` / unifiedRoleManagementPolicyApprovalRule                           | Require approval to activate                                                                                                                             | End user            |
| 4      | `AuthenticationContext_EndUser_Assignment` / unifiedRoleManagementPolicyAuthenticationContextRule | **Not implemented**                                                                                                                                      | End user            |

## Assignment rules

The following image shows the assignment role settings on the Azure portal, mapped to rules and resource types in the PIM API in Microsoft Graph.

:::image type="content" source="../concepts/images/identity-governance-pim-ux-role-rules-screenshots/pim-ux-role-rule.assignment.png" alt-text="PIM role assignment settings on the Azure portal.":::

| Number | Microsoft Graph Rule ID / Derived resource type                             | Azure portal UX Description                                                                                   | Enforced for caller |
|---------|------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|----------------------|
| 5      | `Expiration_Admin_Eligibility` / unifiedRoleManagementPolicyExpirationRule  | Allow permanent eligible assignment<br/>Expire eligible assignments after                                     | Admin               |
| 6      | `Expiration_Admin_Assignment` / unifiedRoleManagementPolicyExpirationRule   | Allow permanent active assignment<br/>Expire active assignments after                                         | Admin               |
| 7      | `Enablement_Admin_Assignment` / unifiedRoleManagementPolicyExpirationRule   | Require Azure Multi-Factor Authentication on active assignment<br/>Require justification on active assignment | Admin               |
| 8      | `Enablement_EndUser_Assignment` / unifiedRoleManagementPolicyExpirationRule | Require Azure Multi-Factor Authentication on active assignment<br/>Require justification on active assignment | End user            |

## Notification rules

The following image shows the notification role settings on the Azure portal, mapped to rules and resource types in the PIM API in Microsoft Graph.

:::image type="content" source="../concepts/images/identity-governance-pim-ux-role-rules-screenshots/pim-ux-role-rule.notification.png" alt-text="PIM role notification settings on the Azure portal.":::

| Number | Microsoft Graph Rule ID / Derived resource type                                           | Azure portal UX Description                                                                                                   | Enforced for caller               |
|--------|-------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|----------------------|
| 9      | `Notification_Approver_EndUser_Assignment` / unifiedRoleManagementPolicyNotificationRule  | Send notifications when eligible members activate this role: Request to approve an activation                                 | Approver             |
| 10     | `Notification_Requestor_EndUser_Assignment` / unifiedRoleManagementPolicyNotificationRule | Send notifications when eligible members activate this role: Notification to activated user (requestor)                       | Requestor            |
| 11     | `Notification_Admin_EndUser_Assignment` / unifiedRoleManagementPolicyNotificationRule     | Send notifications when eligible members activate this role: Role activation alert                                            | Admin                |
| 12     | `Notification_Approver_Admin_Assignment` / unifiedRoleManagementPolicyNotificationRule    | Send notifications when members are assigned as eligible to this role: request to approve a role assignment renewal/extension  | Approver             |
| 13     | `Notification_Requestor_Admin_Assignment` / unifiedRoleManagementPolicyNotificationRule   | Send notifications when members are assigned as active to this role: Notification to the assigned user (assignee)             | Assignee / Requestor |
| 14     | `Notification_Admin_Admin_Assignment` / unifiedRoleManagementPolicyNotificationRule       | Send notifications when members are assigned as active to this role: Role assignment alert                                    | Admin                |
| 15     | `Notification_Approver_Admin_Eligibility` / unifiedRoleManagementPolicyNotificationRule   | Send notifications when members are assigned as eligible to this role: Request to approve a role assignment renewal/extension | Approver             |
| 16     | `Notification_Requestor_Admin_Eligibility` / unifiedRoleManagementPolicyNotificationRule  | Send notifications when members are assigned as eligible to this role: Notification to the assigned user (assignee)           | Assignee / Requestor |
| 17     | `Notification_Admin_Admin_Eligibility` / unifiedRoleManagementPolicyNotificationRule      | Send notifications when members are assigned as eligible to this role: Role assignment alert                                  | Admin                |

## See also

+ [Overview of role management through the privileged identity management (PIM) API](/graph/api/resources/privilegedidentitymanagementv3-overview)
+ [Use PIM APIs in Microsoft Graph to update Azure AD rules](tutorial-pim-update-rules.md)
+ [Configure Azure AD role settings in Privileged Identity Management - Azure portal](/azure/active-directory/privileged-identity-management/pim-how-to-change-default-settings)