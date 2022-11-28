---
title: "Overview of rules for Azure AD roles in privileged identity management (PIM) APIs"
description: "Learn how Azure AD rules in PIM are structures in Microsoft Graph and how they map with Azure portal descriptions."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "governance"
---

# Overview of rules for Azure AD roles in privileged identity management (PIM) APIs in Microsoft Graph

In Privileged Identity Management, each Azure AD role has settings that can fall in one of three categories: Activation settings, assignment settings, and notification settings. Such settings include whether multifactor authentication (MFA) is required to activate an eligible role, or whether you can create permanent assignments or eligibilities for principals to the role, or who gets PIM notifications.

When using the [privileged identity management APIs](/graph/api/resources/privilegedidentitymanagementv3-overview) in Microsoft Graph, these Azure AD settings are managed through policies and rules.

## Role management policies

In Microsoft Graph, the Azure AD role settings are called *rules*. These rules are grouped in and assigned to Azure AD roles through containers called policies. Each policy is read-only.

The policies are defined through the [unifiedRoleManagementPolicy resource type](/graph/api/resources/unifiedrolemanagementpolicy).

## Role management policy rules

While each policy is read-only, it contains 17 pre-defined rules that can be updated. These rules are managed through the **rules** relationship of the [unifiedRoleManagementPolicy resource type](/graph/api/resources/unifiedrolemanagementpolicy).

To group the rules into activation, assignment, and notification rules, Microsoft Graph defines the [unifiedRoleManagementPolicyRule resource type](/graph/api/resources/unifiedrolemanagementpolicyrule) abstract type. This abstract type is inherited by five resources. Each of these five derived types then defines rule configurations that can be one or more of 17 rules. The 17 rules are identified by unique and immutable rule IDs.

This article provides a mapping of the Azure portal Azure AD role settings to the corresponding rules in Microsoft Graph.

<!--
| Microsoft Graph objects | Activation rules | Assignment rules | Notification rules |
|---|---|---|---|
| Derived resource types | unifiedRoleManagementPolicyApprovalRule <br/> unifiedRoleManagementPolicyAuthenticationContextRule <br/> unifiedRoleManagementPolicyEnablementRule | unifiedRoleManagementPolicyExpirationRule | unifiedRoleManagementPolicyNotificationRule |
| Rule IDs | AuthenticationContext_EndUser_Assignment <br/> Approval_EndUser_Assignment <br/> Expiration_EndUser_Assignment <br/> Enablement_Admin_Eligibility | Enablement_EndUser_Assignment <br/> Enablement_Admin_Assignment <br/> Expiration_Admin_Assignment <br/> Expiration_Admin_Eligibility | Notification_Approver_EndUser_Assignment <br/> Notification_Requestor_EndUser_Assignment <br/> Notification_Admin_EndUser_Assignment <br/> Notification_Approver_Admin_Assignment <br/> Notification_Requestor_Admin_Assignment <br/> Notification_Admin_Admin_Assignment <br/> Notification_Approver_Admin_Eligibility <br/> Notification_Requestor_Admin_Eligibility <br/> Notification_Admin_Admin_Eligibility |
-->

## Mapping of rule IDs to Azure portal settings

<!--
Questions: Should I prefix "Role" to all titles below? I feel like it limits to "DirectoryRole" scope. What about the "Directory" scope? How do we handle this?

Where does this statement come in:
Azure AD supports policies that are scopes either to the directory or to a directory role. Both these policy scopes include the 17 pre-defined but updatable rules.
-->

### Activation rules

:::image type="content" source="../concepts/images/identity-governance-pim-ux-role-rules-screenshots/pim-ux-role-rule.activation.png" alt-text="PIM activation settings on the Azure portal":::

| Number          | Microsoft Graph Rule ID / Derived resource type                             | Azure Portal UX Description                                                              | Caller   |
|-----------------|-----------------------------------------------------------------------------|------------------------------------------------------------------------------------------|----------|
| ![one][one]     | `Enablement_EndUser_Assignment` / unifiedRoleManagementPolicyEnablementRule | Update justification and MFA requirements for active assignment.                         | End user |
| ![two][two]     | `Approval_EndUser_Assignment` / unifiedRoleManagementPolicyApprovalRule     | Require approval to activate.                                                            | End user |
| ![three][three] | `Expiration_EndUser_Assignment` / unifiedRoleManagementPolicyExpirationRule | Update the activation maximum duration in hours.                                         | End user |
| ![four][four]   | `Enablement_Admin_Eligibility` / unifiedRoleManagementPolicyEnablementRule  | Update the justification, MFA, and ticket information requirements upon role activation. | Admin    |

