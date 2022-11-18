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

The following table breaks down the three categories of rules into the Microsoft Graph resources through which they can be configured, and the rules that can be in each resource.

| Microsoft Graph objects | Activation rules | Assignment rules | Notification rules |
|---|---|---|---|
| Derived resource types | unifiedRoleManagementPolicyApprovalRule <br/> unifiedRoleManagementPolicyAuthenticationContextRule <br/> unifiedRoleManagementPolicyEnablementRule | unifiedRoleManagementPolicyExpirationRule | unifiedRoleManagementPolicyNotificationRule |
| Rule IDs | AuthenticationContext_EndUser_Assignment <br/> Approval_EndUser_Assignment <br/> Expiration_EndUser_Assignment <br/> Enablement_Admin_Eligibility | Enablement_EndUser_Assignment <br/> Enablement_Admin_Assignment <br/> Expiration_Admin_Assignment <br/> Expiration_Admin_Eligibility | Notification_Approver_EndUser_Assignment <br/> Notification_Requestor_EndUser_Assignment <br/> Notification_Admin_EndUser_Assignment <br/> Notification_Approver_Admin_Assignment <br/> Notification_Requestor_Admin_Assignment <br/> Notification_Admin_Admin_Assignment <br/> Notification_Approver_Admin_Eligibility <br/> Notification_Requestor_Admin_Eligibility <br/> Notification_Admin_Admin_Eligibility |

## Mapping of rule IDs to Azure portal settings

<!--
Questions: Should I prefix "Role" to all titles below? I feel like it limits to "DirectoryRole" scope. What about the "Directory" scope? How do we handle this?

Where does this statement come in:
Azure AD supports policies that are scopes either to the directory or to a directory role. Both these policy scopes include the 17 pre-defined but updatable rules.
-->

### Activation rules

:::image type="content" source="../includes/identity-governance-pim-ux-role-rules-screenshots/pim-ux-role-rule.activation.png" alt-text="PIM activation settings on the Azure portal":::

<!-- Author in Excel then copy/paste-->

|                 | Microsoft Graph rule ID                    | Azure portal UX description | Caller |
|------------------|---------------------------------------------|------------------------------|---------|
| ![one][one]     | `AuthenticationContext_EndUser_Assignment` |                             |        |
| ![two][two]     | `Approval_EndUser_Assignment`              |                             |        |
| ![three][three] | `Expiration_EndUser_Assignment`            |                             |        |
| ![four][four]   | `Enablement_Admin_Eligibility`             |                             |        |

## Assignment rules

:::image type="content" source="../includes/identity-governance-pim-ux-role-rules-screenshots/pim-ux-role-rule.assignment.png" alt-text="PIM assignment settings on the Azure portal":::

<!-- Author table in Excel then copy/paste-->

## Notification rules

:::image type="content" source="../includes/identity-governance-pim-ux-role-rules-screenshots/pim-ux-role-rule.notification.png" alt-text="PIM notification settings on the Azure portal":::

<!-- Author table in Excel then copy/paste-->

## See also

+ [Overview of role management through the privileged identity management (PIM) API](/graph/api/resources/privilegedidentitymanagementv3-overview)
+ []

[one]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-1.png
[two]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-2.png
[three]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-3.png
[four]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-4.png
[five]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-5.png
[six]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-6.png
[seven]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-7.png
[eight]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-8.png
[nine]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-9.png
[ten]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-10.png
[eleven]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-11.png
[twelve]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-12.png
[thirteen]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-12.png
[fourteen]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-14.png
[fifteen]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-15.png
[sixteen]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-16.png
[seventeen]: ../includes/identity-governance-pim-ux-role-rules-screenshots/circle-17.png

