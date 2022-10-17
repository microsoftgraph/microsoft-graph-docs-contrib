---
title: "Overview of Azure AD Identity Governance using Microsoft Graph"
description: "Azure AD Identity Governance provides you with capabilities to ensure that the right principals have the right access to the right resources and at the right time. Use Microsoft Graph APIs to programmatically manage Azure AD Identity Governance features."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Overview of Azure AD Identity Governance using Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) Identity Governance allows you to balance your organization's need for security and employee productivity with the right processes and visibility. It provides you with capabilities to ensure that the right principals have the right access to the right resources and at the right time.

The principals (or identities) whose access you can govern include users, groups, and applications (or service principals). The users can be your employees, business partners, vendors, or contractors. The resources to which you can govern access include groups, access packages, and privileged roles.

You manage Azure AD Identity Governance capabilities programmatically by using the following identity governance APIs in Microsoft Graph.

+ [Access reviews](#attest-to-the-access-that-principals-have-to-resources)
+ [Entitlement management](#automate-user-access-to-resources)
+ [Lifecycle Workflows](#manage-the-lifecycle-of-users-in-your-organization)
+ [Privileged identity management](#manage-access-to-privileged-roles)
+ [Terms of use](#enforce-terms-of-use-for-your-resources)

For more information about Azure AD Identity Governance, see [What is Azure AD Identity Governance?](#see-also).

## Manage the lifecycle of users in your organization

Organizations have processes that are carried out during at least three stages of an employee's life cycle - when they join the organization, when they move within the organization, and when they leave the organization. Such processes may include provisioning and deprovisioning access and resources where required.

The [lifecycle workflows APIs](/graph/api/resources/identitygovernance-lifecycleworkflows-overview) in Microsoft Graph allow you to automate the basic lifecycle processes for users in your organization. These lifecycle processes enable the organization and its users to be efficient, secure, or compliant.

## Automate user access to resources

Employees in organizations may need access to various resources to perform their jobs. Partners and vendors may also need access to your resources. In complex organizations, it may be difficult for users to identify what access they require, how to request for access, and who should grant them access.

The [entitlement management APIs](/graph/api/resources/entitlementmanagement-overview) in Microsoft Graph allow you to automate access request workflows, access assignments, reviews, and expiration.

## Attest to the access that principals have to resources

When a principal has access to resources in your organization, it's important to verify periodically that the principal still requires access. Use the [access reviews API](/graph/api/resources/accessreviewsv2-overview) to programmatically verify the access.

For example, suppose your organization automates employee access to a specific business-sensitive resource. For guests, you've granted them access to the resource through a group. It's important to periodically confirm that the guests still have a legitimate need for access to the group and by extension, the resource.

Access reviews are a form of auditing the effectiveness of the organization’s internal controls. For more information, see the [overview of access reviews](/graph/api/resources/accessreviewsv2-overview).

## Manage access to privileged roles

Every organization has employees that require privileged administrative roles to perform their duties. In Azure AD, you can grant such privileged assignments through [Azure AD built-in roles](#see-also). Because of the kind of permissions that these roles allow, it's important to mitigate the risks of excessive, unnecessary, or misused privileged roles.

The [privileged identity management APIs](/graph/api/resources/privilegedidentitymanagementv3-overview) in Microsoft Graph allow you to programmatically manage the lifecycle of privileged Azure AD roles in your tenant.

## Enforce terms of use for your resources

Every organization has its terms and conditions that users may need to abide by before they can access the organization’s resources. You can define and enforce these terms and conditions through Azure AD Terms of Use.

Terms of use can be a general company policy for all users in your organization; or terms for individual users like guests and contractors; or terms that users must agree to before they can use a sensitive app in the tenant.

The [terms of use APIs](/graph/api/resources/agreement) in Microsoft Graph allow you to configure the terms and conditions that users may need to accept and agree to before they can access your resources.

## Identity governance and Zero Trust

With identities being the common denominator when considering the security of your data, identity governance APIs in Microsoft Graph help your organization to achieve the [Identity Zero Trust deployment objectives](#see-also).

## License requirements

| Identity governance APIs | License requirements |
|--|--|
| [Access reviews](/graph/api/resources/accessreviewsv2-overview) <br/> [Entitlement management](/graph/api/resources/entitlementmanagement-overview) <br/> [Privileged identity management](/graph/api/resources/privilegedidentitymanagementv3-overview) | Azure AD Premium P2 license. |
| [Terms of use](/graph/api/resources/agreement) | Azure AD Premium P1, P2, EMS E3, or EMS E5 licenses. |

## See also

+ [What is Azure AD Identity Governance?](/azure/active-directory/governance/identity-governance-overview)
+ [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference)