## Assignment rules

:::image type="content" source="../concepts/images/identity-governance-pim-ux-role-rules-screenshots/pim-ux-role-rule.assignment.png" alt-text="PIM assignment settings on the Azure portal":::

| Number          | Microsoft Graph Rule ID / Derived resource type                             | Azure Portal UX Description                                      | Caller   |
|-----------------|-----------------------------------------------------------------------------|------------------------------------------------------------------|----------|
| ![five][five]   | `Enablement_EndUser_Assignment` / unifiedRoleManagementPolicyExpirationRule | Update justification and MFA requirements for active assignment. | End user |
| ![six][six]     | `Enablement_Admin_Assignment` / unifiedRoleManagementPolicyExpirationRule   | Update justification and MFA requirements for active assignment  | Admin    |
| ![seven][seven] | `Expiration_Admin_Assignment` / unifiedRoleManagementPolicyExpirationRule   | Set expiration for active assignment.                            | Admin    |
| ![eight][eight] | `Expiration_Admin_Eligibility` / unifiedRoleManagementPolicyExpirationRule  | Set expiration for eligible assignment.                          | Admin    |

## Notification rules

:::image type="content" source="../concepts/images/identity-governance-pim-ux-role-rules-screenshots/pim-ux-role-rule.notification.png" alt-text="PIM notification settings on the Azure portal":::

| ![nine][nine]           | `Notification_Approver_EndUser_Assignment` / unifiedRoleManagementPolicyNotificationRule  | Send notifications when eligible members activate this role.           | Approver  |
|-------------------------|-------------------------------------------------------------------------------------------|------------------------------------------------------------------------|-----------|
| ![ten][ten]             | `Notification_Requestor_EndUser_Assignment` / unifiedRoleManagementPolicyNotificationRule | Send notifications when eligible members activate this role.           | Requestor |
| ![eleven][eleven]       | `Notification_Admin_EndUser_Assignment` / unifiedRoleManagementPolicyNotificationRule     | Send notifications when eligible members activate this role.           | Admin     |
| ![twelve][twelve]       | `Notification_Approver_Admin_Assignment` / unifiedRoleManagementPolicyNotificationRule    | Send notifications when members are assigned as eligible to this role. | Approver  |
| ![thirteen][thirteen]   | `Notification_Requestor_Admin_Assignment` / unifiedRoleManagementPolicyNotificationRule   | Send notifications when members are assigned as active to this role.   | Requestor |
| ![fourteen][fourteen]   | `Notification_Admin_Admin_Assignment` / unifiedRoleManagementPolicyNotificationRule       | Send notifications when members are assigned as active to this role.   | Admin     |
| ![fifteen][fifteen]     | `Notification_Approver_Admin_Eligibility` / unifiedRoleManagementPolicyNotificationRule   | Send notifications when members are assigned as eligible to this role. | Approver  |
| ![sixteen][sixteen]     | `Notification_Requestor_Admin_Eligibility` / unifiedRoleManagementPolicyNotificationRule  | Send notifications when members are assigned as eligible to this role. | Requestor |
| ![seventeen][seventeen] | `Notification_Admin_Admin_Eligibility` / unifiedRoleManagementPolicyNotificationRule      | Send notifications when members are assigned as eligible to this role. | Admin     |

## See also

+ [Overview of role management through the privileged identity management (PIM) API](/graph/api/resources/privilegedidentitymanagementv3-overview)
+ [Use PIM APIs in Microsoft Graph to update Azure AD rules](tutorial-pim-update-rules.md)
+ [Configure Azure AD role settings in Privileged Identity Management - Azure portal](/azure/active-directory/privileged-identity-management/pim-how-to-change-default-settings)

[one]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-1.png
[two]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-2.png
[three]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-3.png
[four]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-4.png
[five]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-5.png
[six]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-6.png
[seven]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-7.png
[eight]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-8.png
[nine]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-9.png
[ten]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-10.png
[eleven]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-11.png
[twelve]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-12.png
[thirteen]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-12.png
[fourteen]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-14.png
[fifteen]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-15.png
[sixteen]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-16.png
[seventeen]: ../concepts/images/identity-governance-pim-ux-role-rules-screenshots/circle-17.png

