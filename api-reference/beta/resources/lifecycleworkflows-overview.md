---
title: "Azure AD Lifecycle Workflows"
description: "You can use Azure AD Lifecycle Workflows to manage the lifecycle of users in your organization. This documentation serves the 2nd version of the APIs."
ms.localizationpriority: medium
author: "AlexFilipin"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Azure AD Lifecycle Workflows

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure AD Lifecycle Workflows is a new Azure AD Identity Governance service that enables organizations to manage Azure AD users by automating these three basic lifecycle processes:

Typical customer scenarios for Lifecycle Workflows include:

- **Joiner**:  When an individual comes into scope of needing access. An example is a new employee joining a company or organization.
- **Mover**: When an individual moves between boundaries within an organization. This movement may require more access or authorization. An example would be a user who was in marketing is now a member of the sales organization.
- **Leaver**: When an individual leaves the scope of needing access, access may need to be removed. Examples would be an employee who is retiring or an employee who has been terminated.

Note that the Lifecycle Workflows feature, including the API, is included in Azure AD Premium P2.  The tenant where Lifecycle Workflows are being created must have a valid purchased, or trial, Azure AD Premium P2 or EMS E5 subscription. For more information about the license requirements, see [Lifecycle Workflows license requirements](/azure/active-directory/governance/what-are-lifecycle-workflows.md#license-requirements).

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Role and application permission authorization checks

The following [Azure AD roles](/azure/active-directory/roles/permissions-reference) are required for a calling user to manage Lifecycle Workflows.

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | LifecycleWorkflows.Read.All or LifecycleWorkflows.ReadWrite.All | Global Admin, Global Reader or Lifecycle Workflows Administrator |
| Create, Update or Delete | LifecycleWorkflows.ReadWrite.All | Global Administrator or Lifecycle Workflows Administrator |

## See also

- [Tutorials](/graph/lifecycleworkflows-overview) to learn how to use the Lifecycle Workflows API to automate lifecycle in your organization.
- [Onboard users to your organization using Lifecycle Workflows API](/azure/active-directory/active-directory-azure-ad-controls-manage-user-access-with-access-reviews)
- [Offboard users to your organization using Lifecycle Workflows API](/azure/active-directory/active-directory-azure-ad-controls-manage-guest-access-with-access-reviews)

<!--
{
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
