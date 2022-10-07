---
title: "Lifecycle Workflow reporting API Overview"
description: "You can use Lifecycle Workflows reporting features to gain insight into how lifecycle workflows were processed for users in your organization. Auditable logs are also available to track all events relating to Lifecycle Workflows in your tenant."
ms.localizationpriority: medium
author: "AlexFilipin"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Lifecycle Workflow reporting API Overview

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Lifecycle Workflows offers reports that enable organizations to gain insight into how lifecycle workflows were processed for users in your organization.

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

The lifecycle workflows API is defined in the OData subnamespace, microsoft.graph.identityGovernance.

## Key elements of Lifecycle Workflows reports

| Reporting feature | Description |
|--|--|
| [User processing result](identitygovernance-userprocessingresult.md) | Result of a [lifecycle workflow](../resources/identitygovernance-workflow.md) that was executed for a specific user. The result is an aggregation of all [task processing results](../resources/identitygovernance-taskprocessingresult.md) of the [workflow tasks](../resources/identitygovernance-task.md) that were part of the lifecycle workflow and executed for the specific user. |
| [Task processing result](identitygovernance-taskprocessingresult.md) | Result of a [workflow task](../resources/identitygovernance-task.md) that was executed for a specific user. |
| [Workflow run](identitygovernance-run.md) | Result of a [lifecycle workflow](../resources/identitygovernance-workflow.md) that was executed for a collection of users. The result is an aggregation of all [user processing results](../resources/identitygovernance-userprocessingresult.md) of the users that were either processed within an [interval](../resources/identitygovernance-lifecyclemanagementsettings.md#properties) or were part of an [on-demand execution](../api/identitygovernance-workflow-activate.md). |
| [Task report](identitygovernance-taskreport.md) | An aggregation of [task processing results](../resources/identitygovernance-taskprocessingresult.md) for a specific [workflow task](../resources/identitygovernance-task.md) within a [workflow run](../resources/identitygovernance-run.md). With this report, the health status of a workflow task within a workflow run can be easily determined and thus the source of error can be identified more quickly should a workflow run fail. |

## Lifecycle workflows in audit logs

*All* events run in Lifecycle Workflows are logged by Azure AD. These include creating, updating, deleting, or running workflows, and assigning permissions to apps.

These auditable logs are represented by the [directoryAudit resource type](/graph/api/resources/directoryaudit) and its associated GET methods in Microsoft Graph.

## License checks

The Lifecycle Workflows feature, including the API, is included in the Azure AD Premium P2 license. The tenant where Lifecycle Workflows are being created must have a valid purchased, or trial, Azure AD Premium P2 or EMS E5 subscription. For more information about the license requirements, see [Lifecycle Workflows license requirements](/azure/active-directory/governance/what-are-lifecycle-workflows.md#license-requirements).

## Role and application permission authorization checks

The following [Azure AD roles](/azure/active-directory/roles/permissions-reference) are required for a calling user to read reports in Lifecycle Workflows.

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | LifecycleWorkflows.Read.All or LifecycleWorkflows.ReadWrite.All | Global Admin, Global Reader or Lifecycle Workflows Administrator |
| Create, Update or Delete | LifecycleWorkflows.ReadWrite.All | Global Administrator or Lifecycle Workflows Administrator |

## See also

+ [What are Lifecycle Workflows? (Public Preview)](/azure/active-directory/governance/what-are-lifecycle-workflows)
+ [Overview of Lifecycle Workflows](identitygovernance-lifecycleworkflows-overview.md)
