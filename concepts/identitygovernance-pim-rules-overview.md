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

## Activation rules

1. Screenshot image with numberings

<!-- Author in Excel than copy/paste-->

|   | Microsoft Graph rule ID                    | Azure portal UX description | Caller |
|----|---------------------------------------------|------------------------------|---------|
| 1 | `AuthenticationContext_EndUser_Assignment` |                             |        |
| 2 | `Approval_EndUser_Assignment`              |                             |        |
| 3 | `Expiration_EndUser_Assignment`            |                             |        |
| 4 | `Enablement_Admin_Eligibility`             |                             |        |

## Assignment rules



## Notification rules



## See also

+ [Overview of role management through the privileged identity management (PIM) API](/graph/api/resources/privilegedidentitymanagementv3-overview)
+ []

