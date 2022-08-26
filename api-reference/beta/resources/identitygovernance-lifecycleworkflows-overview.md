---
title: "Lifecycle Workflows"
description: "You can use Azure AD Lifecycle Workflows to manage the lifecycle of users in your organization. This documentation serves the 2nd version of the APIs."
ms.localizationpriority: medium
author: "AlexFilipin"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Azure AD Lifecycle Workflows

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Lifecycle Workflows is a new Azure AD Identity Governance service that enables organizations to manage Azure AD users by automating these three basic lifecycle processes:

Typical customer scenarios for Lifecycle Workflows include:

- **Joiner**:  When an individual comes into scope of needing access. An example is a new employee joining a company or organization.
- **Mover**: When an individual moves between boundaries within an organization. This movement may require more access or authorization. An example would be a user who was in marketing is now a member of the sales organization.
- **Leaver**: When an individual leaves the scope of needing access, access may need to be removed. Examples would be an employee who is retiring or an employee who has been terminated.

Note that the Lifecycle Workflows feature, including the API, is included in Azure AD Premium P2.  The tenant where Lifecycle Workflows are being created must have a valid purchased, or trial, Azure AD Premium P2 or EMS E5 subscription. For more information about the license requirements, see [Lifecycle Workflows license requirements](/azure/active-directory/governance/what-are-lifecycle-workflows.md#license-requirements).

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Supported Task IDs

Lifecycle Workflows currently support the following tasks:

|Task  |taskDefinitionID  |
|---------|---------|
|Send welcome email to new hire |   70b29d51-b59a-4773-9280-8841dfd3f2ea      |
|Generate Temporary Access Password and send via email to user's manager     |  1b555e50-7f65-41d5-b514-5894a026d10d       |
|Add user to group     |    22085229-5809-45e8-97fd-270d28d66910     |
|Add user to team    |  e440ed8d-25a1-4618-84ce-091ed5be5594       |
|Enable user account    |    6fc52c9d-398b-4305-9763-15f42c1676fc     |
|Run a custom task extension    |    4262b724-8dba-4fad-afc3-43fcbb497a0e    |
|Disable user account  |   1dfdfcc7-52fa-4c2e-bf3a-e3919cc12950      |
|Remove user from group   |   1953a66c-751c-45e5-8bfe-01462c70da3c      |
|Remove users from all groups   |    b3a31406-2a15-4c9a-b25b-a658fa5f07fc     |
|Remove user from teams   |    06aa7acb-01af-4824-8899-b14e5ed788d6     |
|Remove user from all teams   |    81f7b200-2816-4b3b-8c5d-dc556f07b024     |
|Remove all license assignments from user    |    8fa97d28-3e52-4985-b3a9-a1126f9b8b4e     |
|Delete user    |    8d18588d-9ad3-4c0f-99d0-ec215f0e3dff     |
|Send email to manager before user last day   |    52853a3e-f4e5-4eb8-bb24-1ac09a1da935     |
|Send email on users last day  |    9c0a1eaf-5bda-4392-9d9e-6e155bb57411     |
|Send offboarding email to users manager after their last day   |    6f22ddd4-b3a5-47a4-a846-0d7c201a49ce     |

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
