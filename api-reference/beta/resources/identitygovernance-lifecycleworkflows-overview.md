---
title: "Lifecycle Workflows API Overview"
description: "Use Lifecycle Workflows to manage the lifecycle of users in your organization."
ms.localizationpriority: medium
author: "AlexFilipin"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Lifecycle Workflows API Overview

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Lifecycle Workflows is a Azure AD Identity Governance service that enables organizations to automate basic lifecycle processes for their users at three levels:

- **Joiner**:  When an individual comes into scope of needing access; for example, a new employee joining a company or organization.
- **Mover**: When an individual moves between boundaries within an organization; for example, a user who was in marketing is now a member of the sales organization. This movement might require more access or authorization, or revocation of other privileges.
- **Leaver**: When an individual leaves the scope of needing access, access might need to be revoked; for example, an employee who is retiring or an employee who has been terminated.

Workflows contain specific processes, that run automatically against users as they move through their life cycle. At the core of workflows are *tasks* and *execution conditions*. Tasks are specific actions that run automatically when a workflow is triggered. An execution condition defines the *scope* of "who" and the *trigger* of "when" a workflow will run.



The lifecycle workflows APIs in Microsoft Graph allow you to automate the Azure AD Lifecycle Workflows capabilities for your organization.

The lifecycle workflows API is defined in the OData subnamespace, microsoft.graph.identityGovernance.

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Workflows

Workflow templates, custom workflows, workflow versions, user attributes (employeeLeaveDateTime, other basic user properties), scheduling options (scheduled vs on-demand)

## Workflow tasks


Scope: tasks, predefined task definitions

## Reports


Scope: user-level vs task-level vs run-level; Audit logs

## Extensions

Scope: integration with Logic Apps

## Settings

sic: tenant-wide policy

## License checks

The Lifecycle Workflows feature, including the API, is included in the Azure AD Premium P2 license. The tenant where Lifecycle Workflows are being created must have a valid purchased, or trial, Azure AD Premium P2 or EMS E5 subscription. For more information about the license requirements, see [Lifecycle Workflows license requirements](/azure/active-directory/governance/what-are-lifecycle-workflows.md#license-requirements).

## Role and application permission authorization checks

The following [Azure AD roles](/azure/active-directory/roles/permissions-reference) are required for a calling user to manage Lifecycle Workflows.

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | LifecycleWorkflows.Read.All or LifecycleWorkflows.ReadWrite.All | Global Admin, Global Reader or Lifecycle Workflows Administrator |
| Create, Update or Delete | LifecycleWorkflows.ReadWrite.All | Global Administrator or Lifecycle Workflows Administrator |

## See also

+ [What are Lifecycle Workflows? (Public Preview)](/azure/active-directory/governance/what-are-lifecycle-workflows)
+ [Tutorial: Automate employee offboarding tasks after their last day of work with Microsoft Graph (preview)](/azure/active-directory/governance/tutorial-scheduled-leaver-graph)
+ [Tutorial: Execute employee offboarding tasks in real-time on their last day of work with Microsoft Graph (preview)](/azure/active-directory/governance/tutorial-offboard-custom-workflow-graph)
+ [Tutorial: Automate employee onboarding tasks before their first day of work with Microsoft Graph (preview)](/azure/active-directory/governance/tutorial-onboard-custom-workflow-graph)
