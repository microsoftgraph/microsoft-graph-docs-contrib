---
title: "Overview of rules for Azure AD roles in privileged identity management (PIM) APIs"
description: "Learn how Azure AD rules in PIM are structures in Microsoft Graph and how they map with Azure portal descriptions."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: rianakarim
ms.localizationpriority: medium
ms.topic: conceptual
ms.prod: "governance"
ms.date: 12/07/2022
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

| Number | Azure portal UX Description                                                                                                                                        | Microsoft Graph Rule ID / Derived resource type                                                   | Enforced for caller |
|---------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|----------------------|
| 1      | Activation maximum duration (hours)                                                                                                                                | `Expiration_EndUser_Assignment` / unifiedRoleManagementPolicyExpirationRule                       | End user            |
| 2      | On activation, require: None, Azure AD Multi-Factor Authentication <br/><br/>Require ticket information on activation<br/><br/>Require justification on activation | `Enablement_Admin_Eligibility` / unifiedRoleManagementPolicyEnablementRule                        | Admin               |
| 3      | On activation, require: Azure AD Conditional Access authentication context (Preview)                                                                               | `AuthenticationContext_EndUser_Assignment` / unifiedRoleManagementPolicyAuthenticationContextRule | End user            |
| 4      | Require approval to activate                                                                                                                                       | `Approval_EndUser_Assignment` / unifiedRoleManagementPolicyApprovalRule                           | End user            |

## Assignment rules

The following image shows the assignment role settings on the Azure portal, mapped to rules and resource types in the PIM API in Microsoft Graph.

:::image type="content" source="../concepts/images/identity-governance-pim-ux-role-rules-screenshots/pim-ux-role-rule.assignment.png" alt-text="PIM role assignment settings on the Azure portal.":::

| Number | Azure portal UX Description                                                                                                                                          | Microsoft Graph Rule ID / Derived resource type                             | Enforced for caller |
|---------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|----------------------|
| 5      | Allow permanent eligible assignment<br/><br/>Expire eligible assignments after                                                                                       | `Expiration_Admin_Eligibility` / unifiedRoleManagementPolicyExpirationRule  | Admin               |
| 6      | Allow permanent active assignment<br/><br/>Expire active assignments after                                                                                           | `Expiration_Admin_Assignment` / unifiedRoleManagementPolicyExpirationRule   | Admin               |
| 7      | Require Azure Multi-Factor Authentication on active assignment<br/><br/>Require justification on active assignment<br/><br/>Require ticket information on activation | `Enablement_Admin_Assignment` / unifiedRoleManagementPolicyExpirationRule   | Admin               |
| 8      | Require Azure Multi-Factor Authentication on active assignment<br/><br/>Require justification on active assignment<br/><br/>Require ticket information on activation | `Enablement_EndUser_Assignment` / unifiedRoleManagementPolicyExpirationRule | End user            |

## Notification rules

The following image shows the notification role settings on the Azure portal, mapped to rules and resource types in the PIM API in Microsoft Graph.

:::image type="content" source="../concepts/images/identity-governance-pim-ux-role-rules-screenshots/pim-ux-role-rule.notification.png" alt-text="PIM role notification settings on the Azure portal.":::

| Number | Azure portal UX Description | Microsoft Graph Rule ID / Derived resource type | Enforced for caller |
|---|---|---|---|
| 9 | Send notifications when members are assigned as eligible to this role: Role assignment alert | `Notification_Admin_Admin_Eligibility` / unifiedRoleManagementPolicyNotificationRule | Admin |
| 10 | Send notifications when members are assigned as eligible to this role: Notification to the assigned user (assignee) | `Notification_Requestor_Admin_Eligibility` / unifiedRoleManagementPolicyNotificationRule | Assignee / Requestor |
| 11 | Send notifications when members are assigned as eligible to this role: request to approve a role assignment renewal/extension | `Notification_Approver_Admin_Assignment` / unifiedRoleManagementPolicyNotificationRule | Approver |
| 12 | Send notifications when members are assigned as active to this role: Role assignment alert | `Notification_Admin_Admin_Assignment` / unifiedRoleManagementPolicyNotificationRule | Admin |
| 13 | Send notifications when members are assigned as active to this role: Notification to the assigned user (assignee) | `Notification_Requestor_Admin_Assignment` / unifiedRoleManagementPolicyNotificationRule | Assignee / Requestor |
| 14 | Send notifications when members are assigned as active to this role: Request to approve a role assignment renewal/extension | `Notification_Approver_Admin_Eligibility` / unifiedRoleManagementPolicyNotificationRule | Approver |
| 15 | Send notifications when eligible members activate this role: Role activation alert | `Notification_Admin_EndUser_Assignment` / unifiedRoleManagementPolicyNotificationRule | Admin |
| 16 | Send notifications when eligible members activate this role: Notification to activated user (requestor) | `Notification_Requestor_EndUser_Assignment` / unifiedRoleManagementPolicyNotificationRule | Requestor |
| 17 | Send notifications when eligible members activate this role: Request to approve an activation | `Notification_Approver_EndUser_Assignment` / unifiedRoleManagementPolicyNotificationRule | Approver |

## See also

+ [Overview of role management through the privileged identity management (PIM) API](/graph/api/resources/privilegedidentitymanagementv3-overview)
+ [Use PIM APIs in Microsoft Graph to update Azure AD rules](how-to-pim-update-rules.md)
+ [Configure Azure AD role settings in Privileged Identity Management - Azure portal](/azure/active-directory/privileged-identity-management/pim-how-to-change-default-settings)